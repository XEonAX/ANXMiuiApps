.class public Lcom/xiaomi/stat/HttpEvent;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J

    .prologue
    .line 12
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J
    .param p4, "responseCode"    # I
    .param p5, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 28
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J
    .param p4, "netFlow"    # J

    .prologue
    .line 16
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J
    .param p4, "netFlow"    # J
    .param p6, "responseCode"    # I

    .prologue
    .line 20
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J
    .param p4, "netFlow"    # J
    .param p6, "responseCode"    # I
    .param p7, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/stat/HttpEvent;->c:J

    .line 32
    iput-object p1, p0, Lcom/xiaomi/stat/HttpEvent;->d:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/xiaomi/stat/HttpEvent;->b:J

    .line 34
    iput p6, p0, Lcom/xiaomi/stat/HttpEvent;->a:I

    .line 35
    iput-object p7, p0, Lcom/xiaomi/stat/HttpEvent;->e:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/xiaomi/stat/HttpEvent;->c:J

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeCost"    # J
    .param p4, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/stat/HttpEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNetFlow()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/xiaomi/stat/HttpEvent;->c:J

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaomi/stat/HttpEvent;->a:I

    return v0
.end method

.method public getTimeCost()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/xiaomi/stat/HttpEvent;->b:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/stat/HttpEvent;->d:Ljava/lang/String;

    return-object v0
.end method
