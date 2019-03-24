package com.miui.internal.variable.v21;

import android.content.Context;
import android.widget.RemoteViews;

public class Android_Widget_RemoteViews_class extends com.miui.internal.variable.Android_Widget_RemoteViews_class {
    public void buildProxy() {
        attachMethod("getContextForResources", "(Landroid/content/Context;)Landroid/content/Context;");
    }

    protected void handle() {
        handleGetContextForResources(0, null, null);
    }

    protected Context handleGetContextForResources(long j, RemoteViews remoteViews, Context context) {
        Context originalGetContextForResources = originalGetContextForResources(j, remoteViews, context);
        if (context != originalGetContextForResources && "com.android.systemui".equals(context.getApplicationInfo().packageName)) {
            originalGetContextForResources.setTheme(REMOTE_VIEWS_TEMPLATE_THEME);
        }
        return originalGetContextForResources;
    }

    protected Context originalGetContextForResources(long j, RemoteViews remoteViews, Context context) {
        throw new IllegalStateException("com.miui.internal.variable.v21.Android_Widget_RemoteViews_class.originalGetContextForResources(long, RemoteViews, Context)");
    }
}
