.class Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;
.super Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalAlbum"
.end annotation


# instance fields
.field mAlbumCovers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/BaseAlbumCover;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILandroid/net/Uri;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "albumNameRes"    # I
    .param p3, "defaultAlbumCoverRes"    # I
    .param p4, "actionUri"    # Landroid/net/Uri;

    .prologue
    .line 440
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;-><init>(IIILandroid/net/Uri;)V

    .line 441
    return-void
.end method
