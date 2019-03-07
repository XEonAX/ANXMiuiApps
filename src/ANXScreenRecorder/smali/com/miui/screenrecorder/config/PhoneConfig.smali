.class public Lcom/miui/screenrecorder/config/PhoneConfig;
.super Ljava/lang/Object;
.source "PhoneConfig.java"


# instance fields
.field private innerOffset:J

.field private innerStreamType:I

.field private isSupportInner:Z

.field private micOffset:J

.field private phoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "default"

    iput-object v0, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->phoneId:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->isSupportInner:Z

    .line 21
    iput v1, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->innerStreamType:I

    .line 22
    iput-wide v2, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->micOffset:J

    .line 23
    iput-wide v2, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->innerOffset:J

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIJJ)V
    .locals 0
    .param p1, "phoneId"    # Ljava/lang/String;
    .param p2, "isSupportInner"    # Z
    .param p3, "innerStreamType"    # I
    .param p4, "micOffset"    # J
    .param p6, "innerOffset"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->phoneId:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->isSupportInner:Z

    .line 13
    iput p3, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->innerStreamType:I

    .line 14
    iput-wide p4, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->micOffset:J

    .line 15
    iput-wide p6, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->innerOffset:J

    .line 16
    return-void
.end method


# virtual methods
.method public getInnerOffset()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->innerOffset:J

    return-wide v0
.end method

.method public getInnerStreamType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->innerStreamType:I

    return v0
.end method

.method public getMicOffset()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->micOffset:J

    return-wide v0
.end method

.method public getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportInner()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/miui/screenrecorder/config/PhoneConfig;->isSupportInner:Z

    return v0
.end method
