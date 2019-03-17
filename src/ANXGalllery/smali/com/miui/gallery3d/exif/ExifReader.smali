.class Lcom/miui/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# instance fields
.field private final mInterface:Lcom/miui/gallery3d/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/miui/gallery3d/exif/ExifInterface;)V
    .locals 0
    .param p1, "iRef"    # Lcom/miui/gallery3d/exif/ExifInterface;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifReader;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    .line 35
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/miui/gallery3d/exif/ExifData;
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v6, p0, Lcom/miui/gallery3d/exif/ExifReader;->mInterface:Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-static {p1, v6}, Lcom/miui/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/miui/gallery3d/exif/ExifInterface;)Lcom/miui/gallery3d/exif/ExifParser;

    move-result-object v4

    .line 47
    .local v4, "parser":Lcom/miui/gallery3d/exif/ExifParser;
    new-instance v2, Lcom/miui/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/miui/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 48
    .local v2, "exifData":Lcom/miui/gallery3d/exif/ExifData;
    const/4 v5, 0x0

    .line 50
    .local v5, "tag":Lcom/miui/gallery3d/exif/ExifTag;
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v1

    .line 51
    .local v1, "event":I
    :goto_0
    const/4 v6, 0x5

    if-eq v1, v6, :cond_5

    .line 52
    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_1
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v6, Lcom/miui/gallery3d/exif/IfdData;

    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/miui/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/miui/gallery3d/exif/ExifData;->addIfdData(Lcom/miui/gallery3d/exif/IfdData;)V

    goto :goto_1

    .line 57
    :pswitch_1
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    invoke-virtual {v4, v5}, Lcom/miui/gallery3d/exif/ExifParser;->registerForTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getTag()Lcom/miui/gallery3d/exif/ExifTag;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    .line 67
    invoke-virtual {v4, v5}, Lcom/miui/gallery3d/exif/ExifParser;->readFullTagValue(Lcom/miui/gallery3d/exif/ExifTag;)V

    .line 69
    :cond_1
    invoke-virtual {v5}, Lcom/miui/gallery3d/exif/ExifTag;->getIfd()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/miui/gallery3d/exif/ExifData;->getIfdData(I)Lcom/miui/gallery3d/exif/IfdData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/miui/gallery3d/exif/IfdData;->setTag(Lcom/miui/gallery3d/exif/ExifTag;)Lcom/miui/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 72
    :pswitch_3
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v3

    .line 73
    .local v3, "len":I
    if-lez v3, :cond_3

    .line 74
    new-array v0, v3, [B

    .line 75
    .local v0, "buf":[B
    array-length v6, v0

    invoke-virtual {v4, v0}, Lcom/miui/gallery3d/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 76
    invoke-virtual {v2, v0}, Lcom/miui/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 78
    :cond_2
    const-string v6, "ExifReader"

    const-string v7, "Failed to read the compressed thumbnail"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v0    # "buf":[B
    :cond_3
    const-string v6, "ExifReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compressedImageSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v3    # "len":I
    :pswitch_4
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v6

    new-array v0, v6, [B

    .line 86
    .restart local v0    # "buf":[B
    array-length v6, v0

    invoke-virtual {v4, v0}, Lcom/miui/gallery3d/exif/ExifParser;->read([B)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 87
    invoke-virtual {v4}, Lcom/miui/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v6

    invoke-virtual {v2, v6, v0}, Lcom/miui/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto/16 :goto_1

    .line 89
    :cond_4
    const-string v6, "ExifReader"

    const-string v7, "Failed to read the strip bytes"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 95
    .end local v0    # "buf":[B
    :cond_5
    return-object v2

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
