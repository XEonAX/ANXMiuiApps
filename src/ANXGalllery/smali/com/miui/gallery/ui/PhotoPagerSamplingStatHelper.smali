.class public Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;
.super Ljava/lang/Object;
.source "PhotoPagerSamplingStatHelper.java"


# static fields
.field private static mEditorSavedUri:Landroid/net/Uri;


# direct methods
.method public static onDestroy()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->mEditorSavedUri:Landroid/net/Uri;

    .line 35
    return-void
.end method

.method public static onEditorSaved(Landroid/net/Uri;)V
    .locals 0
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 30
    sput-object p0, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->mEditorSavedUri:Landroid/net/Uri;

    .line 31
    return-void
.end method

.method public static onImageShared(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->mEditorSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->mEditorSavedUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const-string v0, "PhotoPagerSamplingStatHelper"

    const-string v1, "User share the photo after edit."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "photo"

    const-string v1, "photo_share_after_edit"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->mEditorSavedUri:Landroid/net/Uri;

    goto :goto_0
.end method
