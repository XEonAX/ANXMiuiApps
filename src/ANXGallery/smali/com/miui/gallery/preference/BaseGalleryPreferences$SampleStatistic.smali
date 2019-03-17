.class public Lcom/miui/gallery/preference/BaseGalleryPreferences$SampleStatistic;
.super Ljava/lang/Object;
.source "BaseGalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/BaseGalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleStatistic"
.end annotation


# direct methods
.method public static getUniqId()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 61
    const-string/jumbo v2, "user_uniq_id"

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 62
    .local v0, "randomKey":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 64
    const-string/jumbo v2, "user_uniq_id"

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 66
    :cond_0
    return-wide v0
.end method

.method public static hasUploadUserInfo()Z
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "user_info_self_shoot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setUploadedUserInfo(Z)V
    .locals 1
    .param p0, "uploaded"    # Z

    .prologue
    .line 57
    const-string/jumbo v0, "user_info_self_shoot"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method
