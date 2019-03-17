.class public Lcom/miui/gallery/preference/GalleryPreferences$CTA;
.super Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTA"
.end annotation


# direct methods
.method public static onCreateOrDestroyHomePage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setCanConnectToNetworkTemp(Z)V

    .line 283
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->setToAllowUseOnOfflineGlobal(Z)V

    .line 284
    return-void
.end method
