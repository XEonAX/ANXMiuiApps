package miui.gallery.support;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.widget.Button;
import com.android.internal.SystemPropertiesCompat;
import com.miui.gallery.util.LazyValue;
import com.miui.internal.util.PackageConstants;
import miui.R;
import miui.util.AppConstants;
import miui.view.EditActionMode;

public class MiuiSdkCompat {
    private static final LazyValue<Context, Boolean> DARK_ICON_SUPPORTED = new LazyValue<Context, Boolean>() {
        protected Boolean onInit(Context context) {
            return Boolean.valueOf(context.getResources().getIdentifier("action_mode_title_button_confirm_dark", "drawable", "miui") != 0);
        }
    };
    private static final LazyValue<Context, Integer> MIUI_SDK_LEVEL = new LazyValue<Context, Integer>() {
        protected Integer onInit(Context context) {
            return Integer.valueOf(AppConstants.getSdkLevel(context, PackageConstants.PACKAGE_NAME));
        }
    };
    private static final LazyValue<Void, Integer> MIUI_VERSION_CODE = new LazyValue<Void, Integer>() {
        protected Integer onInit(Void v) {
            return Integer.valueOf(SystemPropertiesCompat.getInt("ro.miui.ui.version.code", 0));
        }
    };

    public static void setEditActionModeButton(Context context, Button button, int buttonType) {
        if (context != null && button != null) {
            if (isMiui10StyleUsable(context)) {
                setEditActionModeButtonByIcon(context, button, buttonType);
            } else {
                setEditActionModeButtonByText(button, buttonType);
            }
        }
    }

    private static void setEditActionModeButtonByText(Button button, int buttonType) {
        switch (buttonType) {
            case 0:
                button.setText(R.string.select_all);
                return;
            case 1:
                button.setText(R.string.deselect_all);
                return;
            case 2:
                button.setText(17039370);
                return;
            case 3:
                button.setText(17039360);
                return;
            default:
                return;
        }
    }

    private static void setEditActionModeButtonByIcon(Context context, Button button, int buttonType) {
        button.setText("");
        Resources res = context.getResources();
        int i;
        switch (buttonType) {
            case 0:
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_select_all_dark : R.drawable.action_mode_title_button_select_all_light;
                button.setBackgroundResource(i);
                button.setContentDescription(res.getString(R.string.select_all));
                return;
            case 1:
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_deselect_all_dark : R.drawable.action_mode_title_button_deselect_all_light;
                button.setBackgroundResource(i);
                button.setContentDescription(res.getString(R.string.deselect_all));
                return;
            case 2:
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_confirm_dark : R.drawable.action_mode_title_button_confirm_light;
                button.setBackgroundResource(i);
                button.setContentDescription(res.getString(17039370));
                return;
            case 3:
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_cancel_dark : R.drawable.action_mode_title_button_cancel_light;
                button.setBackgroundResource(i);
                button.setContentDescription(res.getString(17039360));
                return;
            default:
                return;
        }
    }

    public static void setEditActionModeButton(Context context, EditActionMode editActionMode, int buttonId, int buttonType) {
        if (context != null && editActionMode != null) {
            if (isMiui10StyleUsable(context)) {
                try {
                    setEditActionModeButtonByIcon(context, editActionMode, buttonId, buttonType);
                    return;
                } catch (Throwable t) {
                    Log.w("MiuiSdkCompat", "set EditActionMode button icon is not supported", t);
                    setEditActionModeButtonByText(editActionMode, buttonId, buttonType);
                    return;
                }
            }
            setEditActionModeButtonByText(editActionMode, buttonId, buttonType);
        }
    }

    private static void setEditActionModeButtonByText(EditActionMode editActionMode, int buttonId, int buttonType) {
        switch (buttonType) {
            case 0:
                editActionMode.setButton(buttonId, R.string.select_all);
                return;
            case 1:
                editActionMode.setButton(buttonId, R.string.deselect_all);
                return;
            case 2:
                editActionMode.setButton(buttonId, 17039370);
                return;
            case 3:
                editActionMode.setButton(buttonId, 17039360);
                return;
            default:
                return;
        }
    }

    private static void setEditActionModeButtonByIcon(Context context, EditActionMode editActionMode, int buttonId, int buttonType) {
        CharSequence charSequence;
        int i;
        switch (buttonType) {
            case 0:
                charSequence = "";
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_select_all_dark : R.drawable.action_mode_title_button_select_all_light;
                editActionMode.setButton(buttonId, charSequence, i);
                return;
            case 1:
                charSequence = "";
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_deselect_all_dark : R.drawable.action_mode_title_button_deselect_all_light;
                editActionMode.setButton(buttonId, charSequence, i);
                return;
            case 2:
                charSequence = "";
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_confirm_dark : R.drawable.action_mode_title_button_confirm_light;
                editActionMode.setButton(buttonId, charSequence, i);
                return;
            case 3:
                charSequence = "";
                i = (((Boolean) DARK_ICON_SUPPORTED.get(context)).booleanValue() && isNightMode(context)) ? R.drawable.action_mode_title_button_cancel_dark : R.drawable.action_mode_title_button_cancel_light;
                editActionMode.setButton(buttonId, charSequence, i);
                return;
            default:
                return;
        }
    }

    private static boolean isNightMode(Context context) {
        return context != null && (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static boolean isMiui10StyleUsable(Context context) {
        return ((Integer) MIUI_SDK_LEVEL.get(context)).intValue() >= 15 || ((Integer) MIUI_VERSION_CODE.get(null)).intValue() >= 8;
    }
}
