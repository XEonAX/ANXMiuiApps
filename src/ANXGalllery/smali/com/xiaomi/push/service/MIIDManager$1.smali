.class Lcom/xiaomi/push/service/MIIDManager$1;
.super Ljava/lang/Object;
.source "MIIDManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIIDManager;->initMIIDUpdateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/MIIDManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/MIIDManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/MIIDManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xiaomi/push/service/MIIDManager$1;->this$0:Lcom/xiaomi/push/service/MIIDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager$1;->this$0:Lcom/xiaomi/push/service/MIIDManager;

    invoke-static {v0}, Lcom/xiaomi/push/service/MIIDManager;->access$100(Lcom/xiaomi/push/service/MIIDManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/MIIDManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/service/MIIDManager$1$1;-><init>(Lcom/xiaomi/push/service/MIIDManager$1;[Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
