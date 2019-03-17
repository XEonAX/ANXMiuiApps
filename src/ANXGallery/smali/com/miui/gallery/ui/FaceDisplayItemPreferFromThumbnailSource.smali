.class public Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;
.super Landroid/widget/RelativeLayout;
.source "FaceDisplayItemPreferFromThumbnailSource.java"


# instance fields
.field protected mCover:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "facePosition"    # Landroid/graphics/RectF;
    .param p5, "sourceType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;->mCover:Landroid/widget/ImageView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/people/PeopleDisplayHelper;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 24
    return-void
.end method
