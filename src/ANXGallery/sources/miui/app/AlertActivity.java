package miui.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import com.android.internal.app.AlertController;
import com.android.internal.app.AlertController.AlertParams;
import com.miui.internal.variable.AlertControllerWrapper;

public abstract class AlertActivity extends Activity implements DialogInterface {
    protected AlertController mAlert;
    protected AlertParams mAlertParams;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert = new AlertControllerWrapper(this, this, getWindow());
        this.mAlertParams = new AlertControllerWrapper.AlertParams(this);
    }

    public void cancel() {
        finish();
    }

    public void dismiss() {
        if (!isFinishing()) {
            finish();
        }
    }

    protected void setupAlert() {
        this.mAlertParams.apply(this.mAlert);
        this.mAlert.installContent();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }
}
