package com.miui.internal.analytics;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.miui.internal.analytics.IAnalytics.Stub;
import java.util.Arrays;

public class AnalyticsService extends Service {
    private final Stub e = new Stub() {
        public void track(Event[] eventArr) throws RemoteException {
            PersistenceHelper instance = PersistenceHelper.getInstance();
            String[] packagesForUid = AnalyticsService.this.getPackageManager().getPackagesForUid(Binder.getCallingUid());
            Arrays.sort(packagesForUid);
            for (Event event : eventArr) {
                if (Arrays.binarySearch(packagesForUid, event.getPackageName()) >= 0) {
                    instance.writeEvent(event);
                }
            }
        }
    };

    public IBinder onBind(Intent intent) {
        return this.e;
    }
}
