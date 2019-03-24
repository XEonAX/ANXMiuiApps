.class public Lmiui/yellowpage/ContactThumbnailProcessor;
.super Ljava/lang/Object;
.source "ContactThumbnailProcessor.java"

# interfaces
.implements Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;


# static fields
.field private static final sPhotoSize:I = 0x86


# instance fields
.field private mBackgroundRes:I

.field private mContext:Landroid/content/Context;

.field private mDefaultPhoto:Z

.field private mForegroundRes:I

.field private mMaskRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forgroundRes"    # I
    .param p3, "backgroundRes"    # I
    .param p4, "maskRes"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    .line 21
    iput p2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mForegroundRes:I

    .line 22
    iput p3, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mBackgroundRes:I

    .line 23
    iput p4, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mMaskRes:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    .line 25
    return-void
.end method


# virtual methods
.method public processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "originImage"    # Landroid/graphics/Bitmap;

    .line 34
    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    const/16 v2, 0x86

    invoke-static {v1, p1, v2}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    iget v2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mMaskRes:I

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mForegroundRes:I

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x86

    .line 44
    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0
.end method
