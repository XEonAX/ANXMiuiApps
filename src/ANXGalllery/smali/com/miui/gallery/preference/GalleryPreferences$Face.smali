.class public Lcom/miui/gallery/preference/GalleryPreferences$Face;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# direct methods
.method public static getFaceSwitchEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 661
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFaceSwitchSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    .local v0, "faceStatus":I
    :goto_0
    return v2

    .line 662
    .end local v0    # "faceStatus":I
    :cond_0
    const-string v3, "cloud_face_status"

    invoke-static {v3, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 663
    .restart local v0    # "faceStatus":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public static getMarkMyselfTriggeredCount()I
    .locals 2

    .prologue
    .line 687
    const-string v0, "face_mark_myself_triggered_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isFaceRecommendGroupHidden(Ljava/lang/String;)Z
    .locals 2
    .param p0, "albumServerId"    # Ljava/lang/String;

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_recommend_group_hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFaceSwitchSet()Z
    .locals 1

    .prologue
    .line 657
    const-string v0, "cloud_face_status"

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstSyncCompleted()Z
    .locals 2

    .prologue
    .line 703
    const-string v0, "face_first_sync_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowRecommendConfirmDialog()Z
    .locals 2

    .prologue
    .line 683
    const-string v0, "first_confirm_recommend_face"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onMarkMyselfTriggered()V
    .locals 2

    .prologue
    .line 691
    const-string v0, "face_mark_myself_triggered_count"

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->getMarkMyselfTriggeredCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 692
    return-void
.end method

.method public static remove()V
    .locals 2

    .prologue
    .line 711
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_face_status"

    .line 712
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_face_status_retry_time"

    .line 713
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "face_feature_switch_pending"

    .line 714
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "face_url_for_queuing"

    .line 715
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "face_url_for_waiting"

    .line 716
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_face_status_sync_time"

    .line 717
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "face_mark_myself_triggered_count"

    .line 718
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "face_mark_myself_result"

    .line 719
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "face_first_sync_completed"

    .line 720
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 722
    return-void
.end method

.method public static setFaceRecommendGroupHidden(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "albumServerId"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_recommend_group_hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    return-void
.end method

.method public static setFaceSwitchStatus(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 667
    const-string v1, "cloud_face_status"

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 668
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFirstSyncCompleted()V
    .locals 2

    .prologue
    .line 707
    const-string v0, "face_first_sync_completed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 708
    return-void
.end method

.method public static setMarkMyselfResult(Z)V
    .locals 1
    .param p0, "result"    # Z

    .prologue
    .line 699
    const-string v0, "face_mark_myself_result"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 700
    return-void
.end method

.method public static setShowRecommendConfirmDialog(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 679
    const-string v0, "first_confirm_recommend_face"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 680
    return-void
.end method
