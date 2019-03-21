package com.nexstreaming.app.common.localprotocol;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.util.Log;
import com.nexstreaming.app.common.localprotocol.c.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;

/* compiled from: nexClient */
public class b {
    LocalSocket a;
    private String b;

    public b(String str) {
        this.b = str;
    }

    public boolean a() {
        this.a = new LocalSocket();
        try {
            this.a.connect(new LocalSocketAddress(this.b));
            return true;
        } catch (IOException e) {
            Log.e("nexClient", "Exception " + e + " while connect Socket");
            return false;
        }
    }

    public boolean b() {
        LocalSocket localSocket;
        synchronized (this) {
            localSocket = this.a;
            this.a = null;
        }
        if (localSocket != null) {
            try {
                localSocket.shutdownInput();
                localSocket.shutdownOutput();
                localSocket.close();
                Log.d("nexClient", "Socket is closed");
                return true;
            } catch (IOException e) {
                Log.e("nexClient", "Exception " + e + " while closing Socket");
            }
        }
        return false;
    }

    public void a(short s, int i, byte[] bArr) throws IOException {
        LocalSocket localSocket = this.a;
        if (localSocket == null) {
            Log.w("nexClient", "'send' request on closed Socket ");
            throw new ClosedChannelException();
        }
        localSocket.getOutputStream().write(c.a(s, i, bArr.length));
        localSocket.getOutputStream().write(bArr);
    }

    public a a(short s, int i, boolean z) throws IOException {
        LocalSocket localSocket = this.a;
        if (localSocket == null) {
            Log.w("nexClient", "'receive' request on closed Socket ");
            throw new ClosedChannelException();
        }
        ByteBuffer allocate = ByteBuffer.allocate(16);
        c.a(localSocket, allocate.array(), allocate.array().length);
        com.nexstreaming.app.common.localprotocol.c.b a = c.a(allocate, i, z);
        if (!a.b) {
            Log.w("nexClient", "'receive' Header is invalid. error=" + a.f);
            throw new ClosedChannelException();
        } else if (s != a.d) {
            Log.w("nexClient", "'receive' command is invalid. ");
            throw new ClosedChannelException();
        } else {
            a aVar = new a(a);
            aVar.a = new byte[a.g];
            c.a(localSocket, aVar.a, aVar.a.length);
            return aVar;
        }
    }
}
