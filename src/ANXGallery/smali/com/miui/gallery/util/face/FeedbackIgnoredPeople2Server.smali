.class public Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server;
.super Ljava/lang/Object;
.source "FeedbackIgnoredPeople2Server.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server;->doFeedback(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static doFeedback(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "token"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p3, "peopleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "ignoredPeoples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 65
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getPeopleFeedBackUrl()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "clientOpType"

    const/4 v4, 0x7

    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v8, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "targetPeopleId"

    invoke-virtual {v8, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v7, "ignoredIds":Lorg/json/JSONArray;
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 79
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 82
    .end local v10    # "str":Ljava/lang/String;
    :cond_2
    const-string v2, "rejectPeopleIds"

    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "data"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v9

    .line 87
    .local v9, "result":Lorg/json/JSONObject;
    const-string v3, "FeedbackIgnoredPeople2Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFeedback peopleId is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  json is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v9, :cond_3

    const-string v2, "error"

    .line 88
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static startFeedbackIgnoredPeople2Server(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "destPeople"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "ignoredPeoples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/util/face/FeedbackIgnoredPeople2Server$1;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 59
    return-void
.end method
