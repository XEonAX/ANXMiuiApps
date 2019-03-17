.class Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
.super Ljava/lang/Object;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Album"
.end annotation


# instance fields
.field mActionUri:Landroid/net/Uri;

.field mAlbumNameRes:I

.field mDefaultCoverRes:I

.field mIndex:I

.field mIsCoverDataValid:Z


# direct methods
.method public constructor <init>(IIILandroid/net/Uri;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "albumNameRes"    # I
    .param p3, "defaultCoverRes"    # I
    .param p4, "actionUri"    # Landroid/net/Uri;

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput p1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mIndex:I

    .line 430
    iput p2, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mAlbumNameRes:I

    .line 431
    iput p3, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mDefaultCoverRes:I

    .line 432
    iput-object p4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mActionUri:Landroid/net/Uri;

    .line 433
    return-void
.end method
