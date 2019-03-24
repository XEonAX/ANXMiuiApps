.class public Lmiui/yellowpage/YellowPageImgLoader$Image;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageImgLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;,
        Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    }
.end annotation


# instance fields
.field private mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

.field private mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    .line 33
    sget-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    iput-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 59
    if-ne p1, p0, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    instance-of v0, p1, Lmiui/yellowpage/YellowPageImgLoader$Image;

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 65
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    iget-object v1, v0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 67
    .end local v0    # "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .locals 1

    .line 50
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lmiui/util/HashUtils;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "originImage"    # Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    invoke-interface {v0, p1}, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;->processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    return-object p1
.end method

.method public setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V
    .locals 0
    .param p1, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    .line 95
    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Image name is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
