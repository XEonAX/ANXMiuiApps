package com.miui.internal.variable.v16;

import android.content.Context;
import android.widget.RemoteViews;

public class Android_Widget_RemoteViews_class extends com.miui.internal.variable.Android_Widget_RemoteViews_class {
    public void buildProxy() {
        attachMethod("prepareContext", "(Landroid/content/Context;)Landroid/content/Context;");
    }

    protected void handle() {
        handlePrepareContext(0, null, null);
    }

    protected Context handlePrepareContext(long j, RemoteViews remoteViews, Context context) {
        Context originalPrepareContext = originalPrepareContext(j, remoteViews, context);
        if (context != originalPrepareContext && "com.android.systemui".equals(context.getApplicationInfo().packageName)) {
            originalPrepareContext.setTheme(REMOTE_VIEWS_TEMPLATE_THEME);
        }
        return originalPrepareContext;
    }

    protected Context originalPrepareContext(long j, RemoteViews remoteViews, Context context) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Widget_RemoteViews_class.originalPrepareContext(long, RemoteViews, Context)");
    }
}
