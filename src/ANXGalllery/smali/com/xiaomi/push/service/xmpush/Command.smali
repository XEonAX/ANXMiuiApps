.class public final enum Lcom/xiaomi/push/service/xmpush/Command;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/push/service/xmpush/Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_CHK_VDEVID:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_SET_ACCEPT_TIME:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_SUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_UNREGISTER:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_UNSET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_UNSET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

.field public static final enum COMMAND_UNSUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_REGISTER"

    const-string v2, "register"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    .line 14
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_UNREGISTER"

    const-string/jumbo v2, "unregister"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNREGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    .line 15
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_SET_ALIAS"

    const-string v2, "set-alias"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    .line 16
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_UNSET_ALIAS"

    const-string/jumbo v2, "unset-alias"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    .line 17
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_SET_ACCOUNT"

    const-string v2, "set-account"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    .line 18
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_UNSET_ACCOUNT"

    const/4 v2, 0x5

    const-string/jumbo v3, "unset-account"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    .line 19
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_SUBSCRIBE_TOPIC"

    const/4 v2, 0x6

    const-string/jumbo v3, "subscribe-topic"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    .line 20
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_UNSUBSCRIBE_TOPIC"

    const/4 v2, 0x7

    const-string/jumbo v3, "unsubscibe-topic"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    .line 21
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_SET_ACCEPT_TIME"

    const/16 v2, 0x8

    const-string v3, "accept-time"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCEPT_TIME:Lcom/xiaomi/push/service/xmpush/Command;

    .line 22
    new-instance v0, Lcom/xiaomi/push/service/xmpush/Command;

    const-string v1, "COMMAND_CHK_VDEVID"

    const/16 v2, 0x9

    const-string v3, "check-vdeviceid"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/xmpush/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_CHK_VDEVID:Lcom/xiaomi/push/service/xmpush/Command;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/push/service/xmpush/Command;

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNREGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ALIAS:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSET_ACCOUNT:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNSUBSCRIBE_TOPIC:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_SET_ACCEPT_TIME:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_CHK_VDEVID:Lcom/xiaomi/push/service/xmpush/Command;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/service/xmpush/Command;->$VALUES:[Lcom/xiaomi/push/service/xmpush/Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getCode(Ljava/lang/String;)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, -0x1

    .line 32
    .local v0, "result":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .line 39
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 33
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/xmpush/Command;->values()[Lcom/xiaomi/push/service/xmpush/Command;

    move-result-object v3

    .line 34
    .local v3, "types":[Lcom/xiaomi/push/service/xmpush/Command;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    .line 35
    .local v2, "type":Lcom/xiaomi/push/service/xmpush/Command;
    iget-object v6, v2, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    invoke-static {v2}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->changeOrdinalToCode(Ljava/lang/Enum;)I

    move-result v0

    .line 34
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "type":Lcom/xiaomi/push/service/xmpush/Command;
    :cond_2
    move v1, v0

    .line 39
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/service/xmpush/Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/xiaomi/push/service/xmpush/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/xmpush/Command;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/push/service/xmpush/Command;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->$VALUES:[Lcom/xiaomi/push/service/xmpush/Command;

    invoke-virtual {v0}, [Lcom/xiaomi/push/service/xmpush/Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/xmpush/Command;

    return-object v0
.end method
