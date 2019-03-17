.class public Lcom/miui/gallery/preference/GalleryPreferences$SmartVideoGuide;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartVideoGuide"
.end annotation


# direct methods
.method public static hasGuided()Z
    .locals 2

    .prologue
    .line 1247
    const-string/jumbo v0, "smart_video_guide_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setSmartVideoGuided(Z)V
    .locals 1
    .param p0, "hasGuided"    # Z

    .prologue
    .line 1251
    const-string/jumbo v0, "smart_video_guide_completed"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1252
    return-void
.end method
