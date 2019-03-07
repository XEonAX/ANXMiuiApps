.class public interface abstract Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
.super Ljava/lang/Object;
.source "AnalyticsInterface.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract deleteAllEvents(Ljava/lang/String;)V
.end method

.method public abstract getClientExtra(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersion()Lcom/xiaomi/analytics/internal/Version;
.end method

.method public abstract init()V
.end method

.method public abstract isPolicyReady(Ljava/lang/String;)Z
.end method

.method public abstract setDebugOn(Z)V
.end method

.method public abstract setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackEvent(Ljava/lang/String;)V
.end method

.method public abstract trackEvents([Ljava/lang/String;)V
.end method
