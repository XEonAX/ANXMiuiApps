package miui.external;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import miui.external.SdkConstants.SdkError;

public class SdkErrorActivity extends Activity implements SdkConstants {
    private OnClickListener mDismissListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            SdkErrorActivity.this.finish();
            System.exit(0);
        }
    };
    private String mLanguage;
    private OnClickListener mUpdateListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            final Dialog updateDialog = SdkErrorActivity.this.createUpdateDialog();
            new SdkDialogFragment(updateDialog).show(SdkErrorActivity.this.getFragmentManager(), "SdkUpdatePromptDialog");
            new AsyncTask<Void, Void, Boolean>() {
                protected Boolean doInBackground(Void... params) {
                    try {
                        Thread.sleep(5000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    return Boolean.valueOf(SdkErrorActivity.this.updateSdk());
                }

                protected void onPostExecute(Boolean result) {
                    updateDialog.dismiss();
                    new SdkDialogFragment(result.booleanValue() ? SdkErrorActivity.this.createUpdateSuccessfulDialog() : SdkErrorActivity.this.createUpdateFailedDialog()).show(SdkErrorActivity.this.getFragmentManager(), "SdkUpdateFinishDialog");
                }
            }.execute(new Void[0]);
        }
    };

    class SdkDialogFragment extends DialogFragment {
        private Dialog mDialog;

        public SdkDialogFragment(Dialog dialog) {
            this.mDialog = dialog;
        }

        public Dialog onCreateDialog(Bundle savedInstanceState) {
            return this.mDialog;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        Dialog dialog;
        setTheme(16973909);
        super.onCreate(savedInstanceState);
        this.mLanguage = Locale.getDefault().getLanguage();
        SdkError error = null;
        Intent intent = getIntent();
        if (intent != null) {
            error = (SdkError) intent.getSerializableExtra(SdkError.INTENT_EXTRA_KEY);
        }
        if (error == null) {
            error = SdkError.GENERIC;
        }
        switch (error) {
            case NO_SDK:
                dialog = createNoSdkDialog();
                break;
            case LOW_SDK_VERSION:
                dialog = createLowSdkVersionDialog();
                break;
            default:
                dialog = createGenericErrorDialog();
                break;
        }
        new SdkDialogFragment(dialog).show(getFragmentManager(), "SdkErrorPromptDialog");
    }

    private Dialog createSingleActionDialog(String title, String message, OnClickListener listener) {
        return new Builder(this).setTitle(title).setMessage(message).setPositiveButton(17039370, listener).setIcon(17301543).setCancelable(false).create();
    }

    private Dialog createDoubleActionDialog(String title, String message, OnClickListener posListener, OnClickListener negListener) {
        return new Builder(this).setTitle(title).setMessage(message).setPositiveButton(17039370, posListener).setNegativeButton(17039360, negListener).setIcon(17301543).setCancelable(false).create();
    }

    private Dialog createGenericErrorDialog() {
        String title;
        String message;
        if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
            title = "MIUI SDK发生错误";
            message = "请重新安装MIUI SDK再运行本程序。";
        } else {
            title = "MIUI SDK encounter errors";
            message = "Please re-install MIUI SDK and then re-run this application.";
        }
        return createSingleActionDialog(title, message, this.mDismissListener);
    }

    private Dialog createNoSdkDialog() {
        String title;
        String message;
        if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
            title = "没有找到MIUI SDK";
            message = "请先安装MIUI SDK再运行本程序。";
        } else {
            title = "MIUI SDK not found";
            message = "Please install MIUI SDK and then re-run this application.";
        }
        return createSingleActionDialog(title, message, this.mDismissListener);
    }

    private Dialog createLowSdkVersionDialog() {
        String title;
        String message;
        if (supportUpdateSdk()) {
            if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
                title = "MIUI SDK版本过低";
                message = "请先升级MIUI SDK再运行本程序。是否现在升级？";
            } else {
                title = "MIUI SDK too old";
                message = "Please upgrade MIUI SDK and then re-run this application. Upgrade now?";
            }
            return createDoubleActionDialog(title, message, this.mUpdateListener, this.mDismissListener);
        }
        if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
            title = "MIUI SDK版本过低";
            message = "请先升级MIUI SDK再运行本程序。";
        } else {
            title = "MIUI SDK too old";
            message = "Please upgrade MIUI SDK and then re-run this application.";
        }
        return createSingleActionDialog(title, message, this.mDismissListener);
    }

    private Dialog createUpdateDialog() {
        String title;
        String message;
        if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
            title = "MIUI SDK正在更新";
            message = "请稍候...";
        } else {
            title = "MIUI SDK updating";
            message = "Please wait...";
        }
        return ProgressDialog.show(this, title, message, true, false);
    }

    private Dialog createUpdateSuccessfulDialog() {
        String title;
        String message;
        if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
            title = "MIUI SDK更新完成";
            message = "请重新运行本程序。";
        } else {
            title = "MIUI SDK updated";
            message = "Please re-run this application.";
        }
        return createSingleActionDialog(title, message, this.mDismissListener);
    }

    private Dialog createUpdateFailedDialog() {
        String title;
        String message;
        if (Locale.CHINESE.getLanguage().equals(this.mLanguage)) {
            title = "MIUI SDK更新失败";
            message = "请稍后重试。";
        } else {
            title = "MIUI SDK update failed";
            message = "Please try it later.";
        }
        return createSingleActionDialog(title, message, this.mDismissListener);
    }

    private boolean supportUpdateSdk() {
        boolean supportUpdate = false;
        try {
            return ((Boolean) SdkEntranceHelper.getSdkEntrance().getMethod("supportUpdate", new Class[]{Map.class}).invoke(null, new Object[]{null})).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return supportUpdate;
        }
    }

    private boolean updateSdk() {
        boolean updated = false;
        try {
            Map<String, Object> metaData = new HashMap();
            return ((Boolean) SdkEntranceHelper.getSdkEntrance().getMethod("update", new Class[]{Map.class}).invoke(null, new Object[]{metaData})).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return updated;
        }
    }
}
