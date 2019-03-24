package miui.yellowpage;

import android.content.Context;
import android.os.Bundle;

public abstract class InvocationHandler {
    public static Bundle invoke(Context context, String method) {
        return invoke(context, method, null, null);
    }

    public static Bundle invoke(Context context, String method, String args) {
        return invoke(context, method, args, null);
    }

    public static Bundle invoke(Context context, String method, String args, Bundle extras) {
        try {
            Bundle bundle = context.getContentResolver().call(YellowPageContract.INVOACTION_URI, method, args, extras);
            if (bundle != null) {
                return bundle;
            }
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
        return new Bundle();
    }
}
