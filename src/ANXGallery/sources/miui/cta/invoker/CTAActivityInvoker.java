package miui.cta.invoker;

import android.app.Activity;
import android.util.Log;
import miui.cta.CTAManager;
import miui.extension.invoker.Invoker;
import miui.extension.target.ActivityTarget;

public class CTAActivityInvoker implements Invoker {
    private static final String TAG = "ActivityInvoker";

    public final void invoke(String action, Object... args) {
        if (ActivityTarget.ACTION_ON_CREATE.equals(action)) {
            CTAManager.showAgreementIfNeed((Activity) args[0]);
            return;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Action is not supported: ");
        stringBuilder.append(action);
        Log.w(str, stringBuilder.toString());
    }
}
