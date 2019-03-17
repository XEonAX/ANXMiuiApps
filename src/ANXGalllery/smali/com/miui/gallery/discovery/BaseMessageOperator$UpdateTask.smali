.class public Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;
.super Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;
.source "BaseMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/BaseMessageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field mContentValues:Landroid/content/ContentValues;

.field mMessage:Lcom/miui/gallery/model/DiscoveryMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/miui/gallery/model/DiscoveryMessage;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;-><init>(Landroid/content/Context;)V

    .line 130
    iput-object p2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    .line 131
    iput-object p3, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    .line 132
    return-void
.end method


# virtual methods
.method protected execute(Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/discovery/BaseMessageOperator;->sDiscoveryMessageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->getWhereArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "ret":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic execute(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 123
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->execute(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method protected getWhereArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 140
    iget-object v1, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    if-nez v1, :cond_0

    .line 141
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 145
    .local v0, "whereArgs":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 143
    .end local v0    # "whereArgs":[Ljava/lang/String;
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v1}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .restart local v0    # "whereArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method protected getWhereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "_id = ?"

    return-object v0
.end method

.method protected prepareData()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "receiveTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getReceiveTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "updateTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "extraData"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "triggerTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "isConsumed"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->isConsumed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "expireTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getExpireTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "actionUri"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getActionUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "messageSource"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "priority"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "subTitle"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "message"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method protected bridge synthetic prepareData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->prepareData()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
