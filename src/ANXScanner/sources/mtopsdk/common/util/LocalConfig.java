package mtopsdk.common.util;

public class LocalConfig {
    private static final String TAG = "mtopsdk.LocalConfig";
    public boolean enableSpdy;
    public boolean enableSsl;
    public boolean enableUnit;

    static class LocalConfigInstanceHolder {
        private static LocalConfig instance = new LocalConfig();

        private LocalConfigInstanceHolder() {
        }
    }

    public static LocalConfig getInstance() {
        return LocalConfigInstanceHolder.instance;
    }

    private LocalConfig() {
        this.enableSpdy = true;
        this.enableUnit = true;
        this.enableSsl = true;
    }
}
