.class public Landroid/provider/SystemSettings$System;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field private static final E10_DEVICE:Ljava/lang/String; = "beryllium"

.field private static final INDIA:Ljava/lang/String; = "INDIA"

.field public static final LOCK_WALLPAPER_PROVIDER_AUTHORITY:Ljava/lang/String; = "lock_wallpaper_provider_authority"

.field public static final PERSIST_SYS_DEVICE_NAME:Ljava/lang/String; = "persist.sys.device_name"

.field public static final STATUS_BAR_WINDOW_LOADED:Ljava/lang/String; = "status_bar_window_loaded"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 105
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, ""

    .line 46
    .local v0, "defaultName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 47
    .local v1, "deviceNameRes":I
    const-string v2, "is_hongmi"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string v2, "is_redmi"

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget v1, Lcom/miui/system/internal/R$string;->device_redmi:I

    goto :goto_1

    .line 54
    :cond_0
    sget v1, Lcom/miui/system/internal/R$string;->device_hongmi:I

    goto :goto_1

    .line 56
    :cond_1
    const-string v2, "is_xiaomi"

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    const-string v2, "beryllium"

    const-string v3, "ro.product.device"

    invoke-static {v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    const-string v2, "ro.boot.hwc"

    const-string v3, ""

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "hwc":Ljava/lang/String;
    const-string v3, "INDIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    sget v1, Lcom/miui/system/internal/R$string;->device_poco_india:I

    goto :goto_0

    .line 62
    :cond_2
    sget v1, Lcom/miui/system/internal/R$string;->device_poco_global:I

    .line 64
    .end local v2    # "hwc":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 65
    :cond_3
    sget v1, Lcom/miui/system/internal/R$string;->device_xiaomi:I

    goto :goto_1

    .line 67
    :cond_4
    const-string v2, "is_pad"

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    sget v1, Lcom/miui/system/internal/R$string;->device_pad:I

    goto :goto_1

    .line 70
    :cond_5
    sget v1, Lcom/miui/system/internal/R$string;->miui_device_name:I

    .line 72
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v2, "persist.sys.device_name"

    invoke-static {v2, v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 77
    const-string v0, "persist.sys.device_name"

    invoke-static {v0, p1}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Landroid/provider/SystemSettings$System;->setNetHostName(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static setNetHostName(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    const-string v0, "net.hostname"

    .line 86
    .local v0, "NET_HOSTNAME_PROPERTY":Ljava/lang/String;
    const-string v1, "net.hostname"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "netHostName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v2, "nameBuilder":Ljava/lang/StringBuilder;
    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v3

    invoke-static {p0}, Landroid/provider/SystemSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 92
    .local v3, "tokenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/text/ChinesePinyinConverter$Token;

    .line 93
    .local v5, "token":Lmiui/text/ChinesePinyinConverter$Token;
    iget-object v6, v5, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v5    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "newNetHostName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 97
    const/16 v5, 0x14

    invoke-static {v4, v5}, Lmiui/util/Utf8TextUtils;->truncateByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "hostName":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 99
    const-string v6, "net.hostname"

    invoke-static {v6, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v5    # "hostName":Ljava/lang/String;
    :cond_1
    return-void
.end method
