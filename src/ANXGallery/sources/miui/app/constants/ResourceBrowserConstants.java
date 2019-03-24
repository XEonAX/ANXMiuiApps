package miui.app.constants;

import miui.os.C0001Environment;
import miui.os.C0002FileUtils;

public interface ResourceBrowserConstants {
    public static final String ACTION_PICK_RESOURCE = "miui.intent.action.PICK_RESOURCE";
    public static final String CONFIG_PATH;
    public static final String MAML_CONFIG_PATH;
    public static final String MIUI_PATH = C0002FileUtils.normalizeDirectoryName(C0001Environment.getExternalStorageMiuiDirectory().getAbsolutePath());
    public static final String REQUEST_CURRENT_USING_PATH = "REQUEST_CURRENT_USING_PATH";
    public static final String REQUEST_TRACK_ID = "REQUEST_TRACK_ID";
    public static final String RESPONSE_PICKED_RESOURCE = "RESPONSE_PICKED_RESOURCE";
    public static final String RESPONSE_TRACK_ID = "RESPONSE_TRACK_ID";

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(MIUI_PATH);
        stringBuilder.append(".config/");
        CONFIG_PATH = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(CONFIG_PATH);
        stringBuilder.append("maml/");
        MAML_CONFIG_PATH = stringBuilder.toString();
    }
}
