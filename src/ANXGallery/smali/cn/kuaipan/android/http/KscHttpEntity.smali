.class public Lcn/kuaipan/android/http/KscHttpEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "KscHttpEntity.java"


# instance fields
.field private final mDecoder:Lcn/kuaipan/android/http/IKscDecoder;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/IKscDecoder;)V
    .locals 0
    .param p1, "wrapped"    # Lorg/apache/http/HttpEntity;
    .param p2, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 17
    iput-object p2, p0, Lcn/kuaipan/android/http/KscHttpEntity;->mDecoder:Lcn/kuaipan/android/http/IKscDecoder;

    .line 18
    return-void
.end method

.method private static getRepeatable(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/NetCacheManager;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "cache"    # Lcn/kuaipan/android/http/NetCacheManager;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    .end local p0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    new-instance v0, Lcn/kuaipan/android/http/KscBufferedHttpEntity;

    invoke-direct {v0, p0, p1}, Lcn/kuaipan/android/http/KscBufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/NetCacheManager;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getRepeatableEntity(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/IKscDecoder;Lcn/kuaipan/android/http/NetCacheManager;)Lcn/kuaipan/android/http/KscHttpEntity;
    .locals 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "decoder"    # Lcn/kuaipan/android/http/IKscDecoder;
    .param p2, "cache"    # Lcn/kuaipan/android/http/NetCacheManager;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    .line 50
    :cond_0
    invoke-static {p0, p2}, Lcn/kuaipan/android/http/KscHttpEntity;->getRepeatable(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/NetCacheManager;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 51
    .local v0, "repeatable":Lorg/apache/http/HttpEntity;
    new-instance v1, Lcn/kuaipan/android/http/KscHttpEntity;

    invoke-direct {v1, v0, p1}, Lcn/kuaipan/android/http/KscHttpEntity;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/IKscDecoder;)V

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "result":Ljava/io/InputStream;
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpEntity;->mDecoder:Lcn/kuaipan/android/http/IKscDecoder;

    if-nez v1, :cond_0

    .line 24
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcn/kuaipan/android/http/DecoderInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/http/KscHttpEntity;->mDecoder:Lcn/kuaipan/android/http/IKscDecoder;

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/http/DecoderInputStream;-><init>(Ljava/io/InputStream;Lcn/kuaipan/android/http/IKscDecoder;)V

    .restart local v0    # "result":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 39
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 40
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 41
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method
