.class public Lcn/kuaipan/android/http/KscHttpTransmitter;
.super Ljava/lang/Object;
.source "KscHttpTransmitter.java"


# instance fields
.field private final mCacheManager:Lcn/kuaipan/android/http/NetCacheManager;

.field private final mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "+",
            "Lorg/apache/http/client/HttpClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDownloadSpeedManager:Lcn/kuaipan/android/http/KscSpeedManager;

.field private mRedirector:Lcn/kuaipan/android/http/client/URIRedirector;

.field private final mUploadSpeedManager:Lcn/kuaipan/android/http/KscSpeedManager;

.field private final mUserAgents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x708

    const/4 v1, 0x4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcn/kuaipan/android/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcn/kuaipan/android/http/KscSpeedManager;

    invoke-direct {v0, v2}, Lcn/kuaipan/android/http/KscSpeedManager;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mUploadSpeedManager:Lcn/kuaipan/android/http/KscSpeedManager;

    .line 56
    new-instance v0, Lcn/kuaipan/android/http/KscSpeedManager;

    invoke-direct {v0, v2}, Lcn/kuaipan/android/http/KscSpeedManager;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mDownloadSpeedManager:Lcn/kuaipan/android/http/KscSpeedManager;

    .line 58
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/kuaipan/android/http/NetCacheManager;->getInstance(Landroid/content/Context;Z)Lcn/kuaipan/android/http/NetCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mCacheManager:Lcn/kuaipan/android/http/NetCacheManager;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mClients:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mUserAgents:Landroid/util/SparseArray;

    .line 61
    return-void
.end method

.method private getClient(I)Lorg/apache/http/client/HttpClient;
    .locals 14
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 182
    and-int/lit8 p1, p1, 0x7

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 184
    .local v0, "current":J
    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 186
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;+Lorg/apache/http/client/HttpClient;>;"
    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v0, v10

    const-wide/32 v12, 0x2bf20

    cmp-long v6, v10, v12

    if-lez v6, :cond_5

    .line 187
    :cond_0
    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mUserAgents:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    .local v5, "userAgent":Ljava/lang/String;
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_1

    move v2, v7

    .line 190
    .local v2, "inKss":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 191
    invoke-static {v5}, Lcn/kuaipan/android/http/client/KscHttpClient;->newKssInstance(Ljava/lang/String;)Lcn/kuaipan/android/http/client/KscHttpClient;

    move-result-object v4

    .line 197
    .local v4, "result":Lorg/apache/http/client/HttpClient;
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 198
    iget-object v6, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    .end local v2    # "inKss":Z
    .end local v5    # "userAgent":Ljava/lang/String;
    :goto_2
    return-object v4

    .end local v4    # "result":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "userAgent":Ljava/lang/String;
    :cond_1
    move v2, v8

    .line 189
    goto :goto_0

    .line 193
    .restart local v2    # "inKss":Z
    :cond_2
    and-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_3

    move v9, v7

    :goto_3
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_4

    move v6, v7

    :goto_4
    invoke-static {v5, v9, v6}, Lcn/kuaipan/android/http/client/KscHttpClient;->newInstance(Ljava/lang/String;ZZ)Lcn/kuaipan/android/http/client/KscHttpClient;

    move-result-object v4

    .restart local v4    # "result":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .end local v4    # "result":Lorg/apache/http/client/HttpClient;
    :cond_3
    move v9, v8

    goto :goto_3

    :cond_4
    move v6, v8

    goto :goto_4

    .line 200
    .end local v2    # "inKss":Z
    .end local v5    # "userAgent":Ljava/lang/String;
    :cond_5
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/apache/http/client/HttpClient;

    .restart local v4    # "result":Lorg/apache/http/client/HttpClient;
    goto :goto_2
.end method

.method private getRequest(Ljava/util/List;)[Lorg/apache/http/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpMessage;",
            ">;)[",
            "Lorg/apache/http/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    if-nez p1, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 163
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/HttpRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpMessage;

    .line 165
    .local v0, "message":Lorg/apache/http/HttpMessage;
    instance-of v3, v0, Lorg/apache/http/HttpRequest;

    if-eqz v3, :cond_1

    .line 166
    check-cast v0, Lorg/apache/http/HttpRequest;

    .end local v0    # "message":Lorg/apache/http/HttpMessage;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/http/HttpRequest;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/http/HttpRequest;

    goto :goto_0
.end method

.method private static getRequestHost(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    const/4 v1, 0x0

    .line 214
    if-nez p0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v1

    .line 218
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 219
    .local v0, "uri":Ljava/net/URI;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getResponse(Ljava/util/List;)[Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpMessage;",
            ">;)[",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    if-nez p0, :cond_0

    .line 146
    const/4 v2, 0x0

    .line 155
    :goto_0
    return-object v2

    .line 149
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/HttpResponse;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpMessage;

    .line 151
    .local v0, "message":Lorg/apache/http/HttpMessage;
    instance-of v3, v0, Lorg/apache/http/HttpResponse;

    if-eqz v3, :cond_1

    .line 152
    check-cast v0, Lorg/apache/http/HttpResponse;

    .end local v0    # "message":Lorg/apache/http/HttpMessage;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/http/HttpResponse;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/http/HttpResponse;

    goto :goto_0
.end method

.method private static setMonitor(Lorg/apache/http/HttpMessage;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;)V
    .locals 5
    .param p0, "httpMsg"    # Lorg/apache/http/HttpMessage;
    .param p1, "monitor"    # Lcn/kuaipan/android/http/KscSpeedMonitor;
    .param p2, "listener"    # Lcn/kuaipan/android/http/IKscTransferListener;

    .prologue
    .line 129
    instance-of v3, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 130
    check-cast v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 131
    .local v1, "entityReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 132
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 133
    new-instance v3, Lcn/kuaipan/android/http/ProcessMonitorEntity;

    const/4 v4, 0x1

    invoke-direct {v3, v0, p1, p2, v4}, Lcn/kuaipan/android/http/ProcessMonitorEntity;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 142
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "entityReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    instance-of v3, p0, Lorg/apache/http/HttpResponse;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 136
    check-cast v2, Lorg/apache/http/HttpResponse;

    .line 137
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 138
    .restart local v0    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 139
    new-instance v3, Lcn/kuaipan/android/http/ProcessMonitorEntity;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p1, p2, v4}, Lcn/kuaipan/android/http/ProcessMonitorEntity;-><init>(Lorg/apache/http/HttpEntity;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;Z)V

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcn/kuaipan/android/http/KscHttpRequest;I)Lcn/kuaipan/android/http/KscHttpResponse;
    .locals 28
    .param p1, "request"    # Lcn/kuaipan/android/http/KscHttpRequest;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->getListener()Lcn/kuaipan/android/http/IKscTransferListener;

    move-result-object v22

    .line 74
    .local v22, "listener":Lcn/kuaipan/android/http/IKscTransferListener;
    new-instance v26, Lcn/kuaipan/android/http/KscHttpResponse;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mCacheManager:Lcn/kuaipan/android/http/NetCacheManager;

    move-object/from16 v0, v26

    invoke-direct {v0, v14}, Lcn/kuaipan/android/http/KscHttpResponse;-><init>(Lcn/kuaipan/android/http/NetCacheManager;)V

    .line 75
    .local v26, "resp":Lcn/kuaipan/android/http/KscHttpResponse;
    new-instance v12, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v12}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 76
    .local v12, "context":Lorg/apache/http/protocol/HttpContext;
    const/16 v25, 0x0

    .line 77
    .local v25, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    const/16 v23, 0x0

    .line 79
    .local v23, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/HttpMessage;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v25

    .line 80
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/KscHttpResponse;->setOrigRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 82
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/KscHttpTransmitter;->getClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 83
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    and-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mRedirector:Lcn/kuaipan/android/http/client/URIRedirector;

    if-eqz v14, :cond_0

    .line 84
    const-string v14, "ksc.connect_redirector"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mRedirector:Lcn/kuaipan/android/http/client/URIRedirector;

    invoke-interface {v12, v14, v15}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/kuaipan/android/http/KscHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v14

    invoke-static {v14}, Lcn/kuaipan/android/http/KscHttpTransmitter;->getRequestHost(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v21

    .line 88
    .local v21, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mUploadSpeedManager:Lcn/kuaipan/android/http/KscSpeedManager;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcn/kuaipan/android/http/KscSpeedManager;->getMoniter(Ljava/lang/String;)Lcn/kuaipan/android/http/KscSpeedMonitor;

    move-result-object v5

    .line 89
    .local v5, "uploadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mDownloadSpeedManager:Lcn/kuaipan/android/http/KscSpeedManager;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcn/kuaipan/android/http/KscSpeedManager;->getMoniter(Ljava/lang/String;)Lcn/kuaipan/android/http/KscSpeedMonitor;

    move-result-object v13

    .line 91
    .local v13, "downloadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-static {v0, v5, v1}, Lcn/kuaipan/android/http/KscHttpTransmitter;->setMonitor(Lorg/apache/http/HttpMessage;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 93
    invoke-static {}, Lcn/kuaipan/android/http/KscSpeedManager;->current()J

    move-result-wide v6

    .line 94
    .local v6, "start":J
    move-object/from16 v0, v25

    invoke-interface {v4, v0, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v27

    .line 95
    .local v27, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcn/kuaipan/android/http/KscSpeedManager;->current()J

    move-result-wide v8

    .line 96
    .local v8, "end":J
    const-string v14, "ksc.message_list"

    invoke-interface {v12, v14}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .line 97
    .local v24, "obj":Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v14, v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v14, :cond_2

    .line 99
    :try_start_1
    move-object/from16 v0, v24

    check-cast v0, Ljava/util/List;

    move-object/from16 v23, v0

    .line 100
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 101
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/KscHttpResponse;->setMessage(Ljava/util/List;)V

    .line 104
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/kuaipan/android/http/KscHttpTransmitter;->getRequest(Ljava/util/List;)[Lorg/apache/http/HttpRequest;

    move-result-object v14

    invoke-static {v14}, Lcn/kuaipan/android/utils/HttpUtils;->getRequestSize([Lorg/apache/http/HttpRequest;)J

    move-result-wide v10

    .line 105
    .local v10, "uploadSize":J
    invoke-static/range {v23 .. v23}, Lcn/kuaipan/android/http/KscHttpTransmitter;->getResponse(Ljava/util/List;)[Lorg/apache/http/HttpResponse;

    move-result-object v14

    invoke-static {v14}, Lcn/kuaipan/android/utils/HttpUtils;->getResponseSize([Lorg/apache/http/HttpResponse;)J

    move-result-wide v14

    const/16 v16, 0x0

    .line 106
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/kuaipan/android/utils/HttpUtils;->getResponseSize(Lorg/apache/http/HttpResponse;Z)J

    move-result-wide v16

    add-long v18, v14, v16

    .line 108
    .local v18, "downloadSize":J
    invoke-virtual/range {v5 .. v11}, Lcn/kuaipan/android/http/KscSpeedMonitor;->recode(JJJ)V

    move-wide v14, v6

    move-wide/from16 v16, v8

    .line 109
    invoke-virtual/range {v13 .. v19}, Lcn/kuaipan/android/http/KscSpeedMonitor;->recode(JJJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .end local v10    # "uploadSize":J
    .end local v18    # "downloadSize":J
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lcn/kuaipan/android/http/KscHttpTransmitter;->setMonitor(Lorg/apache/http/HttpMessage;Lcn/kuaipan/android/http/KscSpeedMonitor;Lcn/kuaipan/android/http/IKscTransferListener;)V

    .line 116
    and-int/lit8 v14, p2, 0x4

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v14}, Lcn/kuaipan/android/http/KscHttpResponse;->handleResponse(Lcn/kuaipan/android/http/KscHttpRequest;Lorg/apache/http/HttpResponse;Z)V

    .line 124
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "uploadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v13    # "downloadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .end local v21    # "host":Ljava/lang/String;
    .end local v24    # "obj":Ljava/lang/Object;
    .end local v27    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    return-object v26

    .line 110
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "uploadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v13    # "downloadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .restart local v21    # "host":Ljava/lang/String;
    .restart local v24    # "obj":Ljava/lang/Object;
    .restart local v27    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v20

    .line 111
    .local v20, "e":Ljava/lang/Exception;
    const-string v14, "KscHttpTransmitter"

    const-string v15, "Failed get requestList from context."

    move-object/from16 v0, v20

    invoke-static {v14, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 118
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "uploadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v13    # "downloadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "host":Ljava/lang/String;
    .end local v24    # "obj":Ljava/lang/Object;
    .end local v27    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v20

    .line 119
    .local v20, "e":Ljava/lang/Throwable;
    invoke-static/range {v20 .. v20}, Lcn/kuaipan/android/exception/ErrorHelper;->handleInterruptException(Ljava/lang/Throwable;)V

    .line 120
    const-string v14, "KscHttpTransmitter"

    const-string v15, "Meet exception when execute a KscHttpRequest."

    move-object/from16 v0, v20

    invoke-static {v14, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/http/KscHttpResponse;->setError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 116
    .end local v20    # "e":Ljava/lang/Throwable;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "uploadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v13    # "downloadMonitor":Lcn/kuaipan/android/http/KscSpeedMonitor;
    .restart local v21    # "host":Ljava/lang/String;
    .restart local v24    # "obj":Ljava/lang/Object;
    .restart local v27    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public setUserAgent(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mUserAgents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcn/kuaipan/android/http/KscHttpTransmitter;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 176
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;+Lorg/apache/http/client/HttpClient;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method
