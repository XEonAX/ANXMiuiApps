.class Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smack/util/TrafficUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrafficInfo"
.end annotation


# instance fields
.field public bytes:J

.field public imsi:Ljava/lang/String;

.field public messageTs:J

.field public networkType:I

.field public packageName:Ljava/lang/String;

.field public rcv:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JIILjava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "messageTs"    # J
    .param p4, "networkType"    # I
    .param p5, "rcv"    # I
    .param p6, "imsi"    # Ljava/lang/String;
    .param p7, "bytes"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->packageName:Ljava/lang/String;

    .line 238
    iput-wide v2, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->messageTs:J

    .line 239
    iput v1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->networkType:I

    .line 240
    iput v1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->rcv:I

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->imsi:Ljava/lang/String;

    .line 242
    iput-wide v2, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->bytes:J

    .line 246
    iput-object p1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->packageName:Ljava/lang/String;

    .line 247
    iput-wide p2, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->messageTs:J

    .line 248
    iput p4, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->networkType:I

    .line 249
    iput p5, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->rcv:I

    .line 250
    iput-object p6, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->imsi:Ljava/lang/String;

    .line 251
    iput-wide p7, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->bytes:J

    .line 252
    return-void
.end method


# virtual methods
.method public canAccumulate(Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;

    .prologue
    .line 255
    iget-object v0, p1, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->imsi:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->networkType:I

    iget v1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->networkType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->rcv:I

    iget v1, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->rcv:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->messageTs:J

    iget-wide v2, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->messageTs:J

    sub-long/2addr v0, v2

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
