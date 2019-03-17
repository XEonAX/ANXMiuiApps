.class Lcom/xiaomi/push/service/MIIDManager$1$1;
.super Ljava/lang/Object;
.source "MIIDManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/MIIDManager$1;->onAccountsUpdated([Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/push/service/MIIDManager$1;

.field final synthetic val$accounts:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/MIIDManager$1;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/push/service/MIIDManager$1;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xiaomi/push/service/MIIDManager$1$1;->this$1:Lcom/xiaomi/push/service/MIIDManager$1;

    iput-object p2, p0, Lcom/xiaomi/push/service/MIIDManager$1$1;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xiaomi/push/service/MIIDManager$1$1;->this$1:Lcom/xiaomi/push/service/MIIDManager$1;

    iget-object v0, v0, Lcom/xiaomi/push/service/MIIDManager$1;->this$0:Lcom/xiaomi/push/service/MIIDManager;

    iget-object v1, p0, Lcom/xiaomi/push/service/MIIDManager$1$1;->val$accounts:[Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/MIIDManager;->access$000(Lcom/xiaomi/push/service/MIIDManager;[Landroid/accounts/Account;)V

    .line 71
    return-void
.end method
