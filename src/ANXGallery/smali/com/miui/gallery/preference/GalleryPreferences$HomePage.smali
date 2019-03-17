.class public Lcom/miui/gallery/preference/GalleryPreferences$HomePage;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomePage"
.end annotation


# direct methods
.method public static getHomePageImageIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    const-string v0, "home_page_image_ids"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setHomePageImageIds(Ljava/lang/String;)V
    .locals 1
    .param p0, "ids"    # Ljava/lang/String;

    .prologue
    .line 1315
    const-string v0, "home_page_image_ids"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    return-void
.end method
