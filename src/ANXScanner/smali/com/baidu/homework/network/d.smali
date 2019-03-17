.class public final Lcom/baidu/homework/network/d;
.super Lcom/baidu/homework/network/Request;


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private c:Lorg/apache/http/a/a/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/homework/network/Request;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object p2, p0, Lcom/baidu/homework/network/d;->a:[B

    iput-object p3, p0, Lcom/baidu/homework/network/d;->b:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/a/a/h;

    invoke-direct {v0}, Lorg/apache/http/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/baidu/homework/network/d;->c:Lorg/apache/http/a/a/h;

    return-void
.end method


# virtual methods
.method public final getBody()[B
    .locals 6

    iget-object v0, p0, Lcom/baidu/homework/network/d;->a:[B

    iget-object v1, p0, Lcom/baidu/homework/network/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/homework/network/d;->c:Lorg/apache/http/a/a/h;

    new-instance v3, Lorg/apache/http/a/a/a/b;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/a/a/a/b;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/a/a/h;->a(Ljava/lang/String;Lorg/apache/http/a/a/a/c;)V

    invoke-virtual {p0}, Lcom/baidu/homework/network/d;->getParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    iget-object v3, p0, Lcom/baidu/homework/network/d;->c:Lorg/apache/http/a/a/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/apache/http/a/a/a/d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/apache/http/a/a/a/d;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/a/a/h;->a(Ljava/lang/String;Lorg/apache/http/a/a/a/c;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_1
    iget-object v1, p0, Lcom/baidu/homework/network/d;->c:Lorg/apache/http/a/a/h;

    invoke-virtual {v1, v0}, Lorg/apache/http/a/a/h;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/homework/network/d;->c:Lorg/apache/http/a/a/h;

    invoke-virtual {v0}, Lorg/apache/http/a/a/h;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
