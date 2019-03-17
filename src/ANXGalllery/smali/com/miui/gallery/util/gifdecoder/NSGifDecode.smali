.class public Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
.super Ljava/lang/Object;
.source "NSGifDecode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;,
        Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;,
        Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
    }
.end annotation


# instance fields
.field private mDecodeRunnable:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;

.field private mFrame:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private volatile mListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

.field private final mLock:Ljava/lang/Object;

.field private mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;

    .line 24
    iput-object v1, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mQuit:Z

    .line 26
    iput-object v1, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mLock:Ljava/lang/Object;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mQuit:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static checkGif(Ljava/io/InputStream;[B[I)Z
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "wh"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0, p1, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 67
    :goto_0
    return v3

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 44
    .local v1, "tag":Ljava/lang/String;
    const-string v5, "GIF87a"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "GIF89a"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    const-string v4, "NSGifDecode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is not gif, tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p1, v6}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->convertShort([BI)I

    move-result v2

    .line 50
    .local v2, "width":I
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    .line 51
    aput v2, p2, v3

    .line 53
    :cond_2
    if-lez v2, :cond_3

    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxTextureSize()I

    move-result v5

    if-le v2, v5, :cond_4

    .line 54
    :cond_3
    const-string v4, "NSGifDecode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_4
    const/16 v5, 0x8

    invoke-static {p1, v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->convertShort([BI)I

    move-result v0

    .line 59
    .local v0, "height":I
    if-eqz p2, :cond_5

    array-length v5, p2

    if-le v5, v4, :cond_5

    .line 60
    aput v0, p2, v4

    .line 62
    :cond_5
    if-lez v0, :cond_6

    invoke-static {}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getMaxTextureSize()I

    move-result v5

    if-le v0, v5, :cond_7

    .line 63
    :cond_6
    const-string v4, "NSGifDecode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 67
    goto/16 :goto_0
.end method

.method private static convertShort([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 35
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static create(Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .locals 2
    .param p0, "nsGifgen"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 157
    :try_start_0
    new-instance v0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    invoke-direct {v0}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;-><init>()V

    .line 158
    .local v0, "decode":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    iput-object p0, v0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "decode":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v1

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Ljava/io/FileDescriptor;[B)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .locals 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "secretKey"    # [B

    .prologue
    const/4 v9, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v10, 0x2

    new-array v8, v10, [I

    .line 104
    .local v8, "wh":[I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v10

    const/high16 v11, 0x500000

    if-le v10, v11, :cond_0

    .line 106
    const-string v10, "NSGifDecode"

    const-string v11, "file is too large"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    move-object v6, v9

    .line 142
    :goto_0
    return-object v6

    .line 109
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_0
    if-eqz p1, :cond_4

    :try_start_2
    array-length v10, p1

    if-lez v10, :cond_4

    .line 110
    invoke-static {v5, p1}, Lcom/miui/gallery/util/uil/CryptUtil;->getDecryptCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 112
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x1000

    new-array v1, v10, [B

    .line 117
    .local v1, "buffer":[B
    invoke-static {v4, v1, v8}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->checkGif(Ljava/io/InputStream;[B[I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 140
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, v9

    goto :goto_0

    .line 122
    :cond_1
    const/4 v10, 0x0

    const/16 v11, 0xa

    :try_start_4
    invoke-virtual {v0, v1, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 124
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "ret":I
    if-ltz v7, :cond_2

    .line 125
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 137
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v7    # "ret":I
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v10, "NSGifDecode"

    const-string v11, "load gif data"

    invoke-static {v10, v11, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, v9

    .line 142
    goto :goto_0

    .line 128
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v7    # "ret":I
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 129
    .local v2, "data":[B
    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v11}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create([BII)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 130
    .local v6, "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    if-eqz v6, :cond_3

    .line 132
    const/4 v10, 0x0

    :try_start_7
    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v8, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 140
    :cond_3
    :goto_4
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "data":[B
    .end local v6    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .end local v7    # "ret":I
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 137
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 133
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "data":[B
    .restart local v6    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .restart local v7    # "ret":I
    :catch_2
    move-exception v9

    goto :goto_4

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "data":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .end local v7    # "ret":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static create(Ljava/lang/String;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 71
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 72
    .local v5, "wh":[I
    const/4 v2, 0x0

    .line 74
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    const/16 v6, 0xa

    :try_start_1
    new-array v0, v6, [B

    .line 76
    .local v0, "buf":[B
    invoke-static {v3, v0, v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->checkGif(Ljava/io/InputStream;[B[I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_0

    .line 83
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 97
    .end local v0    # "buf":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 83
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 85
    new-instance v6, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$1;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create(Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    move-result-object v4

    .line 91
    .local v4, "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    if-eqz v4, :cond_1

    .line 93
    const/4 v6, 0x0

    :try_start_2
    aget v6, v5, v6

    const/4 v7, 0x1

    aget v7, v5, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    move-object v2, v3

    .line 97
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 79
    .end local v0    # "buf":[B
    .end local v4    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "NSGifDecode"

    const-string v7, "read gif file"

    invoke-static {v6, v7, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 94
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 83
    .end local v0    # "buf":[B
    .end local v4    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 79
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static create([BII)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$2;-><init>([BII)V

    invoke-static {v0}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->create(Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;)Lcom/miui/gallery/util/gifdecoder/NSGifDecode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mQuit:Z

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mDecodeRunnable:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mDecodeRunnable:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    .line 175
    :cond_0
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 181
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;

    if-nez v5, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;

    invoke-interface {v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;->gen()Lcom/miui/gallery/util/gifdecoder/NSGif;

    move-result-object v4

    .line 188
    .local v4, "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGif;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mNSGif:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$NSGifGen;

    .line 190
    if-eqz v4, :cond_0

    .line 194
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    .line 196
    :try_start_1
    invoke-virtual {v4}, Lcom/miui/gallery/util/gifdecoder/NSGif;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/miui/gallery/util/gifdecoder/NSGif;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/miui/gallery/util/gifdecoder/NSGif;->getFrameCount()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 203
    iget-object v3, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    .line 204
    .local v3, "listener":Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/miui/gallery/util/gifdecoder/NSGif;->decodeFrame(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/util/gifdecoder/NSGif;->writeTo(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    if-eqz v3, :cond_0

    .line 206
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mFrame:Landroid/graphics/Bitmap;

    invoke-interface {v3, v5}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;->onUpdateGifFrame(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 226
    .end local v3    # "listener":Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
    .end local v4    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGif;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NSGifDecode"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "nsgif":Lcom/miui/gallery/util/gifdecoder/NSGif;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v5, "NSGifDecode"

    const-string v6, "OOM on create bitmap"

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v2, 0x0

    .line 213
    .local v2, "index":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/miui/gallery/util/gifdecoder/NSGif;->decodeFrame(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 214
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mQuit:Z

    .line 217
    :cond_4
    iget-boolean v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mQuit:Z

    if-nez v5, :cond_0

    .line 218
    iget-object v6, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 219
    :try_start_4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "NSGifDecode"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v5, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;

    invoke-direct {v5, p0, v4, v2}, Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;-><init>(Lcom/miui/gallery/util/gifdecoder/NSGifDecode;Lcom/miui/gallery/util/gifdecoder/NSGif;I)V

    iput-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mDecodeRunnable:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;

    .line 223
    iget-object v5, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mDecodeRunnable:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$DecodeRunnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    monitor-exit v6

    goto/16 :goto_0

    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public setListener(Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/miui/gallery/util/gifdecoder/NSGifDecode;->mListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    .line 237
    return-void
.end method
