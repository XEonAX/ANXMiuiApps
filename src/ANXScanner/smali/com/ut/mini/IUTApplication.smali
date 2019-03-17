.class public interface abstract Lcom/ut/mini/IUTApplication;
.super Ljava/lang/Object;
.source "IUTApplication.java"


# virtual methods
.method public abstract getUTAppVersion()Ljava/lang/String;
.end method

.method public abstract getUTChannel()Ljava/lang/String;
.end method

.method public abstract getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
.end method

.method public abstract getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
.end method

.method public abstract isAliyunOsSystem()Z
.end method

.method public abstract isUTCrashHandlerDisable()Z
.end method

.method public abstract isUTLogEnable()Z
.end method
