.class Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/DispatcherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkLoader"
.end annotation


# instance fields
.field final synthetic J:Lcom/miui/internal/analytics/DispatcherHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/analytics/DispatcherHelper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;->J:Lcom/miui/internal/analytics/DispatcherHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/DispatcherHelper;Lcom/miui/internal/analytics/DispatcherHelper$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;-><init>(Lcom/miui/internal/analytics/DispatcherHelper;)V

    return-void
.end method


# virtual methods
.method public d()Lorg/json/JSONArray;
    .locals 7

    .line 62
    nop

    .line 63
    nop

    .line 65
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://app.miui.com/mobile/analytics2.json"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    nop

    .line 67
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 69
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 72
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-static {v2}, Lmiui/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_3

    .line 76
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_0
    if-eqz v2, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "DispatcherHelper"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    :goto_0
    return-object v4

    .line 84
    :catch_1
    move-exception v3

    goto :goto_3

    .line 82
    :catch_2
    move-exception v3

    goto :goto_4

    .line 80
    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 87
    :cond_2
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_7

    .line 84
    :catch_4
    move-exception v3

    move-object v2, v0

    goto :goto_3

    .line 82
    :catch_5
    move-exception v3

    move-object v2, v0

    goto :goto_4

    .line 80
    :catch_6
    move-exception v3

    move-object v2, v0

    goto :goto_5

    .line 87
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_4
    if-eqz v2, :cond_8

    .line 92
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 95
    :goto_2
    goto :goto_6

    .line 93
    :catch_7
    move-exception v1

    .line 94
    const-string v2, "DispatcherHelper"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_7

    .line 84
    :catch_8
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 85
    :goto_3
    :try_start_5
    const-string v4, "DispatcherHelper"

    const-string v5, "JSONException catched when load configuration from server"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 87
    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_5
    if-eqz v2, :cond_8

    .line 92
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    .line 82
    :catch_9
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 83
    :goto_4
    :try_start_7
    const-string v4, "DispatcherHelper"

    const-string v5, "IOException catched when load configuration from server"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 87
    if-eqz v1, :cond_6

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_6
    if-eqz v2, :cond_8

    .line 92
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_2

    .line 80
    :catch_a
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 81
    :goto_5
    :try_start_9
    const-string v4, "DispatcherHelper"

    const-string v5, "MalformedURLException catched when load configuration from server"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 87
    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_7
    if-eqz v2, :cond_8

    .line 92
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    .line 98
    :cond_8
    :goto_6
    return-object v0

    .line 87
    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v1, :cond_9

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_9
    if-eqz v2, :cond_a

    .line 92
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 95
    goto :goto_8

    .line 93
    :catch_b
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DispatcherHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_a
    :goto_8
    throw v0
.end method
