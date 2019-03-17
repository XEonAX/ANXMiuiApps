package okhttp3.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import okhttp3.internal.Util;

final class Jdk9Platform extends Platform {
    final Method getProtocolMethod;
    final Method setProtocolMethod;

    Jdk9Platform(Method setProtocolMethod, Method getProtocolMethod) {
        this.setProtocolMethod = setProtocolMethod;
        this.getProtocolMethod = getProtocolMethod;
    }

    public void configureTlsExtensions(SSLSocket sslSocket, String hostname, List<Protocol> protocols) {
        ReflectiveOperationException e;
        try {
            SSLParameters sslParameters = sslSocket.getSSLParameters();
            List<String> names = Platform.alpnProtocolNames(protocols);
            this.setProtocolMethod.invoke(sslParameters, new Object[]{names.toArray(new String[names.size()])});
            sslSocket.setSSLParameters(sslParameters);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw Util.assertionError("unable to set ssl parameters", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw Util.assertionError("unable to set ssl parameters", e);
        }
    }

    @Nullable
    public String getSelectedProtocol(SSLSocket socket) {
        ReflectiveOperationException e;
        try {
            String protocol = (String) this.getProtocolMethod.invoke(socket, new Object[0]);
            if (protocol == null || protocol.equals("")) {
                return null;
            }
            return protocol;
        } catch (IllegalAccessException e2) {
            e = e2;
            throw Util.assertionError("unable to get selected protocols", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw Util.assertionError("unable to get selected protocols", e);
        }
    }

    public X509TrustManager trustManager(SSLSocketFactory sslSocketFactory) {
        throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+");
    }

    public static Jdk9Platform buildIfSupported() {
        try {
            return new Jdk9Platform(SSLParameters.class.getMethod("setApplicationProtocols", new Class[]{String[].class}), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }
}
