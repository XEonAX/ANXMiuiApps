.class Lcom/kingsoft/iciba/powerwordocrjar/i;
.super Ljava/lang/Thread;


# instance fields
.field a:Lorg/apache/http/client/HttpClient;

.field b:Lcom/kingsoft/iciba/powerwordocrjar/j;

.field c:Z

.field d:I

.field final synthetic e:Lcom/kingsoft/iciba/powerwordocrjar/h;


# direct methods
.method public constructor <init>(Lcom/kingsoft/iciba/powerwordocrjar/h;)V
    .locals 4

    const/16 v3, 0x1388

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->a:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingsoft/iciba/powerwordocrjar/j;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p2, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->d:I

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iput-boolean p3, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->c:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->b(Lcom/kingsoft/iciba/powerwordocrjar/h;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/j;

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->a:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    iget-object v3, v3, Lcom/kingsoft/iciba/powerwordocrjar/j;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/j;->d:Lorg/apache/http/HttpResponse;

    const-string v0, ""

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    iget-object v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/j;->d:Lorg/apache/http/HttpResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v0, 0x0

    array-length v3, v1

    if-lez v3, :cond_1

    const-string v3, "Content-Encoding"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    iget-object v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/j;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/k;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    invoke-static {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    iget-object v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/j;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/k;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->d:I

    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    invoke-virtual {v3}, Lcom/kingsoft/iciba/powerwordocrjar/j;->a()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    invoke-virtual {v0}, Lcom/kingsoft/iciba/powerwordocrjar/j;->a()I

    move-result v0

    :cond_4
    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    iget-object v4, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    iget-boolean v5, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->c:Z

    invoke-static {v3, v4, v1, v0, v5}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/String;IZ)V
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    invoke-static {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;)V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    invoke-static {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->e:Lcom/kingsoft/iciba/powerwordocrjar/h;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/i;->b:Lcom/kingsoft/iciba/powerwordocrjar/j;

    invoke-static {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/h;Lcom/kingsoft/iciba/powerwordocrjar/j;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :cond_5
    return-void
.end method
