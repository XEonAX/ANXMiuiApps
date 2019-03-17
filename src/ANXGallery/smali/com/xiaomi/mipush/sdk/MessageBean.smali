.class Lcom/xiaomi/mipush/sdk/MessageBean;
.super Ljava/lang/Object;
.source "OperatePushHelper.java"


# instance fields
.field count:I

.field messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mipush/sdk/MessageBean;->count:I

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/xiaomi/mipush/sdk/MessageBean;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 157
    check-cast v0, Lcom/xiaomi/mipush/sdk/MessageBean;

    .line 158
    .local v0, "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MessageBean;->messageId:Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x1

    .line 163
    .end local v0    # "messageBean":Lcom/xiaomi/mipush/sdk/MessageBean;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
