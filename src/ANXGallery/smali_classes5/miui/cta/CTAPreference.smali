.class public Lmiui/cta/CTAPreference;
.super Ljava/lang/Object;
.source "CTAPreference.java"


# static fields
.field private static final PREF_KEY_ACCEPTED:Ljava/lang/String; = "miui.cta.pref.accepted"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccepted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    invoke-static {p0}, Lmiui/util/FBEUtils;->getSafeStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, "storageContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "miui.cta.pref.accepted"

    .line 24
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    return v1
.end method

.method public static setAccepted(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accepted"    # Z

    .line 16
    invoke-static {p0}, Lmiui/util/FBEUtils;->getSafeStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 17
    .local v0, "storageContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "miui.cta.pref.accepted"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method
