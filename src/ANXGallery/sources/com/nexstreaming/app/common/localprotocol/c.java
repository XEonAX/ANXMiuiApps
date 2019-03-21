package com.nexstreaming.app.common.localprotocol;

import android.net.LocalSocket;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: nexProtocol */
public class c {

    /* compiled from: nexProtocol */
    public static class b {
        public boolean b;
        public boolean c;
        public int d;
        public int e;
        public int f;
        public int g;
    }

    /* compiled from: nexProtocol */
    public static class a extends b {
        public byte[] a;

        a(b bVar) {
            this.b = bVar.b;
            this.c = bVar.c;
            this.d = bVar.d;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
        }
    }

    public static byte[] a(short s, int i, int i2) {
        ByteBuffer allocate = ByteBuffer.allocate(16);
        allocate.putInt(1315272784);
        allocate.putChar('Q');
        allocate.putShort(s);
        allocate.putInt(i);
        allocate.putInt(i2);
        return allocate.array();
    }

    public static void a(LocalSocket localSocket, byte[] bArr, int i) throws IOException {
        InputStream inputStream = localSocket.getInputStream();
        int i2 = 0;
        while (i2 != i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read < 0) {
                throw new IOException("I/O failure while receiving SDK controller data from socket.");
            }
            i2 += read;
        }
    }

    public static b a(ByteBuffer byteBuffer, int i, boolean z) {
        b bVar = new b();
        if (byteBuffer.getInt() != 1315272784) {
            bVar.f = nexProtoErrorCode.InvalidHDR.getValue();
        } else {
            char c = byteBuffer.getChar();
            if (c == 'Q') {
                bVar.c = true;
                if (!z) {
                    bVar.f = nexProtoErrorCode.InvalidRQ.getValue();
                }
            } else if (c == 'S') {
                bVar.c = false;
                if (z) {
                    bVar.f = nexProtoErrorCode.InvalidRS.getValue();
                }
            }
            bVar.d = byteBuffer.getShort();
            if (z) {
                bVar.e = byteBuffer.getInt();
                if (z && bVar.e != i) {
                    bVar.f = nexProtoErrorCode.InvalidSSID.getValue();
                }
            } else {
                bVar.f = byteBuffer.getInt();
            }
            bVar.b = true;
            bVar.g = byteBuffer.getInt();
        }
        return bVar;
    }
}
