.class public abstract Lcn/kuaipan/android/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->BOUNDARY_BYTES:[B

    .line 71
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 77
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    .line 83
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->QUOTE_BYTES:[B

    .line 89
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->EXTRA_BYTES:[B

    .line 95
    const-string v0, "Content-Disposition: form-data; name="

    .line 96
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 102
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 108
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->CHARSET_BYTES:[B

    .line 114
    const-string v0, "Content-Transfer-Encoding: "

    .line 115
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLengthOfParts([Lcn/kuaipan/android/http/multipart/Part;[B)J
    .locals 8
    .param p0, "parts"    # [Lcn/kuaipan/android/http/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p0, :cond_0

    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_0
    const-wide/16 v4, 0x0

    .line 421
    .local v4, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 423
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcn/kuaipan/android/http/multipart/Part;->setPartBoundary([B)V

    .line 424
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcn/kuaipan/android/http/multipart/Part;->length()J

    move-result-wide v2

    .line 425
    .local v2, "l":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 426
    const-wide/16 v6, -0x1

    .line 434
    .end local v2    # "l":J
    :goto_1
    return-wide v6

    .line 428
    .restart local v2    # "l":J
    :cond_1
    add-long/2addr v4, v2

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "l":J
    :cond_2
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 431
    array-length v1, p1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 432
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 433
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    move-wide v6, v4

    .line 434
    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/multipart/Part;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcn/kuaipan/android/http/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 386
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcn/kuaipan/android/http/multipart/Part;->setPartBoundary([B)V

    .line 387
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcn/kuaipan/android/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_3
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 390
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 391
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 392
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 393
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->lengthOfData()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 332
    const-wide/16 v2, -0x1

    .line 341
    :goto_0
    return-wide v2

    .line 334
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 335
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 336
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 337
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 338
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 339
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 340
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->lengthOfData()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 314
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 315
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 316
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 319
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 320
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 238
    sget-object v2, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 239
    sget-object v2, Lcn/kuaipan/android/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 240
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 241
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 243
    sget-object v2, Lcn/kuaipan/android/http/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 244
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 247
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 223
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 224
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 226
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 302
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 274
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 275
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    sget-object v0, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 212
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 259
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 260
    sget-object v1, Lcn/kuaipan/android/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 261
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 263
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    .prologue
    .line 187
    iput-object p1, p0, Lcn/kuaipan/android/http/multipart/Part;->boundaryBytes:[B

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
