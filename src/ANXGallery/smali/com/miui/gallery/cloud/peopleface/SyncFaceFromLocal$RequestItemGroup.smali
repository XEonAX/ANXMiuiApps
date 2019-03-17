.class Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;
.super Ljava/lang/Object;
.source "SyncFaceFromLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestItemGroup"
.end annotation


# instance fields
.field private mRequestItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    .line 218
    return-void
.end method

.method private doRequest(Lcom/miui/gallery/cloud/RequestOperationBase;Ljava/util/List;)I
    .locals 4
    .param p1, "requestOperation"    # Lcom/miui/gallery/cloud/RequestOperationBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cloud/RequestOperationBase;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;>;"
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    .line 253
    invoke-static {v1}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->access$000(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    invoke-static {v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->access$100(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->this$0:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    invoke-static {v3}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->access$200(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v3

    .line 252
    invoke-static {v1, v2, v3, p2, p1}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public needRequest()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I
    .locals 9
    .param p1, "requestOperation"    # Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;->getLimitCountForOperation()I

    move-result v2

    .line 230
    .local v2, "limitCount":I
    const/4 v4, 0x0

    .line 231
    .local v4, "result":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    iget-object v7, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, "position":I
    iget-object v7, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 234
    .local v6, "size":I
    :cond_0
    if-ge v3, v6, :cond_3

    .line 236
    add-int v0, v3, v2

    .line 237
    .local v0, "endPosition":I
    iget-object v8, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    if-le v0, v6, :cond_1

    move v7, v6

    :goto_0
    invoke-interface {v8, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;>;"
    move v3, v0

    .line 239
    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->doRequest(Lcom/miui/gallery/cloud/RequestOperationBase;Ljava/util/List;)I

    move-result v4

    .line 240
    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    move v5, v4

    .line 247
    .end local v0    # "endPosition":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;>;"
    .end local v3    # "position":I
    .end local v4    # "result":I
    .end local v6    # "size":I
    .local v5, "result":I
    :goto_1
    return v5

    .end local v5    # "result":I
    .restart local v0    # "endPosition":I
    .restart local v3    # "position":I
    .restart local v4    # "result":I
    .restart local v6    # "size":I
    :cond_1
    move v7, v0

    .line 237
    goto :goto_0

    .line 245
    .end local v0    # "endPosition":I
    .end local v3    # "position":I
    .end local v6    # "size":I
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->mRequestItems:Ljava/util/List;

    invoke-direct {p0, p1, v7}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->doRequest(Lcom/miui/gallery/cloud/RequestOperationBase;Ljava/util/List;)I

    move-result v4

    :cond_3
    move v5, v4

    .line 247
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_1
.end method
