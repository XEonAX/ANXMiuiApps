.class final Lcom/miui/gallery/cloud/AlbumShareOperations$1;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/AlbumShareOperations;->requestUrlForBarcode(Ljava/lang/String;)Lcom/miui/gallery/util/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/util/AsyncResult",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$1;->val$serverId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/util/AsyncResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$1;->val$serverId:Ljava/lang/String;

    const-string v5, "barcodeData"

    const-string v6, "barcodeDataDeadline"

    const v14, 0x2932e00

    invoke-static {v2, v5, v6, v14}, Lcom/miui/gallery/cloud/AlbumShareOperations;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "cache":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const/4 v2, 0x0

    invoke-static {v2, v7}, Lcom/miui/gallery/util/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    .line 172
    :goto_0
    return-object v2

    .line 132
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    const/16 v2, -0xb

    invoke-static {v2}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    .line 137
    .local v8, "context":Landroid/content/Context;
    invoke-static {v8}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    .line 138
    .local v3, "account":Landroid/accounts/Account;
    if-nez v3, :cond_2

    .line 139
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {v8, v3}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v4

    .line 143
    .local v4, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v4, :cond_3

    .line 144
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/AlbumShareOperations;->myName()Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "userName":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    const/4 v2, -0x5

    invoke-static {v2}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 152
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$1;->val$serverId:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getBarcodeShareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-string/jumbo v2, "userName"

    invoke-static {v1, v2, v13, v4}, Lcom/miui/gallery/cloud/AlbumShareOperations;->access$100(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 155
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v11

    .line 157
    .local v11, "json":Lorg/json/JSONObject;
    invoke-static {v11}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v10

    .line 158
    .local v10, "err":I
    if-eqz v10, :cond_5

    .line 159
    invoke-static {v10}, Lcom/miui/gallery/util/AsyncResult;->create(I)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_5
    const-string v2, "data"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 163
    .local v9, "data":Lorg/json/JSONObject;
    const-string/jumbo v2, "url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "str":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 165
    iget-object v2, p0, Lcom/miui/gallery/cloud/AlbumShareOperations$1;->val$serverId:Ljava/lang/String;

    const-string v5, "barcodeData"

    const-string v6, "barcodeDataDeadline"

    const v14, 0x2932e00

    invoke-static {v2, v5, v6, v12, v14}, Lcom/miui/gallery/cloud/AlbumShareOperations;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    :cond_6
    const-string v2, "AlbumShareOperations"

    const-string v5, "request barcode url success."

    invoke-static {v2, v5}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    invoke-static {v2, v12}, Lcom/miui/gallery/util/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/util/AsyncResult;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AlbumShareOperations$1;->call()Lcom/miui/gallery/util/AsyncResult;

    move-result-object v0

    return-object v0
.end method
