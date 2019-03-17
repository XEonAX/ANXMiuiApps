.class public Lcom/miui/gallery/model/DiscoveryMessage;
.super Ljava/lang/Object;
.source "DiscoveryMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;,
        Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    }
.end annotation


# instance fields
.field private isConsumed:Z

.field private mActionUri:Ljava/lang/String;

.field private mExpireTime:J

.field private mMessage:Ljava/lang/String;

.field private mMessageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

.field private mMessageId:J

.field private mMessageSource:Ljava/lang/String;

.field private mPriority:I

.field private mReceiveTime:J

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTriggerTime:J

.field private mType:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)V
    .locals 6
    .param p1, "builder"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    const-wide/16 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$000(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageId:J

    .line 28
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$100(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessage:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$200(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mTitle:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$300(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mSubTitle:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$400(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mType:I

    .line 32
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$500(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mPriority:I

    .line 33
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$600(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 34
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$600(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mReceiveTime:J

    .line 38
    :goto_0
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$700(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 39
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$700(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mUpdateTime:J

    .line 43
    :goto_1
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$700(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 44
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$800(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mTriggerTime:J

    .line 48
    :goto_2
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$700(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 49
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$900(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mExpireTime:J

    .line 53
    :goto_3
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$1000(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->isConsumed:Z

    .line 54
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$1100(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mActionUri:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$1200(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageSource:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->access$1300(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    .line 57
    return-void

    .line 36
    :cond_0
    iput-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mReceiveTime:J

    goto :goto_0

    .line 41
    :cond_1
    iput-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mUpdateTime:J

    goto :goto_1

    .line 46
    :cond_2
    iput-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mTriggerTime:J

    goto :goto_2

    .line 51
    :cond_3
    iput-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mExpireTime:J

    goto :goto_3
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/model/DiscoveryMessage$Builder;Lcom/miui/gallery/model/DiscoveryMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/model/DiscoveryMessage$1;

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/miui/gallery/model/DiscoveryMessage;-><init>(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mActionUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mExpireTime:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageId:J

    return-wide v0
.end method

.method public getMessageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mPriority:I

    return v0
.end method

.method public getReceiveTime()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mReceiveTime:J

    return-wide v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mTriggerTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mType:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mUpdateTime:J

    return-wide v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/miui/gallery/model/DiscoveryMessage;->isConsumed:Z

    return v0
.end method

.method public setConsumed(Z)V
    .locals 0
    .param p1, "consumed"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/gallery/model/DiscoveryMessage;->isConsumed:Z

    .line 101
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessage:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMessageDetail(Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;)V
    .locals 0
    .param p1, "messageDetail"    # Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage;->mMessageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    .line 113
    return-void
.end method
