package miui.hybrid;

import android.app.Activity;
import com.miui.internal.hybrid.HybridManager;

public class NativeInterface {
    private HybridManager fy;

    public NativeInterface(HybridManager hybridManager) {
        this.fy = hybridManager;
    }

    public Activity getActivity() {
        return this.fy.getActivity();
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        this.fy.addLifecycleListener(lifecycleListener);
    }

    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        this.fy.removeLifecycleListener(lifecycleListener);
    }
}
