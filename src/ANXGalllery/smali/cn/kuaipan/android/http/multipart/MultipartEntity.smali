.class public Lcn/kuaipan/android/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field private static MULTIPART_CHARS:[B


# instance fields
.field private contentConsumed:Z

.field private multipartBoundary:[B

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcn/kuaipan/android/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 97
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    .line 96
    return-void
.end method

.method public constructor <init>([Lcn/kuaipan/android/http/multipart/Part;)V
    .locals 2
    .param p1, "parts"    # [Lcn/kuaipan/android/http/multipart/Part;

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->contentConsumed:Z

    .line 139
    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 145
    return-void
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    .prologue
    .line 103
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 104
    .local v2, "rand":Ljava/util/Random;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-array v0, v3, [B

    .line 106
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 107
    sget-object v3, Lcn/kuaipan/android/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lcn/kuaipan/android/http/multipart/MultipartEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v0
.end method


# virtual methods
.method public appendPart([Lcn/kuaipan/android/http/multipart/Part;)V
    .locals 5
    .param p1, "newParts"    # [Lcn/kuaipan/android/http/multipart/Part;

    .prologue
    const/4 v4, 0x0

    .line 172
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    array-length v1, v1

    if-gtz v1, :cond_3

    .line 176
    :cond_2
    iput-object p1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    .line 181
    .local v0, "oldParts":[Lcn/kuaipan/android/http/multipart/Part;
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcn/kuaipan/android/http/multipart/Part;

    iput-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    .line 182
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    array-length v2, v0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->contentConsumed:Z

    if-eqz v2, :cond_0

    .line 239
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content has been consumed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->contentConsumed:Z

    .line 243
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    iget-object v3, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->multipartBoundary:[B

    invoke-static {v1, v2, v3}, Lcn/kuaipan/android/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/multipart/Part;[B)V

    .line 245
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 246
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuaipan/android/http/multipart/Part;->getLengthOfParts([Lcn/kuaipan/android/http/multipart/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 233
    :goto_0
    return-wide v2

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Multipart"

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->multipartBoundary:[B

    if-nez v1, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.method.multipart.boundary"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "temp":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 162
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    .line 163
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->multipartBoundary:[B

    .line 168
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->multipartBoundary:[B

    return-object v1

    .line 165
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->generateMultipartBoundary()[B

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->multipartBoundary:[B

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcn/kuaipan/android/http/multipart/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 202
    :goto_1
    return v1

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcn/kuaipan/android/http/multipart/MultipartEntity;->parts:[Lcn/kuaipan/android/http/multipart/Part;

    invoke-virtual {p0}, Lcn/kuaipan/android/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/kuaipan/android/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcn/kuaipan/android/http/multipart/Part;[B)V

    .line 210
    return-void
.end method
