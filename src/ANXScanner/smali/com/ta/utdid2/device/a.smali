.class public Lcom/ta/utdid2/device/a;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private a:J

.field private b:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->h:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->i:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/a;->j:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/ta/utdid2/device/a;->a:J

    .line 16
    iput-wide v2, p0, Lcom/ta/utdid2/device/a;->b:J

    .line 9
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/ta/utdid2/device/a;->a:J

    return-wide v0
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->b:J

    .line 24
    return-void
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/ta/utdid2/device/a;->a:J

    .line 32
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    .line 40
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->h:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->i:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ta/utdid2/device/a;->j:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ta/utdid2/device/a;->i:Ljava/lang/String;

    return-object v0
.end method
