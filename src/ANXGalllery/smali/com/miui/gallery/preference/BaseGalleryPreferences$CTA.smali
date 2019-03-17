.class public Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;
.super Ljava/lang/Object;
.source "BaseGalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/BaseGalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTA"
.end annotation


# static fields
.field private static sAllowUseOnOfflineGlobal:Z

.field private static sCanConnectToNetworkTemp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 73
    sput-boolean v0, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    return-void
.end method

.method public static allowUseOnOfflineGlobal()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    return v0
.end method

.method public static canConnectNetwork()Z
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/miui/gallery/util/deprecated/BaseDeprecatedPreference;->sCanConnectNetworkByImpunity()Z

    move-result v0

    .line 105
    .local v0, "canConnectNetwork":Z
    const-string v1, "can_connect_network"

    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static remindConnectNetworkEveryTime()Z
    .locals 2

    .prologue
    .line 84
    const-string v0, "impunity_declaration_every_time"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCanConnectNetwork(Z)V
    .locals 3
    .param p0, "remindNever"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    if-eqz p0, :cond_0

    .line 91
    sput-boolean v1, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 92
    const-string v0, "can_connect_network"

    invoke-static {v0, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    const-string v0, "impunity_declaration_every_time"

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    :goto_0
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.action.CTA_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 101
    return-void

    .line 96
    :cond_0
    sput-boolean v2, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 97
    const-string v0, "can_connect_network"

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setCanConnectToNetworkTemp(Z)V
    .locals 0
    .param p0, "canConnectToNetworkTemp"    # Z

    .prologue
    .line 128
    sput-boolean p0, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sCanConnectToNetworkTemp:Z

    .line 129
    return-void
.end method

.method public static setRemindConnectNetworkEveryTime(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 76
    const-string v0, "impunity_declaration_every_time"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    if-eqz p0, :cond_0

    .line 79
    const-string v0, "can_connect_network"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public static setToAllowUseOnOfflineGlobal(Z)V
    .locals 0
    .param p0, "allow"    # Z

    .prologue
    .line 120
    sput-boolean p0, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->sAllowUseOnOfflineGlobal:Z

    .line 121
    return-void
.end method
