package com.xiaomi.slim;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.DebugUtils;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgConnResp;
import com.xiaomi.push.service.PushClientsManager;
import com.xiaomi.push.service.RC4Cryption;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.Adler32;

class BlobReader {
    private ByteBuffer mBuffer = ByteBuffer.allocate(2048);
    private ByteBuffer mCRCBuf = ByteBuffer.allocate(4);
    private Adler32 mChecksumTool = new Adler32();
    private SlimConnection mConnection;
    private volatile boolean mDone;
    private InputStream mInputStream;
    private byte[] mKey;
    private PacketParser mPacketParser;

    BlobReader(InputStream in, SlimConnection conn) {
        this.mInputStream = new BufferedInputStream(in);
        this.mConnection = conn;
        this.mPacketParser = new PacketParser();
    }

    void start() throws IOException {
        try {
            loop();
        } catch (IOException e) {
            if (!this.mDone) {
                throw e;
            }
        }
    }

    private void loop() throws IOException {
        this.mDone = false;
        boolean connected = false;
        Blob blob = read();
        if ("CONN".equals(blob.getCmd())) {
            XMMsgConnResp msg = XMMsgConnResp.parseFrom(blob.getPayload());
            if (msg.hasChallenge()) {
                this.mConnection.setChallenge(msg.getChallenge());
                connected = true;
            }
            if (msg.hasPsc()) {
                PushServiceConfigMsg config = msg.getPsc();
                Blob ctrl = new Blob();
                ctrl.setCmd("SYNC", "CONF");
                ctrl.setPayload(config.toByteArray(), null);
                this.mConnection.notifyDataArrived(ctrl);
            }
            MyLog.w("[Slim] CONN: host = " + msg.getHost());
        }
        if (connected) {
            this.mKey = this.mConnection.getKey();
            while (!this.mDone) {
                blob = read();
                this.mConnection.setReadAlive();
                switch (blob.getPayloadType()) {
                    case (short) 1:
                        this.mConnection.notifyDataArrived(blob);
                        break;
                    case (short) 2:
                        if (!"SECMSG".equals(blob.getCmd()) || ((blob.getChannelId() != 2 && blob.getChannelId() != 3) || !TextUtils.isEmpty(blob.getSubcmd()))) {
                            this.mConnection.notifyDataArrived(blob);
                            break;
                        }
                        try {
                            this.mConnection.notifyDataArrived(this.mPacketParser.parse(blob.getDecryptedPayload(PushClientsManager.getInstance().getClientLoginInfoByChidAndUserId(Integer.valueOf(blob.getChannelId()).toString(), blob.getFullUserName()).security), this.mConnection));
                            break;
                        } catch (Exception e) {
                            MyLog.w("[Slim] Parse packet from Blob chid=" + blob.getChannelId() + "; Id=" + blob.getPacketID() + " failure:" + e.getMessage());
                            break;
                        }
                    case (short) 3:
                        try {
                            this.mConnection.notifyDataArrived(this.mPacketParser.parse(blob.getPayload(), this.mConnection));
                            break;
                        } catch (Exception e2) {
                            MyLog.w("[Slim] Parse packet from Blob chid=" + blob.getChannelId() + "; Id=" + blob.getPacketID() + " failure:" + e2.getMessage());
                            break;
                        }
                    default:
                        MyLog.w("[Slim] unknow blob type " + blob.getPayloadType());
                        break;
                }
            }
            return;
        }
        MyLog.w("[Slim] Invalid CONN");
        throw new IOException("Invalid Connection");
    }

    void shutdown() {
        this.mDone = true;
    }

    private ByteBuffer readOnePacket() throws IOException {
        this.mBuffer.clear();
        read(this.mBuffer, 8);
        short magic = this.mBuffer.getShort(0);
        short version = this.mBuffer.getShort(2);
        if (magic == (short) -15618 && version == (short) 5) {
            int size = this.mBuffer.getInt(4);
            int npos = this.mBuffer.position();
            if (size > 32768) {
                throw new IOException("Blob size too large");
            }
            ByteBuffer buf;
            if (size + 4 > this.mBuffer.remaining()) {
                buf = ByteBuffer.allocate(size + 2048);
                buf.put(this.mBuffer.array(), 0, this.mBuffer.arrayOffset() + this.mBuffer.position());
                this.mBuffer = buf;
            } else if (this.mBuffer.capacity() > 4096 && size < 2048) {
                buf = ByteBuffer.allocate(2048);
                buf.put(this.mBuffer.array(), 0, this.mBuffer.arrayOffset() + this.mBuffer.position());
                this.mBuffer = buf;
            }
            read(this.mBuffer, size);
            this.mCRCBuf.clear();
            read(this.mCRCBuf, 4);
            this.mCRCBuf.position(0);
            int crc32 = this.mCRCBuf.getInt();
            this.mChecksumTool.reset();
            this.mChecksumTool.update(this.mBuffer.array(), 0, this.mBuffer.position());
            if (crc32 != ((int) this.mChecksumTool.getValue())) {
                MyLog.w("CRC = " + ((int) this.mChecksumTool.getValue()) + " and " + crc32);
                throw new IOException("Corrupted Blob bad CRC");
            }
            if (this.mKey != null) {
                RC4Cryption.encrypt(this.mKey, this.mBuffer.array(), true, npos, size);
            }
            return this.mBuffer;
        }
        throw new IOException("Malformed Input");
    }

    Blob read() throws IOException {
        int readLen = 0;
        try {
            Blob blob;
            ByteBuffer buf = readOnePacket();
            readLen = buf.position();
            buf.flip();
            buf.position(8);
            if (readLen == 8) {
                blob = new Ping();
            } else {
                blob = Blob.from(buf.slice());
            }
            MyLog.v("[Slim] Read {cmd=" + blob.getCmd() + ";chid=" + blob.getChannelId() + ";len=" + readLen + "}");
            return blob;
        } catch (IOException e) {
            if (null == null) {
                readLen = this.mBuffer.position();
            }
            StringBuilder append = new StringBuilder().append("[Slim] read Blob [");
            byte[] array = this.mBuffer.array();
            if (readLen > 128) {
                readLen = 128;
            }
            MyLog.w(append.append(DebugUtils.bytes2Hex(array, 0, readLen)).append("] Err:").append(e.getMessage()).toString());
            throw e;
        }
    }

    private void read(ByteBuffer buf, int size) throws IOException {
        int offset = buf.position();
        do {
            int len = this.mInputStream.read(buf.array(), offset, size);
            if (len != -1) {
                size -= len;
                offset += len;
            } else {
                throw new EOFException();
            }
        } while (size > 0);
        buf.position(offset);
    }
}
