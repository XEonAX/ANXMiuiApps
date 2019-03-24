package com.miui.internal.variable.v16;

import android.app.Activity;
import miui.app.ActionBar;

public class Android_App_Activity_class extends com.miui.internal.variable.Android_App_Activity_class {
    public void buildProxy() {
        attachMethod("setProgressBarVisibility", "(Z)V");
        attachMethod("setProgressBarIndeterminateVisibility", "(Z)V");
        attachMethod("setProgressBarIndeterminate", "(Z)V");
        attachMethod("setProgress", "(I)V");
    }

    protected void handle() {
        handleSetProgressBarVisibility(0, null, false);
        handleSetProgressBarIndeterminateVisibility(0, null, false);
        handleSetProgressBarIndeterminate(0, null, false);
        handleSetProgress(0, null, 0);
    }

    protected void handleSetProgressBarVisibility(long j, Activity activity, boolean z) {
        if (activity instanceof miui.app.Activity) {
            ActionBar actionBar = ((miui.app.Activity) activity).getActionBar();
            if (actionBar != null) {
                actionBar.setProgressBarVisibility(z);
                return;
            }
            return;
        }
        originalSetProgressBarVisibility(j, activity, z);
    }

    protected void originalSetProgressBarVisibility(long j, Activity activity, boolean z) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarVisibility(long, Activity, boolean)");
    }

    protected void handleSetProgressBarIndeterminateVisibility(long j, Activity activity, boolean z) {
        if (activity instanceof miui.app.Activity) {
            ActionBar actionBar = ((miui.app.Activity) activity).getActionBar();
            if (actionBar != null) {
                actionBar.setProgressBarIndeterminateVisibility(z);
                return;
            }
            return;
        }
        originalSetProgressBarIndeterminateVisibility(j, activity, z);
    }

    protected void originalSetProgressBarIndeterminateVisibility(long j, Activity activity, boolean z) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarIndeterminateVisibility(long, Activity, boolean)");
    }

    protected void handleSetProgressBarIndeterminate(long j, Activity activity, boolean z) {
        if (activity instanceof miui.app.Activity) {
            ActionBar actionBar = ((miui.app.Activity) activity).getActionBar();
            if (actionBar != null) {
                actionBar.setProgressBarIndeterminate(z);
                return;
            }
            return;
        }
        originalSetProgressBarIndeterminate(j, activity, z);
    }

    protected void originalSetProgressBarIndeterminate(long j, Activity activity, boolean z) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgressBarIndeterminate(long, Activity, boolean)");
    }

    protected void handleSetProgress(long j, Activity activity, int i) {
        if (activity instanceof miui.app.Activity) {
            ActionBar actionBar = ((miui.app.Activity) activity).getActionBar();
            if (actionBar != null) {
                actionBar.setProgress(i);
                return;
            }
            return;
        }
        originalSetProgress(j, activity, i);
    }

    protected void originalSetProgress(long j, Activity activity, int i) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_App_Activity_class.originalSetProgress(long, Activity, int)");
    }
}
