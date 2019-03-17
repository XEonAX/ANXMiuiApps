.class public Lcom/miui/gallery/model/DiscoveryMessage$Builder;
.super Ljava/lang/Object;
.source "DiscoveryMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/DiscoveryMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actionUri:Ljava/lang/String;

.field private expireTime:J

.field private isConsumed:Z

.field private message:Ljava/lang/String;

.field private messageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

.field private messageId:J

.field private messageSource:Ljava/lang/String;

.field private priority:I

.field private receiveTime:J

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private triggerTime:J

.field private type:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageId:J

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->message:Ljava/lang/String;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->title:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->subTitle:Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->type:I

    .line 178
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->priority:I

    .line 179
    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->receiveTime:J

    .line 180
    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->updateTime:J

    .line 181
    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->triggerTime:J

    .line 182
    iput-wide v2, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->expireTime:J

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->isConsumed:Z

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->actionUri:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageSource:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->isConsumed:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->actionUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageDetail:Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->type:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->priority:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->receiveTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->updateTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->triggerTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/model/DiscoveryMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/model/DiscoveryMessage$Builder;

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->expireTime:J

    return-wide v0
.end method


# virtual methods
.method public actionUri(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "actionUri"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->actionUri:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public build()Lcom/miui/gallery/model/DiscoveryMessage;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lcom/miui/gallery/model/DiscoveryMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/model/DiscoveryMessage;-><init>(Lcom/miui/gallery/model/DiscoveryMessage$Builder;Lcom/miui/gallery/model/DiscoveryMessage$1;)V

    return-object v0
.end method

.method public consumed(Z)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "consumed"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->isConsumed:Z

    .line 240
    return-object p0
.end method

.method public expireTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 234
    iput-wide p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->expireTime:J

    .line 235
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->message:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public messageId(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 1
    .param p1, "messageId"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageId:J

    .line 190
    return-object p0
.end method

.method public messageSource(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "messageSource"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->messageSource:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public priority(I)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->priority:I

    .line 215
    return-object p0
.end method

.method public receiveTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 1
    .param p1, "receiveTime"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->receiveTime:J

    .line 220
    return-object p0
.end method

.method public subTitle(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->subTitle:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->title:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public triggerTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 1
    .param p1, "triggerTime"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->triggerTime:J

    .line 230
    return-object p0
.end method

.method public type(I)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->type:I

    .line 210
    return-object p0
.end method

.method public updateTime(J)Lcom/miui/gallery/model/DiscoveryMessage$Builder;
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/miui/gallery/model/DiscoveryMessage$Builder;->updateTime:J

    .line 225
    return-object p0
.end method
