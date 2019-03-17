.class public Lcom/miui/gallery/preference/GalleryPreferences$PhotoEditor;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEditor"
.end annotation


# direct methods
.method public static addCropTipsShowTimes()V
    .locals 3

    .prologue
    .line 978
    const-string v1, "photo_editor_crop_tips_times"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 979
    .local v0, "value":I
    const-string v1, "photo_editor_crop_tips_times"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 980
    return-void
.end method

.method public static isCropTipsShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 974
    const-string v1, "photo_editor_crop_tips_times"

    invoke-static {v1, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
