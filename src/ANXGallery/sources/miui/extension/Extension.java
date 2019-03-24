package miui.extension;

import android.util.Log;
import miui.extension.invoker.Invoker;
import miui.reflect.Constructor;

public class Extension {
    private static final String TAG = "Extension";
    private boolean cY;
    private final String xT;
    private final String xU;
    private final String xV;
    private Invoker xW;

    public Extension(String str, String str2, String str3) {
        this.xT = str;
        this.xU = str2;
        this.xV = str3;
    }

    public String getTarget() {
        return this.xT;
    }

    public String getAction() {
        return this.xU;
    }

    public String getInvoker() {
        return this.xV;
    }

    public void invoke(String str, Object... objArr) {
        if (this.xU == null || this.xU.equals(str)) {
            initialize();
            if (this.xW != null) {
                try {
                    this.xW.invoke(str, objArr);
                } catch (Throwable e) {
                    String str2 = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Fail to invoke ActivityExecutor, invoker=");
                    stringBuilder.append(this.xV);
                    Log.e(str2, stringBuilder.toString(), e);
                }
            }
        }
    }

    private void initialize() {
        String str;
        StringBuilder stringBuilder;
        if (!this.cY) {
            try {
                this.xW = (Invoker) Constructor.of(this.xV, "()V").newInstance(new Object[0]);
            } catch (Throwable e) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Fail to initialize ActivityExecutor, invoker=");
                stringBuilder.append(this.xV);
                Log.e(str, stringBuilder.toString(), e);
            } catch (Throwable e2) {
                str = TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Fail to initialize ActivityExecutor, invoker=");
                stringBuilder.append(this.xV);
                Log.e(str, stringBuilder.toString(), e2);
            } catch (Throwable th) {
                this.cY = true;
            }
            this.cY = true;
        }
    }
}
