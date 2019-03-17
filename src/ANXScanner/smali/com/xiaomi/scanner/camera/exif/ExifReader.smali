.class Lcom/xiaomi/scanner/camera/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ExifReader"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/scanner/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "iRef"    # Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifReader;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    .line 35
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/xiaomi/scanner/camera/exif/ExifData;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/scanner/camera/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifReader;->mInterface:Lcom/xiaomi/scanner/camera/exif/ExifInterface;

    invoke-static {p1, v5}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/xiaomi/scanner/camera/exif/ExifInterface;)Lcom/xiaomi/scanner/camera/exif/ExifParser;

    move-result-object v3

    .line 47
    .local v3, "parser":Lcom/xiaomi/scanner/camera/exif/ExifParser;
    new-instance v2, Lcom/xiaomi/scanner/camera/exif/ExifData;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/xiaomi/scanner/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 48
    .local v2, "exifData":Lcom/xiaomi/scanner/camera/exif/ExifData;
    const/4 v4, 0x0

    .line 50
    .local v4, "tag":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v1

    .line 51
    .local v1, "event":I
    :goto_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 52
    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_1
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v5, Lcom/xiaomi/scanner/camera/exif/IfdData;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getCurrentIfd()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/xiaomi/scanner/camera/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/xiaomi/scanner/camera/exif/ExifData;->addIfdData(Lcom/xiaomi/scanner/camera/exif/IfdData;)V

    goto :goto_1

    .line 57
    :pswitch_1
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->registerForTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/scanner/camera/exif/IfdData;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getTag()Lcom/xiaomi/scanner/camera/exif/ExifTag;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 67
    invoke-virtual {v3, v4}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->readFullTagValue(Lcom/xiaomi/scanner/camera/exif/ExifTag;)V

    .line 69
    :cond_1
    invoke-virtual {v4}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/xiaomi/scanner/camera/exif/ExifData;->getIfdData(I)Lcom/xiaomi/scanner/camera/exif/IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/scanner/camera/exif/IfdData;->setTag(Lcom/xiaomi/scanner/camera/exif/ExifTag;)Lcom/xiaomi/scanner/camera/exif/ExifTag;

    goto :goto_1

    .line 72
    :pswitch_3
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getCompressedImageSize()I

    move-result v5

    new-array v0, v5, [B

    .line 73
    .local v0, "buf":[B
    array-length v5, v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 74
    invoke-virtual {v2, v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 76
    :cond_2
    sget-object v5, Lcom/xiaomi/scanner/camera/exif/ExifReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "Failed to read the compressed thumbnail"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v0    # "buf":[B
    :pswitch_4
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getStripSize()I

    move-result v5

    new-array v0, v5, [B

    .line 81
    .restart local v0    # "buf":[B
    array-length v5, v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 82
    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/ExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Lcom/xiaomi/scanner/camera/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    .line 84
    :cond_3
    sget-object v5, Lcom/xiaomi/scanner/camera/exif/ExifReader;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v6, "Failed to read the strip bytes"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v0    # "buf":[B
    :cond_4
    return-object v2

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
