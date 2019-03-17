.class Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;
.super Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchAlbum"
.end annotation


# instance fields
.field mCoverUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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
    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;-><init>(IIILandroid/net/Uri;)V

    .line 449
    return-void
.end method
