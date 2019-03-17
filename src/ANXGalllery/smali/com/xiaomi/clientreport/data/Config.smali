.class public Lcom/xiaomi/clientreport/data/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/clientreport/data/Config$Builder;
    }
.end annotation


# instance fields
.field private mAESKey:Ljava/lang/String;

.field private mEventEncrypted:Z

.field private mEventUploadFrequency:J

.field private mEventUploadSwitchOpen:Z

.field private mMaxFileLength:J

.field private mPerfUploadFrequency:J

.field private mPerfUploadSwitchOpen:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x15180

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    .line 25
    iput-boolean v1, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    .line 26
    iput-boolean v1, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    .line 27
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mMaxFileLength:J

    .line 28
    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadFrequency:J

    .line 29
    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadFrequency:J

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config$Builder;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/xiaomi/clientreport/data/Config$Builder;

    .prologue
    const-wide/32 v8, 0x100000

    const-wide/16 v6, -0x1

    const-wide/32 v4, 0x15180

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    .line 25
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    .line 26
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    .line 27
    iput-wide v8, p0, Lcom/xiaomi/clientreport/data/Config;->mMaxFileLength:J

    .line 28
    iput-wide v4, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadFrequency:J

    .line 29
    iput-wide v4, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadFrequency:J

    .line 35
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$000(Lcom/xiaomi/clientreport/data/Config$Builder;)I

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    .line 43
    :goto_0
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$100(Lcom/xiaomi/clientreport/data/Config$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$100(Lcom/xiaomi/clientreport/data/Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/Config;->mAESKey:Ljava/lang/String;

    .line 49
    :goto_1
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$200(Lcom/xiaomi/clientreport/data/Config$Builder;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 50
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$200(Lcom/xiaomi/clientreport/data/Config$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mMaxFileLength:J

    .line 55
    :goto_2
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$300(Lcom/xiaomi/clientreport/data/Config$Builder;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    .line 56
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$300(Lcom/xiaomi/clientreport/data/Config$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadFrequency:J

    .line 61
    :goto_3
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$400(Lcom/xiaomi/clientreport/data/Config$Builder;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    .line 62
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$400(Lcom/xiaomi/clientreport/data/Config$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadFrequency:J

    .line 67
    :goto_4
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$500(Lcom/xiaomi/clientreport/data/Config$Builder;)I

    move-result v0

    if-nez v0, :cond_6

    .line 68
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    .line 75
    :goto_5
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$600(Lcom/xiaomi/clientreport/data/Config$Builder;)I

    move-result v0

    if-nez v0, :cond_8

    .line 76
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    .line 82
    :goto_6
    return-void

    .line 37
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$000(Lcom/xiaomi/clientreport/data/Config$Builder;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 38
    iput-boolean v2, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    goto :goto_0

    .line 40
    :cond_1
    iput-boolean v2, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/Config;->mAESKey:Ljava/lang/String;

    goto :goto_1

    .line 52
    :cond_3
    iput-wide v8, p0, Lcom/xiaomi/clientreport/data/Config;->mMaxFileLength:J

    goto :goto_2

    .line 58
    :cond_4
    iput-wide v4, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadFrequency:J

    goto :goto_3

    .line 64
    :cond_5
    iput-wide v4, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadFrequency:J

    goto :goto_4

    .line 69
    :cond_6
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$500(Lcom/xiaomi/clientreport/data/Config$Builder;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 70
    iput-boolean v2, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    goto :goto_5

    .line 72
    :cond_7
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    goto :goto_5

    .line 77
    :cond_8
    invoke-static {p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->access$600(Lcom/xiaomi/clientreport/data/Config$Builder;)I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 78
    iput-boolean v2, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    goto :goto_6

    .line 80
    :cond_9
    iput-boolean v3, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config$Builder;Lcom/xiaomi/clientreport/data/Config$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaomi/clientreport/data/Config$Builder;
    .param p3, "x2"    # Lcom/xiaomi/clientreport/data/Config$1;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/clientreport/data/Config;-><init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/Config$Builder;)V

    return-void
.end method

.method public static defaultConfig(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v6, 0x15180

    const/4 v4, 0x0

    .line 85
    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 87
    invoke-static {p0}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getEventKeyWithDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/clientreport/data/Config$Builder;->setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    const-wide/32 v2, 0x100000

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/clientreport/data/Config$Builder;->setMaxFileLength(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v4}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v4}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, p0}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    .line 94
    .local v0, "config":Lcom/xiaomi/clientreport/data/Config;
    return-object v0
.end method

.method public static getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/xiaomi/clientreport/data/Config$Builder;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/Config$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEventUploadFrequency()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadFrequency:J

    return-wide v0
.end method

.method public getMaxFileLength()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mMaxFileLength:J

    return-wide v0
.end method

.method public getPerfUploadFrequency()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadFrequency:J

    return-wide v0
.end method

.method public isEventEncrypted()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    return v0
.end method

.method public isEventUploadSwitchOpen()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    return v0
.end method

.method public isPerfUploadSwitchOpen()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{mEventEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/clientreport/data/Config;->mEventEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAESKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/clientreport/data/Config;->mAESKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/clientreport/data/Config;->mMaxFileLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventUploadSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadSwitchOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPerfUploadSwitchOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadSwitchOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventUploadFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/clientreport/data/Config;->mEventUploadFrequency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPerfUploadFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/clientreport/data/Config;->mPerfUploadFrequency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
