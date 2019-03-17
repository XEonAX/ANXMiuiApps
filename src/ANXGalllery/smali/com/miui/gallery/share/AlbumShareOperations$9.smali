.class final Lcom/miui/gallery/share/AlbumShareOperations$9;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->acceptInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;
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
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v4

    if-nez v4, :cond_0

    .line 902
    const/16 v4, -0xb

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    .line 983
    :goto_0
    return-object v4

    .line 905
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$resolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-static {v4, v7, v8}, Lcom/miui/gallery/share/AlbumShareOperations;->access$900(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Ljava/util/ArrayList;

    move-result-object v19

    .line 906
    .local v19, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-nez v19, :cond_1

    .line 907
    const/16 v4, -0x3e9

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 910
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 911
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    .line 912
    .local v5, "account":Landroid/accounts/Account;
    if-nez v5, :cond_2

    .line 913
    const/4 v4, -0x4

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 916
    :cond_2
    invoke-static {v9, v5}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v6

    .line 917
    .local v6, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v6, :cond_3

    .line 918
    const/4 v4, -0x3

    invoke-static {v4}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 921
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$AlbumShareOperation;->getAcceptInvitationUrl()Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "acceptUrl":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 923
    .local v3, "encodeParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/NameValuePair;

    .line 924
    .local v18, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8, v6}, Lcom/miui/gallery/share/AlbumShareOperations;->access$200(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    goto :goto_1

    .line 927
    .end local v18    # "pair":Lorg/apache/http/NameValuePair;
    :cond_4
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v16

    .line 928
    .local v16, "json":Lorg/json/JSONObject;
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/cloud/CheckResult;->parseErrorCode(Lorg/json/JSONObject;)I

    move-result v12

    .line 929
    .local v12, "err":I
    if-eqz v12, :cond_5

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$resolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$url:Ljava/lang/String;

    invoke-static {v4, v12, v7}, Lcom/miui/gallery/share/AlbumShareOperations;->deleteInvitationIfInvalid(Landroid/content/ContentResolver;ILjava/lang/String;)V

    .line 931
    invoke-static {v12}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto :goto_0

    .line 934
    :cond_5
    const-string v4, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 935
    .local v11, "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "shareId"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 936
    .local v20, "shareId":Ljava/lang/String;
    const-string v4, "creatorId"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 937
    .local v10, "creatorId":Ljava/lang/String;
    const/4 v13, -0x2

    .line 938
    .local v13, "errorCode":I
    const-wide/16 v14, 0x0

    .line 940
    .local v14, "itemId":J
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 941
    sget-object v21, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    .line 942
    .local v21, "uri":Landroid/net/Uri;
    monitor-enter v21

    .line 943
    :try_start_0
    const-string v4, "albumId"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 944
    const-wide/16 v24, 0x0

    cmp-long v4, v14, v24

    if-nez v4, :cond_7

    .line 945
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 946
    .local v22, "values":Landroid/content/ContentValues;
    const-string v4, "albumStatus"

    const-string v7, "normal"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v4, "albumId"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v4, "creatorId"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$resolver:Landroid/content/ContentResolver;

    const-string v7, "%s=? AND %s=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    const-string/jumbo v24, "shareUrl"

    aput-object v24, v8, v23

    const/16 v23, 0x1

    const-string v24, "albumStatus"

    aput-object v24, v8, v23

    .line 951
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$url:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v8, v23

    const/16 v23, 0x1

    const-string v24, "invited"

    aput-object v24, v8, v23

    .line 949
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 953
    const/4 v13, 0x0

    .line 954
    const-string v4, "albumId"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 969
    :goto_2
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_6
    new-instance v17, Lcom/miui/gallery/share/AlbumShareOperations$9$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/share/AlbumShareOperations$9$1;-><init>(Lcom/miui/gallery/share/AlbumShareOperations$9;)V

    .line 981
    .local v17, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/share/AlbumShareUIManager;->syncUserListForAlbumAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    .line 983
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v4

    goto/16 :goto_0

    .line 957
    .end local v17    # "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    .restart local v21    # "uri":Landroid/net/Uri;
    :cond_7
    :try_start_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 958
    .restart local v22    # "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "sharerInfo"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getSharerInfo()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$resolver:Landroid/content/ContentResolver;

    const-string v7, "%s=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    const-string v24, "albumId"

    aput-object v24, v8, v23

    .line 961
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/16 v23, 0x0

    aput-object v20, v8, v23

    .line 959
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$resolver:Landroid/content/ContentResolver;

    const-string v7, "%s=? AND %s=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v23, 0x0

    const-string/jumbo v24, "shareUrl"

    aput-object v24, v8, v23

    const/16 v23, 0x1

    const-string v24, "albumStatus"

    aput-object v24, v8, v23

    .line 965
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/AlbumShareOperations$9;->val$url:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v8, v23

    const/16 v23, 0x1

    const-string v24, "invited"

    aput-object v24, v8, v23

    .line 964
    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 967
    const/16 v13, -0xa

    goto/16 :goto_2

    .line 969
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$9;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
