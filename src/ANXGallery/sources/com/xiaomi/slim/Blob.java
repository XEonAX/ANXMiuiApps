package com.xiaomi.slim;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.protobuf.ChannelMessage.ClientHeader;
import com.xiaomi.push.service.RC4Cryption;
import com.xiaomi.smack.packet.Packet;
import com.xiaomi.smack.util.StringUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class Blob {
    private static final byte[] EMPTY = new byte[0];
    private static long id = 0;
    private static String prefix = (StringUtils.randomString(5) + "-");
    private ClientHeader mHeader;
    String mPackageName;
    private byte[] mPayload;
    private short mPayloadType;

    public Blob() {
        this.mPayloadType = (short) 2;
        this.mPayload = EMPTY;
        this.mPackageName = null;
        this.mHeader = new ClientHeader();
    }

    Blob(ClientHeader header, short playloadType, byte[] payload) {
        this.mPayloadType = (short) 2;
        this.mPayload = EMPTY;
        this.mPackageName = null;
        this.mHeader = header;
        this.mPayloadType = playloadType;
        this.mPayload = payload;
    }

    public void setCmd(String cmd, String subCmd) {
        if (TextUtils.isEmpty(cmd)) {
            throw new IllegalArgumentException("command should not be empty");
        }
        this.mHeader.setCmd(cmd);
        this.mHeader.clearSubcmd();
        if (!TextUtils.isEmpty(subCmd)) {
            this.mHeader.setSubcmd(subCmd);
        }
    }

    public String getCmd() {
        return this.mHeader.getCmd();
    }

    public String getSubcmd() {
        return this.mHeader.getSubcmd();
    }

    public void setChannelId(int id) {
        this.mHeader.setChid(id);
    }

    public int getChannelId() {
        return this.mHeader.getChid();
    }

    public void setPacketID(String packetID) {
        this.mHeader.setId(packetID);
    }

    public boolean hasErr() {
        return this.mHeader.hasErrCode();
    }

    public int getErrCode() {
        return this.mHeader.getErrCode();
    }

    public String getErrStr() {
        return this.mHeader.getErrStr();
    }

    public static synchronized String nextID() {
        String stringBuilder;
        synchronized (Blob.class) {
            StringBuilder append = new StringBuilder().append(prefix);
            long j = id;
            id = 1 + j;
            stringBuilder = append.append(Long.toString(j)).toString();
        }
        return stringBuilder;
    }

    public String getPacketID() {
        String id = this.mHeader.getId();
        if ("ID_NOT_AVAILABLE".equals(id)) {
            return null;
        }
        if (!this.mHeader.hasId()) {
            id = nextID();
            this.mHeader.setId(id);
        }
        return id;
    }

    public void setPackageName(String name) {
        this.mPackageName = name;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public void setFrom(String from) {
        if (!TextUtils.isEmpty(from)) {
            int pos = from.indexOf("@");
            try {
                long uuid = Long.parseLong(from.substring(0, pos));
                int slash = from.indexOf("/", pos);
                String server = from.substring(pos + 1, slash);
                String resource = from.substring(slash + 1);
                this.mHeader.setUuid(uuid);
                this.mHeader.setServer(server);
                this.mHeader.setResource(resource);
            } catch (Exception e) {
                MyLog.w("Blob parse user err " + e.getMessage());
            }
        }
    }

    public void setFrom(long uuid, String server, String resource) {
        if (uuid != 0) {
            this.mHeader.setUuid(uuid);
        }
        if (!TextUtils.isEmpty(server)) {
            this.mHeader.setServer(server);
        }
        if (!TextUtils.isEmpty(resource)) {
            this.mHeader.setResource(resource);
        }
    }

    public String getFullUserName() {
        if (this.mHeader.hasUuid()) {
            return Long.toString(this.mHeader.getUuid()) + "@" + this.mHeader.getServer() + "/" + this.mHeader.getResource();
        }
        return null;
    }

    public void setPayload(byte[] payload, String security) {
        if (TextUtils.isEmpty(security)) {
            this.mHeader.setCipher(0);
            this.mPayload = payload;
            return;
        }
        this.mHeader.setCipher(1);
        this.mPayload = RC4Cryption.encrypt(RC4Cryption.generateKeyForRC4(security, getPacketID()), payload);
    }

    public byte[] getPayload() {
        return this.mPayload;
    }

    public byte[] getDecryptedPayload(String security) {
        if (this.mHeader.getCipher() == 1) {
            return RC4Cryption.encrypt(RC4Cryption.generateKeyForRC4(security, getPacketID()), this.mPayload);
        }
        if (this.mHeader.getCipher() == 0) {
            return this.mPayload;
        }
        MyLog.w("unknow cipher = " + this.mHeader.getCipher());
        return this.mPayload;
    }

    @Deprecated
    public static Blob from(Packet packet, String security) {
        Blob blob = new Blob();
        int chid = 1;
        try {
            chid = Integer.parseInt(packet.getChannelId());
        } catch (Exception e) {
            MyLog.w("Blob parse chid err " + e.getMessage());
        }
        blob.setChannelId(chid);
        blob.setPacketID(packet.getPacketID());
        blob.setFrom(packet.getFrom());
        blob.setPackageName(packet.getPackageName());
        blob.setCmd("XMLMSG", null);
        try {
            blob.setPayload(packet.toXML().getBytes("utf8"), security);
            if (TextUtils.isEmpty(security)) {
                blob.setPayloadType((short) 3);
            } else {
                blob.setPayloadType((short) 2);
                blob.setCmd("SECMSG", null);
            }
        } catch (UnsupportedEncodingException e2) {
            MyLog.w("Blob setPayload err： " + e2.getMessage());
        }
        return blob;
    }

    public int getSerializedSize() {
        return (this.mHeader.getSerializedSize() + 8) + this.mPayload.length;
    }

    ByteBuffer toByteArray(ByteBuffer buffer) {
        if (buffer == null) {
            buffer = ByteBuffer.allocate(getSerializedSize());
        }
        buffer.putShort(this.mPayloadType);
        buffer.putShort((short) this.mHeader.getCachedSize());
        buffer.putInt(this.mPayload.length);
        int offset = buffer.position();
        this.mHeader.toByteArray(buffer.array(), buffer.arrayOffset() + offset, this.mHeader.getCachedSize());
        buffer.position(this.mHeader.getCachedSize() + offset);
        buffer.put(this.mPayload);
        return buffer;
    }

    static Blob from(ByteBuffer buffer) throws IOException {
        try {
            ByteBuffer buf = buffer.slice();
            short payloadType = buf.getShort(0);
            short headSize = buf.getShort(2);
            int payloadSize = buf.getInt(4);
            ClientHeader header = new ClientHeader();
            header.mergeFrom(buf.array(), buf.arrayOffset() + 8, headSize);
            byte[] payload = new byte[payloadSize];
            buf.position(headSize + 8);
            buf.get(payload, 0, payloadSize);
            return new Blob(header, payloadType, payload);
        } catch (Exception e) {
            MyLog.w("read Blob err :" + e.getMessage());
            throw new IOException("Malformed Input");
        }
    }

    public short getPayloadType() {
        return this.mPayloadType;
    }

    public void setPayloadType(short type) {
        this.mPayloadType = type;
    }

    public String toString() {
        return "Blob [chid=" + getChannelId() + "; Id=" + getPacketID() + "; cmd=" + getCmd() + "; type=" + getPayloadType() + "; from=" + getFullUserName() + " ]";
    }
}
