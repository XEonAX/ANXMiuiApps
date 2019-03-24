package miui.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.HashSet;
import java.util.Iterator;
import miui.os.C0001Environment;

public class SdCardMonitor {
    private BroadcastReceiver JS;
    private HashSet<SdCardStatusListener> JT;
    private Boolean JU;

    private static class Holder {
        private static final SdCardMonitor JW = new SdCardMonitor();

        private Holder() {
        }
    }

    public interface SdCardStatusListener {
        void onStatusChanged(boolean z);
    }

    /* synthetic */ SdCardMonitor(AnonymousClass1 anonymousClass1) {
        this();
    }

    private SdCardMonitor() {
        this.JT = new HashSet();
        this.JS = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                boolean isExternalStorageMounted = C0001Environment.isExternalStorageMounted();
                if (SdCardMonitor.this.JU == null || SdCardMonitor.this.JU.booleanValue() != isExternalStorageMounted) {
                    SdCardMonitor.this.JU = Boolean.valueOf(isExternalStorageMounted);
                    SdCardMonitor.this.u(isExternalStorageMounted);
                }
            }
        };
    }

    public static SdCardMonitor getInstance() {
        return Holder.JW;
    }

    public void addListener(SdCardStatusListener sdCardStatusListener) {
        if (this.JT.isEmpty()) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.MEDIA_SHARED");
            intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
            intentFilter.addDataScheme("file");
            AppConstants.getCurrentApplication().registerReceiver(this.JS, intentFilter);
        }
        this.JT.add(sdCardStatusListener);
    }

    public void removeListener(SdCardStatusListener sdCardStatusListener) {
        this.JT.remove(sdCardStatusListener);
        if (this.JT.isEmpty()) {
            AppConstants.getCurrentApplication().unregisterReceiver(this.JS);
        }
    }

    private void u(boolean z) {
        Iterator it = this.JT.iterator();
        while (it.hasNext()) {
            ((SdCardStatusListener) it.next()).onStatusChanged(z);
        }
    }

    public static boolean isSdCardAvailable() {
        return C0001Environment.isExternalStorageMounted();
    }
}
