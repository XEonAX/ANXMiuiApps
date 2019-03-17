.class public Lcom/xiaomi/push/service/PacketHelper;
.super Ljava/lang/Object;
.source "PacketHelper.java"


# static fields
.field private static prefix:Ljava/lang/String;

.field private static sCurMsgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/push/service/PacketHelper;->sCurMsgId:J

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/push/service/PacketHelper;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static generatePacketID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/push/service/PacketHelper;->prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/PacketHelper;->prefix:Ljava/lang/String;

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/push/service/PacketHelper;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/push/service/PacketHelper;->sCurMsgId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/xiaomi/push/service/PacketHelper;->sCurMsgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
