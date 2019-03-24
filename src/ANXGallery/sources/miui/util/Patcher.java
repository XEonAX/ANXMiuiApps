package miui.util;

public class Patcher {
    public native int applyPatch(String str, String str2, String str3);

    static {
        System.loadLibrary("miuidiffpatcher");
    }
}
