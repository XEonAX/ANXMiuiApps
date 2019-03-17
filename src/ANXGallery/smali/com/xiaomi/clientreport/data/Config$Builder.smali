.class public Lcom/xiaomi/clientreport/data/Config$Builder;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/clientreport/data/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAESKey:Ljava/lang/String;

.field private mEventEncrypted:I

.field private mEventUploadFrequency:J

.field private mEventUploadSwitchOpen:I

.field private mMaxFileLength:J

.field private mPerfUploadFrequency:J

.field private mPerfUploadSwitchOpen:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventEncrypted:I

    .line 140
    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadSwitchOpen:I

    .line 141
    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadSwitchOpen:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mAESKey:Ljava/lang/String;

    .line 145
    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mMaxFileLength:J

    .line 146
    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadFrequency:J

    .line 147
    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadFrequency:J

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/clientreport/data/Config$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventEncrypted:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaomi/clientreport/data/Config$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mAESKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/clientreport/data/Config$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mMaxFileLength:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/xiaomi/clientreport/data/Config$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadFrequency:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/xiaomi/clientreport/data/Config$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadFrequency:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/xiaomi/clientreport/data/Config$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadSwitchOpen:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaomi/clientreport/data/Config$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    .line 138
    iget v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadSwitchOpen:I

    return v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    new-instance v0, Lcom/xiaomi/clientreport/data/Config;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/xiaomi/clientreport/data/Config;-><init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config$Builder;Lcom/xiaomi/clientreport/data/Config$1;)V

    return-object v0
.end method

.method public setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 0
    .param p1, "mAESKey"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mAESKey:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1
    .param p1, "mEventEncrypted"    # Z

    .prologue
    .line 150
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventEncrypted:I

    .line 151
    return-object p0

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1
    .param p1, "mEventUploadFrequency"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadFrequency:J

    .line 176
    return-object p0
.end method

.method public setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1
    .param p1, "mEventUploadSwitchOpen"    # Z

    .prologue
    .line 165
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mEventUploadSwitchOpen:I

    .line 166
    return-object p0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxFileLength(J)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1
    .param p1, "mMaxFileLength"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mMaxFileLength:J

    .line 161
    return-object p0
.end method

.method public setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1
    .param p1, "mPerfUploadFrequency"    # J

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadFrequency:J

    .line 181
    return-object p0
.end method

.method public setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1
    .param p1, "mPerfUploadSwitchOpen"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/clientreport/data/Config$Builder;->mPerfUploadSwitchOpen:I

    .line 171
    return-object p0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
