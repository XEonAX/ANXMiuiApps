.class final Lcom/kingsoft/iciba/a/i;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Lcom/kingsoft/iciba/a/h;

.field private synthetic c:Lcom/kingsoft/iciba/a/e;


# direct methods
.method public constructor <init>(Lcom/kingsoft/iciba/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->c(Lcom/kingsoft/iciba/a/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/a/h;

    iput-object v0, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    iget-boolean v0, v0, Lcom/kingsoft/iciba/a/h;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->b(Lcom/kingsoft/iciba/a/e;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip,deflate"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    iget-object v3, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    iget-object v3, v3, Lcom/kingsoft/iciba/a/h;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "word="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Lcom/kingsoft/iciba/a/h;->b:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->a:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Encoding"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    iget-object v2, v2, Lcom/kingsoft/iciba/a/h;->b:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    iget-object v3, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    invoke-static {v2, v0, v3}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Lcom/kingsoft/iciba/a/h;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Lcom/kingsoft/iciba/a/h;)V

    const-string v2, "NetSearchManage"

    const-string v3, "Search net word IOException failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :cond_2
    :try_start_9
    iget-object v0, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    iget-object v0, v0, Lcom/kingsoft/iciba/a/h;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/kingsoft/iciba/a/e;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/kingsoft/iciba/a/i;->c:Lcom/kingsoft/iciba/a/e;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/iciba/a/i;->b:Lcom/kingsoft/iciba/a/h;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/iciba/a/e;->a(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Lcom/kingsoft/iciba/a/h;)V

    const-string v2, "NetSearchManage"

    const-string v3, "Search net word failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :cond_3
    return-void
.end method
