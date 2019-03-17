package okhttp3;

import java.nio.charset.Charset;
import mtopsdk.common.util.SymbolExpUtil;
import okhttp3.internal.Util;
import okio.ByteString;

public final class Credentials {
    private Credentials() {
    }

    public static String basic(String username, String password) {
        return basic(username, password, Util.ISO_8859_1);
    }

    public static String basic(String username, String password, Charset charset) {
        return "Basic " + ByteString.encodeString(username + SymbolExpUtil.SYMBOL_COLON + password, charset).base64();
    }
}
