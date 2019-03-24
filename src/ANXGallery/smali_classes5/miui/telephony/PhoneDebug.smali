.class public Lmiui/telephony/PhoneDebug;
.super Ljava/lang/Object;
.source "PhoneDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneDebug$Listener;
    }
.end annotation


# static fields
.field public static final PHONE_DEBUG_FLAG:Ljava/lang/String; = "phone_debug_flag"

.field public static VDBG:Z

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/telephony/PhoneDebug$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    .line 23
    const/4 v1, 0x0

    sput-object v1, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    .line 31
    :try_start_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    .line 32
    .local v1, "context":Landroid/content/Context;
    const-string v2, "android"

    invoke-static {v1}, Lmiui/telephony/PhoneDebug;->getOpPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    const v2, 0xea60

    invoke-static {v2}, Lmiui/telephony/PhoneDebug;->registerDelay(I)V

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone_debug_flag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string v2, "debug.miui.phone"

    .line 35
    invoke-static {v2, v0}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    goto :goto_2

    .line 37
    :cond_2
    invoke-static {}, Lmiui/telephony/PhoneDebug;->register()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "context":Landroid/content/Context;
    :goto_2
    goto :goto_3

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PhoneDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 20
    invoke-static {}, Lmiui/telephony/PhoneDebug;->register()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 20
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method public static addListener(Lmiui/telephony/PhoneDebug$Listener;)Lmiui/telephony/PhoneDebug$Listener;
    .locals 2
    .param p0, "listener"    # Lmiui/telephony/PhoneDebug$Listener;

    .line 47
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {p0}, Lmiui/telephony/PhoneDebug$Listener;->onDebugChanged()V

    .line 54
    :cond_1
    return-object p0
.end method

.method private static getOpPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const-class v0, Landroid/content/Context;

    const-string v1, "getOpPackageName"

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    return-object v0
.end method

.method private static register()V
    .locals 5

    .line 84
    :try_start_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "phone_debug_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const-string v1, "debug.miui.phone"

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v3, Lmiui/telephony/PhoneDebug;->VDBG:Z

    .line 86
    const-string v1, "phone_debug_flag"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lmiui/telephony/PhoneDebug$2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lmiui/telephony/PhoneDebug$2;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "cr":Landroid/content/ContentResolver;
    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "te":Ljava/lang/Exception;
    const-string v1, "PhoneDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "te":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static registerDelay(I)V
    .locals 2
    .param p0, "time"    # I

    .line 67
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneDebug"

    const-string v1, "registerDelay"

    invoke-static {v0, v1}, Lmiui/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/telephony/PhoneDebug$1;

    invoke-direct {v1, p0}, Lmiui/telephony/PhoneDebug$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method public static removeListener(Lmiui/telephony/PhoneDebug$Listener;)V
    .locals 1
    .param p0, "listener"    # Lmiui/telephony/PhoneDebug$Listener;

    .line 58
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 59
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    .line 64
    :cond_0
    return-void
.end method
