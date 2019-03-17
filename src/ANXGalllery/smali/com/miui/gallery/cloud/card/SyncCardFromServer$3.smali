.class Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;
.super Ljava/lang/Object;
.source "SyncCardFromServer.java"

# interfaces
.implements Lcom/miui/gallery/cloud/card/network/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/card/SyncCardFromServer;->getOperationCards(Ljava/lang/String;Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/cloud/card/network/ResponseCallback",
        "<",
        "Lcom/miui/gallery/cloud/card/model/CardInfoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/card/SyncCardFromServer;

.field final synthetic val$callback:Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/card/SyncCardFromServer;Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/card/SyncCardFromServer;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->this$0:Lcom/miui/gallery/cloud/card/SyncCardFromServer;

    iput-object p2, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->val$callback:Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;

    iput-object p3, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->val$serverId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/miui/gallery/cloud/card/model/CardInfoList;)V
    .locals 6
    .param p1, "cardInfoList"    # Lcom/miui/gallery/cloud/card/model/CardInfoList;

    .prologue
    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/card/model/CardInfoList;->getGalleryCards()Ljava/util/ArrayList;

    move-result-object v2

    .line 125
    .local v2, "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/card/model/CardInfo;

    .line 127
    .local v1, "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/gallery/card/CardManager;->createOperationCardFromServer(Lcom/miui/gallery/cloud/card/model/CardInfo;)Lcom/miui/gallery/card/Card;

    move-result-object v0

    .line 128
    .local v0, "card":Lcom/miui/gallery/card/Card;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->val$callback:Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->val$serverId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gallery/card/Card;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->val$callback:Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;

    invoke-interface {v4, v0}, Lcom/miui/gallery/cloud/card/SyncCardFromServer$OperationCardCallback;->onOperationCardGet(Lcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 134
    .end local v0    # "card":Lcom/miui/gallery/card/Card;
    .end local v1    # "cardInfo":Lcom/miui/gallery/cloud/card/model/CardInfo;
    .end local v2    # "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/card/model/CardInfo;>;"
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lcom/miui/gallery/cloud/card/model/CardInfoList;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/card/SyncCardFromServer$3;->onResponse(Lcom/miui/gallery/cloud/card/model/CardInfoList;)V

    return-void
.end method

.method public onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 138
    return-void
.end method
