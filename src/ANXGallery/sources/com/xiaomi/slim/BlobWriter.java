package com.xiaomi.slim;

import android.os.Build;
import android.os.Build.VERSION;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.protobuf.ChannelMessage.PushServiceConfigMsg;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgConn;
import com.xiaomi.push.service.RC4Cryption;
import com.xiaomi.push.service.ServiceConfig;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.Adler32;
import miui.date.Calendar;

public class BlobWriter {
    ByteBuffer mBuffer = ByteBuffer.allocate(2048);
    private ByteBuffer mCRCBuf = ByteBuffer.allocate(4);
    private Adler32 mChecksumTool = new Adler32();
    private SlimConnection mConnection;
    private int mDSTSavings;
    private byte[] mKey;
    private OutputStream mOut;
    private int mTimeZone;

    BlobWriter(OutputStream out, SlimConnection conn) {
        this.mOut = new BufferedOutputStream(out);
        this.mConnection = conn;
        TimeZone tz = TimeZone.getDefault();
        this.mTimeZone = tz.getRawOffset() / Calendar.MILLISECOND_OF_HOUR;
        this.mDSTSavings = tz.useDaylightTime() ? 1 : 0;
    }

    public int write(Blob blob) throws IOException {
        int size = blob.getSerializedSize();
        if (size > 32768) {
            MyLog.w("Blob size=" + size + " should be less than " + 32768 + " Drop blob chid=" + blob.getChannelId() + " id=" + blob.getPacketID());
            return 0;
        }
        this.mBuffer.clear();
        if ((size + 8) + 4 > this.mBuffer.capacity() || this.mBuffer.capacity() > 4096) {
            this.mBuffer = ByteBuffer.allocate((size + 8) + 4);
        }
        this.mBuffer.putShort((short) -15618);
        this.mBuffer.putShort((short) 5);
        this.mBuffer.putInt(size);
        int npos = this.mBuffer.position();
        this.mBuffer = blob.toByteArray(this.mBuffer);
        if (!"CONN".equals(blob.getCmd())) {
            if (this.mKey == null) {
                this.mKey = this.mConnection.getKey();
            }
            RC4Cryption.encrypt(this.mKey, this.mBuffer.array(), true, npos, size);
        }
        this.mChecksumTool.reset();
        this.mChecksumTool.update(this.mBuffer.array(), 0, this.mBuffer.position());
        this.mCRCBuf.putInt(0, (int) this.mChecksumTool.getValue());
        this.mOut.write(this.mBuffer.array(), 0, this.mBuffer.position());
        this.mOut.write(this.mCRCBuf.array(), 0, 4);
        this.mOut.flush();
        int len = this.mBuffer.position() + 4;
        MyLog.v("[Slim] Wrote {cmd=" + blob.getCmd() + ";chid=" + blob.getChannelId() + ";len=" + len + "}");
        return len;
    }

    public void openStream() throws IOException {
        XMMsgConn msgConn = new XMMsgConn();
        msgConn.setVersion(106);
        msgConn.setModel(Build.MODEL);
        msgConn.setOs(VERSION.INCREMENTAL);
        msgConn.setUdid(ServiceConfig.getDeviceUUID());
        msgConn.setSdk(38);
        msgConn.setConnpt(this.mConnection.getConnectionPoint());
        msgConn.setHost(this.mConnection.getHost());
        msgConn.setLocale(Locale.getDefault().toString());
        msgConn.setAndver(VERSION.SDK_INT);
        byte[] cfgPayload = this.mConnection.getConfiguration().getConnectionBlob();
        if (cfgPayload != null) {
            msgConn.setPsc(PushServiceConfigMsg.parseFrom(cfgPayload));
        }
        Blob blob = new Blob();
        blob.setChannelId(0);
        blob.setCmd("CONN", null);
        blob.setFrom(0, "xiaomi.com", null);
        blob.setPayload(msgConn.toByteArray(), null);
        write(blob);
        MyLog.w("[slim] open conn: andver=" + VERSION.SDK_INT + " sdk=" + 38 + " hash=" + ServiceConfig.getDeviceUUID() + " tz=" + this.mTimeZone + ":" + this.mDSTSavings + " Model=" + Build.MODEL + " os=" + VERSION.INCREMENTAL);
    }

    public void shutdown() throws IOException {
        Blob blob = new Blob();
        blob.setCmd("CLOSE", null);
        write(blob);
        this.mOut.close();
    }
}
