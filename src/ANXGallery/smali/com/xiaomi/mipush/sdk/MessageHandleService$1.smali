.class final Lcom/xiaomi/mipush/sdk/MessageHandleService$1;
.super Ljava/lang/Object;
.source "MessageHandleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/MessageHandleService;->startService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$awakeIntent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$1;->val$awakeIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$1;->val$awakeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
