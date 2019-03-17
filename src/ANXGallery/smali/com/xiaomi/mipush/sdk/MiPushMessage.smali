.class public Lcom/xiaomi/mipush/sdk/MiPushMessage;
.super Ljava/lang/Object;
.source "MiPushMessage.java"

# interfaces
.implements Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private alias:Ljava/lang/String;

.field private arrived:Z

.field private category:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isNotified:Z

.field private messageId:Ljava/lang/String;

.field private messageType:I

.field private notifyId:I

.field private notifyType:I

.field private passThrough:I

.field private title:Ljava/lang/String;

.field private topic:Ljava/lang/String;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->arrived:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->extra:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->extra:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->notifyId:I

    return v0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->notifyType:I

    return v0
.end method

.method public getPassThrough()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->passThrough:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isArrivedMessage()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->arrived:Z

    return v0
.end method

.method public isNotified()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->alias:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setArrivedMessage(Z)V
    .locals 0
    .param p1, "arrived"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->arrived:Z

    .line 81
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->category:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->content:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->description:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 196
    :cond_0
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->messageId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->messageType:I

    .line 93
    return-void
.end method

.method public setNotified(Z)V
    .locals 0
    .param p1, "isNotified"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified:Z

    .line 149
    return-void
.end method

.method public setNotifyId(I)V
    .locals 0
    .param p1, "notifyId"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->notifyId:I

    .line 141
    return-void
.end method

.method public setNotifyType(I)V
    .locals 0
    .param p1, "notifyType"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->notifyType:I

    .line 133
    return-void
.end method

.method public setPassThrough(I)V
    .locals 0
    .param p1, "passThrough"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->passThrough:I

    .line 184
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->title:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->topic:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->userAccount:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageId={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},passThrough={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->passThrough:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},alias={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},topic={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},userAccount={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},content={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},description={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},title={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},isNotified={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},notifyId={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},notifyType={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->notifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, category={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, extra={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
