.class public Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideShow"
.end annotation


# direct methods
.method public static getSlideShowInterval()I
    .locals 2

    .prologue
    .line 939
    const-string/jumbo v0, "slideshow_interval"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setSlideShowInterval(I)V
    .locals 1
    .param p0, "interval"    # I

    .prologue
    .line 943
    const-string/jumbo v0, "slideshow_interval"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 944
    return-void
.end method
