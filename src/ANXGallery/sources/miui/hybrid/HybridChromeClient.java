package miui.hybrid;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.net.Uri;
import android.view.KeyEvent;
import com.miui.internal.hybrid.HybridManager;
import miui.hybrid.GeolocationPermissions.Callback;

public class HybridChromeClient {
    private HybridManager fy;

    public void setHybridManager(HybridManager hybridManager) {
        this.fy = hybridManager;
    }

    public boolean onJsAlert(HybridView hybridView, String str, String str2, final JsResult jsResult) {
        new Builder(this.fy.getActivity()).setMessage(str2).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        }).setOnCancelListener(new OnCancelListener() {
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
            }
        }).setOnKeyListener(new OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return true;
                }
                jsResult.confirm();
                return false;
            }
        }).show();
        return true;
    }

    public boolean onJsConfirm(HybridView hybridView, String str, String str2, final JsResult jsResult) {
        new Builder(this.fy.getActivity()).setMessage(str2).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.confirm();
            }
        }).setNegativeButton(17039360, new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                jsResult.cancel();
            }
        }).setOnCancelListener(new OnCancelListener() {
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
            }
        }).setOnKeyListener(new OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4) {
                    return true;
                }
                jsResult.confirm();
                return false;
            }
        }).show();
        return true;
    }

    public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
    }

    public void onProgressChanged(HybridView hybridView, int i) {
        hybridView.setProgress(i);
    }

    public void onReceivedTitle(HybridView hybridView, String str) {
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        valueCallback.onReceiveValue(null);
    }
}
