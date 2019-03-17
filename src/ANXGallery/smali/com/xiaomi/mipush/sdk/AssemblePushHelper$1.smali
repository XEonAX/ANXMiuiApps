.class final Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;
.super Ljava/lang/Object;
.source "AssemblePushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->saveAssemblePushTokenAfterAck(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$regInfo:Ljava/lang/String;

.field final synthetic val$type:Lcom/xiaomi/mipush/sdk/AssemblePush;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$regInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$type:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 173
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$regInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    const-string v3, ""

    .line 176
    .local v3, "token":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$regInfo:Ljava/lang/String;

    const-string/jumbo v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "args":[Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 178
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 179
    const-string/jumbo v6, "token:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "index":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .end local v1    # "index":I
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 187
    const-string v4, "ASSEMBLE_PUSH : receive correct token"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$type:Lcom/xiaomi/mipush/sdk/AssemblePush;

    invoke-static {v4, v5, v3}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->access$000(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/AssemblePushHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/AssemblePushHelper;->checkAssemblePushStatus(Landroid/content/Context;)V

    .line 194
    .end local v0    # "args":[Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 177
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    const-string v4, "ASSEMBLE_PUSH : receive incorrect token"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method
