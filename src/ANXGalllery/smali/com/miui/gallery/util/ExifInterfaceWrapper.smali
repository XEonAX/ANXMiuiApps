.class Lcom/miui/gallery/util/ExifInterfaceWrapper;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# instance fields
.field private mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mMediaExif:Landroid/media/ExifInterface;

.field private mSupportExifI:Landroid/support/media/ExifInterface;


# direct methods
.method public constructor <init>(Landroid/media/ExifInterface;)V
    .locals 0
    .param p1, "exifI"    # Landroid/media/ExifInterface;

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExif:Landroid/media/ExifInterface;

    .line 750
    return-void
.end method

.method public constructor <init>(Landroid/support/media/ExifInterface;)V
    .locals 0
    .param p1, "supportExifI"    # Landroid/support/media/ExifInterface;

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p1, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mSupportExifI:Landroid/support/media/ExifInterface;

    .line 742
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 0
    .param p1, "exifI"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object p1, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 746
    return-void
.end method


# virtual methods
.method public getUserComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/miui/gallery3d/exif/ExifInterface;->getUserCommentAsASCII()Ljava/lang/String;

    move-result-object v0

    .line 762
    :goto_0
    return-object v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mSupportExifI:Landroid/support/media/ExifInterface;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mSupportExifI:Landroid/support/media/ExifInterface;

    const-string v1, "UserComment"

    invoke-virtual {v0, v1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExif:Landroid/media/ExifInterface;

    const-string v1, "UserComment"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 762
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "userComment"    # Ljava/lang/String;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mExifI:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v0, p1}, Lcom/miui/gallery3d/exif/ExifInterface;->addUserComment(Ljava/lang/String;)Z

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mSupportExifI:Landroid/support/media/ExifInterface;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mSupportExifI:Landroid/support/media/ExifInterface;

    const-string v1, "UserComment"

    invoke-virtual {v0, v1, p1}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/miui/gallery/util/ExifInterfaceWrapper;->mMediaExif:Landroid/media/ExifInterface;

    const-string v1, "UserComment"

    invoke-virtual {v0, v1, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_2
    return-void
.end method
