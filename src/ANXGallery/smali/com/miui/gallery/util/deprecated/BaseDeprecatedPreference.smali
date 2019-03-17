.class public Lcom/miui/gallery/util/deprecated/BaseDeprecatedPreference;
.super Ljava/lang/Object;
.source "BaseDeprecatedPreference.java"


# direct methods
.method private static getDefaultPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static sCanConnectNetworkByImpunity()Z
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/miui/gallery/util/deprecated/BaseDeprecatedPreference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "can_connect_network"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static sGetDefaultEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/gallery/util/deprecated/BaseDeprecatedPreference;->sGetDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static sGetDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/miui/gallery/util/StaticContext;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/deprecated/BaseDeprecatedPreference;->getDefaultPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
