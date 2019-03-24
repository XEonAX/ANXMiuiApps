package miui.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import com.miui.internal.analytics.AnalyticsService;
import com.miui.internal.analytics.Event;
import com.miui.internal.analytics.IAnalytics.Stub;
import com.miui.internal.analytics.LogEvent;
import com.miui.internal.analytics.TrackEvent;
import com.miui.internal.analytics.TrackPageViewEvent;
import com.miui.internal.util.PackageConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import miui.util.SoftReferenceSingleton;

public class Analytics {
    private static final String TAG = "Analytics";
    private static final SoftReferenceSingleton<Analytics> s = new SoftReferenceSingleton<Analytics>() {
        /* renamed from: bZ */
        protected Analytics createInstance() {
            return new Analytics();
        }
    };
    private static final String wG = "_timed_event_";
    private static final String wH = "_timed_event_id_";
    private static final String wI = "_event_default_param_";
    private static final String wJ = "imei";
    private static final long wK = 0;
    private Context mContext;
    private String mPackageName;
    private List<TrackEvent> wL;
    private int wM;
    private List<Event> wN;

    /* synthetic */ Analytics(AnonymousClass1 anonymousClass1) {
        this();
    }

    private Analytics() {
        this.mPackageName = "";
        this.mContext = null;
        this.wL = null;
        this.wM = 0;
        this.wN = null;
    }

    public static Analytics getInstance() {
        return (Analytics) s.get();
    }

    public synchronized void startSession(Context context) {
        if (context != null) {
            int i = this.wM;
            this.wM = i + 1;
            if (i == 0) {
                this.mContext = context.getApplicationContext();
                this.mPackageName = this.mContext.getPackageName();
                this.wL = Collections.synchronizedList(new ArrayList());
                this.wN = Collections.synchronizedList(new ArrayList());
                Log.i(TAG, String.format("start session(%s)", new Object[]{this.mContext.getPackageName()}));
            }
        }
    }

    /* JADX WARNING: Missing block: B:13:0x005f, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void endSession() {
        if (this.wM > 0) {
            int i = this.wM - 1;
            this.wM = i;
            if (i == 0) {
                if (bY()) {
                    Log.i(TAG, String.format("end session(%s)", new Object[]{this.mContext.getPackageName()}));
                    this.wL.clear();
                    this.wL = null;
                    final Event[] eventArr = new Event[this.wN.size()];
                    this.wN.toArray(eventArr);
                    final Context context = this.mContext;
                    this.wN = null;
                    this.mContext = null;
                    Intent intent = new Intent();
                    intent.setClassName(PackageConstants.PACKAGE_NAME, AnalyticsService.class.getName());
                    context.bindService(intent, new ServiceConnection() {
                        public void onServiceDisconnected(ComponentName componentName) {
                        }

                        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                            try {
                                Stub.asInterface(iBinder).track(eventArr);
                            } catch (Throwable e) {
                                Log.e(Analytics.TAG, "endSession() remote exception caught", e);
                            }
                            context.unbindService(this);
                        }
                    }, 1);
                }
            }
        }
    }

    public void trackError(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            Log.i(TAG, "the id or error class of logged event is null or empty");
        } else if (bY()) {
            if (str2 == null) {
                str2 = "";
            }
            this.wN.add(new LogEvent(this.mPackageName, str, str2, str3));
        }
    }

    public void trackEvent(String str) {
        trackTimedEvent(str, null, false, 0);
    }

    public void trackEvent(String str, long j) {
        trackTimedEvent(str, null, false, j);
    }

    public void trackEvent(String str, Map<String, String> map) {
        trackTimedEvent(str, map, false, 0);
    }

    public void trackEvent(String str, Map<String, String> map, long j) {
        trackTimedEvent(str, map, false, j);
    }

    public void trackTimedEvent(String str, boolean z) {
        trackTimedEvent(str, null, z, 0);
    }

    public void trackTimedEvent(String str, boolean z, long j) {
        trackTimedEvent(str, null, z, j);
    }

    public void trackTimedEvent(String str, Map<String, String> map, boolean z) {
        trackTimedEvent(str, map, z, 0);
    }

    public void trackEvent(String str, Object obj) {
        Map hashMap = new HashMap();
        hashMap.put(wI, obj.toString());
        trackEvent(str, hashMap);
    }

    public void trackTimedEvent(String str, Map<String, String> map, boolean z, long j) {
        if (TextUtils.isEmpty(str)) {
            Log.i(TAG, "the id of tracked event is null or empty");
        } else if (bY()) {
            if (map == null) {
                map = new HashMap();
            }
            TrackEvent trackEvent = new TrackEvent(this.mPackageName, str, map, j);
            this.wN.add(trackEvent);
            if (z) {
                this.wL.add(trackEvent);
            }
        }
    }

    public void endTimedEvent(String str) {
        if (this.wL == null) {
            Log.i(TAG, "there is no timed event");
            return;
        }
        int i;
        Iterator it = this.wL.iterator();
        while (it.hasNext()) {
            TrackEvent trackEvent = (TrackEvent) it.next();
            if (str.equals(trackEvent.getEventId())) {
                long currentTimeMillis = System.currentTimeMillis();
                Map hashMap = new HashMap();
                hashMap.put(wH, str);
                trackEvent(wG, hashMap, currentTimeMillis - trackEvent.getTrackTime());
                it.remove();
                i = 1;
                break;
            }
        }
        i = 0;
        if (i == 0) {
            Log.i(TAG, String.format("the ended event (%s) is not timed", new Object[]{str}));
        }
    }

    public void onTrackPageView() {
        if (bY()) {
            this.wN.add(new TrackPageViewEvent(this.mPackageName));
        }
    }

    private boolean bY() {
        if (this.wN != null) {
            return true;
        }
        Log.i(TAG, "method: startSession should be called before tracking events");
        return false;
    }
}
