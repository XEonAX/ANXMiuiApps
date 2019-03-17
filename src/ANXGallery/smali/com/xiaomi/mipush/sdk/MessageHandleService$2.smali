.class final Lcom/xiaomi/mipush/sdk/MessageHandleService$2;
.super Ljava/lang/Object;
.source "MessageHandleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/MessageHandleService;->scheduleJob(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MessageHandleService$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->access$000(Landroid/content/Context;)V

    .line 63
    return-void
.end method
