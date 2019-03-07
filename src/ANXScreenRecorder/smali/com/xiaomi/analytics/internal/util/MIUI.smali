.class public Lcom/xiaomi/analytics/internal/util/MIUI;
.super Ljava/lang/Object;
.source "MIUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlphaBuild()Z
    .locals 3

    .prologue
    .line 25
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_ALPHA_BUILD"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 31
    :goto_0
    return v1

    .line 29
    :catch_0
    move-exception v1

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCTABuild()Z
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_CTA_BUILD"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v1

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDevBuild()Z
    .locals 3

    .prologue
    .line 36
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_DEVELOPMENT_VERSION"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v1

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 71
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    move v2, v3

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 74
    .local v2, "ret":Z
    :cond_2
    if-nez v2, :cond_0

    .line 75
    const-string v4, "MIUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provisioned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/analytics/internal/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MIUI"

    const-string v5, "isDeviceProvisioned exception"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 81
    goto :goto_0
.end method

.method public static isInternationalBuild()Z
    .locals 3

    .prologue
    .line 14
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_INTERNATIONAL_BUILD"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 20
    :goto_0
    return v1

    .line 18
    :catch_0
    move-exception v1

    .line 20
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStableBuild()Z
    .locals 3

    .prologue
    .line 47
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_STABLE_VERSION"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v1

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldNotAccessNetworkOrLocation(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isCTABuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "should not access network or location, cta"

    invoke-static {p1, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/MIUI;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    const-string v1, "should not access network or location, not provisioned"

    invoke-static {p1, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
