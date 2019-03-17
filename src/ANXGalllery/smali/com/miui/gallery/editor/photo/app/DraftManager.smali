.class public Lcom/miui/gallery/editor/photo/app/DraftManager;
.super Ljava/lang/Object;
.source "DraftManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;,
        Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;
    }
.end annotation


# instance fields
.field private mBackgroundTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mEngines:[Lcom/miui/gallery/editor/photo/core/RenderEngine;

.field private mExif:Lcom/miui/gallery3d/exif/ExifInterface;

.field private mExportedHeight:I

.field private mExportedWidth:I

.field private mInSampleSize:I

.field private mIsPreviewSameWithOrigin:Z

.field private mIsScreenshot:Z

.field private mMimeType:Ljava/lang/String;

.field private mOnPreviewRefreshListener:Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;

.field private mOriginHeight:I

.field private mOriginWidth:I

.field private mPreferHeight:I

.field private mPreferWidth:I

.field private mPreview:Landroid/graphics/Bitmap;

.field private volatile mPreviewEnable:Z

.field private mPreviewOriginal:Landroid/graphics/Bitmap;

.field private mRenderDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

.field private mSource:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/miui/gallery/editor/photo/core/RenderEngine;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mEngines:[Lcom/miui/gallery/editor/photo/core/RenderEngine;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    .line 138
    new-instance v1, Lcom/miui/gallery/editor/photo/app/DraftManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/app/DraftManager$1;-><init>(Lcom/miui/gallery/editor/photo/app/DraftManager;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mBackgroundTask:Landroid/os/AsyncTask;

    .line 83
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSource:Landroid/net/Uri;

    .line 85
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mBundle:Landroid/os/Bundle;

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreferWidth:I

    .line 89
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0273

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreferHeight:I

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSource:Landroid/net/Uri;

    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->isScreenShot(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    sget-object v1, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mIsScreenshot:Z

    .line 93
    new-instance v1, Lcom/miui/gallery/model/SecretInfo;

    invoke-direct {v1}, Lcom/miui/gallery/model/SecretInfo;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSource:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    .line 96
    if-eqz p3, :cond_1

    .line 97
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    const-string v2, "extra_is_secret"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/gallery/model/SecretInfo;->mIsSecret:Z

    .line 98
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    const-string v2, "extra_secret_key"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/miui/gallery/model/SecretInfo;->mSecretKey:[B

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    const-string v2, "photo_secret_id"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/gallery/model/SecretInfo;->mSecretId:J

    .line 101
    :cond_1
    return-void

    .line 91
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/DraftManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mInSampleSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/DraftManager;)Lcom/miui/gallery3d/exif/ExifInterface;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;
    .param p1, "x1"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/DraftManager;)Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOnPreviewRefreshListener:Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/editor/photo/app/DraftManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewOriginal:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/DraftManager;)[Lcom/miui/gallery/editor/photo/core/RenderEngine;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mEngines:[Lcom/miui/gallery/editor/photo/core/RenderEngine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/DraftManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    return-object v0
.end method

.method private checkSecretInfo()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-object v0, v0, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-wide v2, v1, Lcom/miui/gallery/model/SecretInfo;->mSecretId:J

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    invoke-static {v0, v2, v3, v1}, Lcom/miui/gallery/provider/CloudUtils;->getSecretInfo(Landroid/content/Context;JLcom/miui/gallery/model/SecretInfo;)Lcom/miui/gallery/model/SecretInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    .line 360
    :cond_0
    return-void
.end method

.method private decodeBitmap(Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "rotationDegree"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->joinExif(Landroid/graphics/Bitmap;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->setConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->checkSecretInfo()V

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-object v3, v3, Lcom/miui/gallery/model/SecretInfo;->mSecretPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 172
    .local v0, "inputStream":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-object v1, v1, Lcom/miui/gallery/model/SecretInfo;->mSecretKey:[B

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-object v1, v1, Lcom/miui/gallery/model/SecretInfo;->mSecretKey:[B

    invoke-static {v0, v1}, Lcom/miui/gallery/util/uil/CryptUtil;->getDecryptCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;

    move-result-object v0

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 176
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSource:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private getOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 384
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    const-string v2, "DraftManager"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->openOutputStream(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 390
    :goto_0
    return-object v2

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DraftManager"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/io/Closeable;)V

    .line 388
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initForBitmapInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 336
    const-string v1, "DraftManager"

    const-string v2, "decoding bitmap size:%d*%d"

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->checkSecretInfo()V

    .line 339
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSource:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-object v2, v2, Lcom/miui/gallery/model/SecretInfo;->mSecretKey:[B

    sget-object v3, Lcom/miui/gallery/util/ExifUtil;->sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/ExifUtil;->createExifInterface(Ljava/lang/String;[BLcom/miui/gallery/util/ExifUtil$ExifCreator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifInterface;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 344
    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 346
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 347
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {v2}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->joinExif(Landroid/graphics/Bitmap;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 348
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mMimeType:Ljava/lang/String;

    .line 350
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    .line 351
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    .line 352
    const-string v1, "DraftManager"

    const-string v2, "decoding bitmap size:%d*%d"

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    return-void

    .line 341
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/ExifUtil;->sGallery3DExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery3d/exif/ExifInterface;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    goto :goto_0
.end method


# virtual methods
.method public decodeOrigin()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 364
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 366
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 367
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/editor/photo/utils/BigBitmapLoadUtils;->calculateInSampleSize(Landroid/content/Context;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 368
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {v2}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 374
    .end local v1    # "opt":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "DraftManager"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "DraftManager"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public enqueue(Lcom/miui/gallery/editor/photo/core/RenderData;Lcom/miui/gallery/editor/photo/utils/Callback;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;
    .param p2, "callback"    # Lcom/miui/gallery/editor/photo/utils/Callback;

    .prologue
    .line 231
    new-instance v0, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;-><init>(Lcom/miui/gallery/editor/photo/app/DraftManager;Lcom/miui/gallery/editor/photo/utils/Callback;Lcom/miui/gallery/editor/photo/core/RenderData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/miui/gallery/editor/photo/core/RenderData;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/DraftManager$PreviewRenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    return-void
.end method

.method public export(Landroid/net/Uri;)Z
    .locals 18
    .param p1, "out"    # Landroid/net/Uri;

    .prologue
    .line 250
    const-string v13, "DraftManager"

    const-string v14, "exporting"

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 252
    const/4 v7, 0x0

    .line 329
    :goto_0
    return v7

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    if-nez v13, :cond_2

    .line 256
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->initForBitmapInfo()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mIsPreviewSameWithOrigin:Z

    if-eqz v13, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    .line 268
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const-string v14, "DraftManager"

    const-string v15, "origin is preview,bmp is empty:%b"

    if-nez v2, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    :goto_2
    if-nez v2, :cond_5

    .line 274
    const/4 v7, 0x0

    goto :goto_0

    .line 257
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v13, "DraftManager"

    invoke-static {v13, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    const/4 v7, 0x0

    goto :goto_0

    .line 260
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 261
    .local v4, "e":Ljava/lang/SecurityException;
    const-string v13, "DraftManager"

    invoke-static {v13, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    const/4 v7, 0x0

    goto :goto_0

    .line 268
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 270
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->decodeOrigin()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 271
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mEngines:[Lcom/miui/gallery/editor/photo/core/RenderEngine;

    invoke-static {v13, v2, v14, v15}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->render(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/List;[Lcom/miui/gallery/editor/photo/core/RenderEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 277
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExportedWidth:I

    .line 278
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExportedHeight:I

    .line 280
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 281
    .local v5, "outputStream":Ljava/io/OutputStream;
    if-nez v5, :cond_6

    .line 282
    const/4 v7, 0x0

    goto :goto_0

    .line 284
    :cond_6
    const/4 v12, 0x0

    .line 285
    .local v12, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery3d/exif/ExifTag;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    if-eqz v13, :cond_7

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-virtual {v13}, Lcom/miui/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v12

    .line 288
    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 289
    :cond_8
    const-string v13, "DraftManager"

    const-string v14, "no exif found in source image"

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSavedAsPng()Z

    move-result v6

    .line 316
    .local v6, "savedAsPng":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 318
    .local v8, "start":J
    if-eqz v6, :cond_d

    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v14, v13

    :goto_4
    if-eqz v6, :cond_e

    const/16 v13, 0x64

    :goto_5
    invoke-virtual {v2, v14, v13, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    .line 319
    .local v7, "success":Z
    if-eqz v7, :cond_9

    .line 320
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :cond_9
    const-string v13, "DraftManager"

    invoke-static {v13, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 328
    :goto_6
    const-string v13, "DraftManager"

    const-string v14, "saved as png %b, compress cost %d"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 291
    .end local v6    # "savedAsPng":Z
    .end local v7    # "success":Z
    .end local v8    # "start":J
    :cond_a
    const-string v13, "DraftManager"

    const-string v14, "filter exif"

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v3, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 293
    .local v3, "dst":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery3d/exif/ExifTag;

    .line 294
    .local v10, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v10}, Lcom/miui/gallery3d/exif/ExifTag;->getTagId()S

    move-result v11

    .line 295
    .local v11, "tagId":S
    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    if-eq v11, v14, :cond_b

    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 296
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    if-eq v11, v14, :cond_b

    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 297
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    if-eq v11, v14, :cond_b

    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    .line 298
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    if-eq v11, v14, :cond_b

    sget v14, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 299
    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    if-eq v11, v14, :cond_b

    const/16 v14, -0x7770

    if-eq v11, v14, :cond_b

    const/16 v14, -0x7768

    if-eq v11, v14, :cond_b

    const/16 v14, -0x7769

    if-eq v11, v14, :cond_b

    .line 303
    invoke-virtual {v3, v10}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_7

    .line 305
    :cond_b
    const-string v14, "DraftManager"

    const-string/jumbo v15, "skip user comment"

    invoke-static {v14, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 308
    .end local v10    # "tag":Lcom/miui/gallery3d/exif/ExifTag;
    .end local v11    # "tagId":S
    :cond_c
    sget v13, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/miui/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v14

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 309
    sget v13, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 310
    sget v13, Lcom/miui/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lcom/miui/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/miui/gallery3d/exif/ExifInterface;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    .line 311
    invoke-virtual {v3, v5}, Lcom/miui/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    goto/16 :goto_3

    .line 318
    .end local v3    # "dst":Lcom/miui/gallery3d/exif/ExifInterface;
    .restart local v6    # "savedAsPng":Z
    .restart local v8    # "start":J
    :cond_d
    :try_start_2
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v13

    goto/16 :goto_4

    :cond_e
    const/16 v13, 0x5f

    goto/16 :goto_5

    .line 322
    :catch_2
    move-exception v4

    .line 323
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v13, "DraftManager"

    invoke-static {v13, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    const/4 v7, 0x0

    .line 326
    .restart local v7    # "success":Z
    const-string v13, "DraftManager"

    invoke-static {v13, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto/16 :goto_6

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "success":Z
    :catchall_0
    move-exception v13

    const-string v14, "DraftManager"

    invoke-static {v14, v5}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v13
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExportFileSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSavedAsPng()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "jpg"

    goto :goto_0
.end method

.method public getExportedHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExportedHeight:I

    return v0
.end method

.method public getExportedWidth()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExportedWidth:I

    return v0
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewOriginal()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewOriginal:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRenderData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "dst":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    return-void
.end method

.method public getRenderDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    return-object v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public initializeForPreview(Z)Z
    .locals 13
    .param p1, "inMainProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    .local v4, "start":J
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->initForBitmapInfo()V

    .line 106
    iget v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    iget v9, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreferHeight:I

    div-int/2addr v8, v9

    iget v9, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    iget v10, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreferWidth:I

    div-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 107
    .local v3, "scale":I
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    iput v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mInSampleSize:I

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSource:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generatePreviewPhotoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    iget v10, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mInSampleSize:I

    div-int/2addr v9, v10

    if-lt v8, v9, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    iget v10, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mInSampleSize:I

    div-int/2addr v9, v10

    if-lt v8, v9, :cond_0

    .line 115
    iput-boolean v6, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewEnable:Z

    .line 117
    :cond_0
    const-string v8, "DraftManager"

    const-string v9, "load preview from cache"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/utils/Bitmaps;->copyBitmapInCaseOfRecycle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    .line 121
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 122
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    iget v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mInSampleSize:I

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mExif:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {v8}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v8

    invoke-direct {p0, v2, v8}, Lcom/miui/gallery/editor/photo/app/DraftManager;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    .line 125
    iput-boolean v6, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewEnable:Z

    .line 127
    .end local v2    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOriginHeight:I

    if-ne v8, v9, :cond_3

    .line 128
    iput-boolean v6, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mIsPreviewSameWithOrigin:Z

    .line 130
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewOriginal:Landroid/graphics/Bitmap;

    .line 131
    const-string v8, "DraftManager"

    const-string v9, "initialize costs %dms same:%b, previewEnable:%b"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-boolean v11, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mIsPreviewSameWithOrigin:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewEnable:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-boolean v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewEnable:Z

    if-nez v8, :cond_4

    .line 133
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mBackgroundTask:Landroid/os/AsyncTask;

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v7, [Ljava/lang/Void;

    invoke-virtual {v8, v9, v10}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    :goto_0
    return v6

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method public isPreviewEnable()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mPreviewEnable:Z

    return v0
.end method

.method public isPreviewSameWithOrigin()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mIsPreviewSameWithOrigin:Z

    return v0
.end method

.method public isSavedAsPng()Z
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mIsScreenshot:Z

    if-nez v0, :cond_0

    const-string v0, "image/png"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mSecretInfo:Lcom/miui/gallery/model/SecretInfo;

    iget-boolean v0, v0, Lcom/miui/gallery/model/SecretInfo;->mIsSecret:Z

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 235
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/RenderData;

    .line 236
    .local v1, "renderData":Lcom/miui/gallery/editor/photo/core/RenderData;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/RenderData;->release()V

    goto :goto_0

    .line 238
    .end local v1    # "renderData":Lcom/miui/gallery/editor/photo/core/RenderData;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mEngines:[Lcom/miui/gallery/editor/photo/core/RenderEngine;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 239
    .local v0, "engine":Lcom/miui/gallery/editor/photo/core/RenderEngine;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;->release()V

    .line 238
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "engine":Lcom/miui/gallery/editor/photo/core/RenderEngine;
    :cond_2
    return-void
.end method

.method public setOnPreviewRefreshListener(Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;)V
    .locals 0
    .param p1, "onPreviewRefreshListener"    # Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mOnPreviewRefreshListener:Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;

    .line 446
    return-void
.end method

.method public setRenderDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "renderDataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/RenderData;>;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager;->mRenderDataList:Ljava/util/List;

    .line 228
    return-void
.end method
