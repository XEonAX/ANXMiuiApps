package miui.external;

import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.ContextWrapper;
import android.content.res.Configuration;

public abstract class ApplicationDelegate extends ContextWrapper implements ComponentCallbacks2 {
    private Application mApplication;

    public ApplicationDelegate() {
        super(null);
    }

    void attach(Application application) {
        this.mApplication = application;
        attachBaseContext(application);
    }

    public Application getApplication() {
        return this.mApplication;
    }

    public void onCreate() {
        this.mApplication.superOnCreate();
    }

    public void onTerminate() {
        this.mApplication.superOnTerminate();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        this.mApplication.superOnConfigurationChanged(newConfig);
    }

    public void onLowMemory() {
        this.mApplication.superOnLowMemory();
    }

    public void onTrimMemory(int level) {
        this.mApplication.superOnTrimMemory(level);
    }

    public void registerComponentCallbacks(ComponentCallbacks callback) {
        this.mApplication.registerComponentCallbacks(callback);
    }

    public void unregisterComponentCallbacks(ComponentCallbacks callback) {
        this.mApplication.unregisterComponentCallbacks(callback);
    }

    public void registerActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
        this.mApplication.registerActivityLifecycleCallbacks(callback);
    }

    public void unregisterActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
        this.mApplication.unregisterActivityLifecycleCallbacks(callback);
    }
}
