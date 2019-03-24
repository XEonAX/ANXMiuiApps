.class public interface abstract Lcom/miui/internal/analytics/Dispatchable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dispatchEvent(Lcom/miui/internal/analytics/TrackEvent;)V
.end method

.method public abstract dispatchLog(Lcom/miui/internal/analytics/LogEvent;)V
.end method

.method public abstract dispatchPageView(Lcom/miui/internal/analytics/TrackPageViewEvent;)V
.end method

.method public abstract start(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
