.class public Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudControl"
.end annotation


# direct methods
.method public static getLastRequestSucceedTime()J
    .locals 4

    .prologue
    .line 1015
    const-string v0, "cloud_control_last_request_succeed_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRequestTime()J
    .locals 4

    .prologue
    .line 1007
    const-string v0, "cloud_control_last_request_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPushTag()J
    .locals 4

    .prologue
    .line 1023
    const-string v0, "cloud_control_push_tag"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSyncToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 999
    const-string v0, "cloud_control_sync_token"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove()V
    .locals 2

    .prologue
    .line 1031
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_control_sync_token"

    .line 1032
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_control_last_request_succeed_time"

    .line 1033
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_control_push_tag"

    .line 1034
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1035
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1036
    return-void
.end method

.method public static setLastRequestSucceedTime(J)V
    .locals 2
    .param p0, "lastSucceedTime"    # J

    .prologue
    .line 1019
    const-string v0, "cloud_control_last_request_succeed_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 1020
    return-void
.end method

.method public static setLastRequestTime(J)V
    .locals 2
    .param p0, "lastRequestTime"    # J

    .prologue
    .line 1011
    const-string v0, "cloud_control_last_request_time"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 1012
    return-void
.end method

.method public static setPushTag(J)V
    .locals 2
    .param p0, "lastRequestTime"    # J

    .prologue
    .line 1027
    const-string v0, "cloud_control_push_tag"

    invoke-static {v0, p0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 1028
    return-void
.end method

.method public static setSyncToken(Ljava/lang/String;)V
    .locals 1
    .param p0, "syncToken"    # Ljava/lang/String;

    .prologue
    .line 1003
    const-string v0, "cloud_control_sync_token"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    return-void
.end method
