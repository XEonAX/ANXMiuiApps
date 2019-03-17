.class Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;
.super Landroid/os/AsyncTask;
.source "OriginUrlRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->start([Landroid/net/Uri;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

.field final synthetic val$originRequestResults:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iput-object p2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->val$originRequestResults:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 19
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v15}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$000(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 57
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 103
    :goto_0
    return-object v15

    .line 60
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v15

    if-nez v15, :cond_2

    .line 61
    :cond_1
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccountInfo()Lcom/miui/gallery/cloud/AccountCache$AccountInfo;

    move-result-object v5

    .line 65
    .local v5, "info":Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
    if-nez v5, :cond_3

    .line 66
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_0

    .line 69
    :cond_3
    new-instance v14, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;

    invoke-direct {v14}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;-><init>()V

    .line 70
    .local v14, "uriAdapter":Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;
    new-instance v6, Lcom/miui/gallery/cloud/CloudGalleryOwnerRequestor;

    iget-object v15, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Lcom/miui/gallery/cloud/CloudGalleryOwnerRequestor;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V

    .line 71
    .local v6, "ownerRequestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    new-instance v11, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;

    iget-object v15, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V

    .line 72
    .local v11, "sharerRequestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    new-instance v7, Lcom/miui/gallery/cloud/CloudGalleryOwnerRequestor;

    iget-object v15, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Lcom/miui/gallery/cloud/CloudGalleryOwnerRequestor;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V

    .line 73
    .local v7, "ownerVideoRequestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    new-instance v12, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;

    iget-object v15, v5, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/cloud/CloudUrlProvider;->getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/miui/gallery/cloud/CloudGallerySharerRequestor;-><init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/CloudUrlProvider;)V

    .line 75
    .local v12, "sharerVideoRequestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v15}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$000(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;

    .line 76
    .local v13, "task":Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 77
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_0

    .line 79
    :cond_5
    iget v15, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mMediaType:I

    if-eqz v15, :cond_4

    .line 82
    iget-object v15, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;->getDBItemForUri(Landroid/net/Uri;)Lcom/miui/gallery/data/DBImage;

    move-result-object v3

    .line 83
    .local v3, "dbImage":Lcom/miui/gallery/data/DBImage;
    new-instance v8, Lcom/miui/gallery/cloud/RequestCloudItem;

    sget-object v15, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v15}, Lcom/miui/gallery/sdk/download/DownloadType;->getPriority()I

    move-result v15

    invoke-direct {v8, v15, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 84
    .local v8, "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    const/4 v9, 0x0

    .line 86
    .local v9, "requestResult":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 87
    iget v15, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mMediaType:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    move-object v10, v11

    .line 92
    .local v10, "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    :goto_2
    :try_start_0
    invoke-virtual {v10, v8}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->requestDownload(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 93
    if-eqz v9, :cond_6

    const-string v15, "result"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "ok"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 94
    const-string v15, "data"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 95
    .local v2, "data":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->val$originRequestResults:Ljava/util/ArrayList;

    iget v0, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;

    iget v0, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mOriginHeight:I

    move/from16 v17, v0

    iget v0, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mOriginWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v2, v0, v1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->setOriginDownloadInfo(Lorg/json/JSONObject;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2    # "data":Lorg/json/JSONObject;
    :cond_6
    :goto_3
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$000(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v10    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    :cond_7
    move-object v10, v12

    .line 87
    goto :goto_2

    .line 89
    :cond_8
    iget v15, v13, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;->mMediaType:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    move-object v10, v6

    .restart local v10    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    :goto_4
    goto :goto_2

    .end local v10    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    :cond_9
    move-object v10, v7

    goto :goto_4

    .line 97
    .restart local v10    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Ljava/lang/Exception;
    const-string v15, "OriginUrlRequestor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "request origin download info error"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 103
    .end local v3    # "dbImage":Lcom/miui/gallery/data/DBImage;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    .end local v9    # "requestResult":Lorg/json/JSONObject;
    .end local v10    # "requestor":Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
    .end local v13    # "task":Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;
    :cond_a
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;->onCancelled()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->val$originRequestResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;->onEnd(Ljava/util/ArrayList;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->this$0:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-static {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;->onUpdate(I)V

    .line 118
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
