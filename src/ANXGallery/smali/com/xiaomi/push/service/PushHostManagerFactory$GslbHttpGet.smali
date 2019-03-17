.class Lcom/xiaomi/push/service/PushHostManagerFactory$GslbHttpGet;
.super Ljava/lang/Object;
.source "PushHostManagerFactory.java"

# interfaces
.implements Lcom/xiaomi/network/HostManager$HttpGet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/PushHostManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GslbHttpGet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    .line 58
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 59
    .local v9, "uri":Landroid/net/Uri$Builder;
    const-string v10, "sdkver"

    const/16 v11, 0x26

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    const-string v10, "osver"

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    const-string v10, "os"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    const-string v10, "mi"

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getMIUIType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "newUrl":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fetch bucket from : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 66
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "host":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v10

    if-ne v10, v13, :cond_0

    const/16 v5, 0x50

    .line 70
    .local v5, "port":I
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 72
    .local v6, "now":J
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/SystemUtils;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/xiaomi/channel/commonutils/network/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "ret":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 74
    .local v0, "cost":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    long-to-int v11, v0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/xiaomi/stats/StatsHelper;->statsGslb(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object v8

    .line 67
    .end local v0    # "cost":J
    .end local v5    # "port":I
    .end local v6    # "now":J
    .end local v8    # "ret":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v5

    goto :goto_0

    .line 76
    .restart local v5    # "port":I
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13, v2}, Lcom/xiaomi/stats/StatsHelper;->statsGslb(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 78
    throw v2
.end method
