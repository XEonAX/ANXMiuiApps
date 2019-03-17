.class public Lcn/kuaipan/android/http/multipart/FilePart;
.super Lcn/kuaipan/android/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private source:Lcn/kuaipan/android/http/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/kuaipan/android/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcn/kuaipan/android/http/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    .end local p3    # "contentType":Ljava/lang/String;
    :cond_0
    if-nez p4, :cond_1

    const-string p4, "ISO-8859-1"

    .end local p4    # "charset":Ljava/lang/String;
    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcn/kuaipan/android/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-nez p2, :cond_2

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    iput-object p2, p0, Lcn/kuaipan/android/http/multipart/FilePart;->source:Lcn/kuaipan/android/http/multipart/PartSource;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    new-instance v0, Lcn/kuaipan/android/http/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lcn/kuaipan/android/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcn/kuaipan/android/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 173
    new-instance v0, Lcn/kuaipan/android/http/multipart/ByteArrayPartSource;

    invoke-direct {v0, p2, p3}, Lcn/kuaipan/android/http/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcn/kuaipan/android/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcn/kuaipan/android/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/FilePart;->source:Lcn/kuaipan/android/http/multipart/PartSource;

    invoke-interface {v0}, Lcn/kuaipan/android/http/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/FilePart;->lengthOfData()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 226
    const-string v3, "FilePart"

    const-string v4, "No data to send."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 230
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 231
    .local v2, "tmp":[B
    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/FilePart;->source:Lcn/kuaipan/android/http/multipart/PartSource;

    invoke-interface {v3}, Lcn/kuaipan/android/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 234
    .local v0, "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_1

    .line 235
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 239
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcn/kuaipan/android/http/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 202
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/FilePart;->source:Lcn/kuaipan/android/http/multipart/PartSource;

    invoke-interface {v1}, Lcn/kuaipan/android/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 204
    sget-object v1, Lcn/kuaipan/android/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 205
    sget-object v1, Lcn/kuaipan/android/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 207
    sget-object v1, Lcn/kuaipan/android/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 209
    :cond_0
    return-void
.end method
