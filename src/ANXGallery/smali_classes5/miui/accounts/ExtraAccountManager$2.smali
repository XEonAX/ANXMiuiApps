.class Lmiui/accounts/ExtraAccountManager$2;
.super Ljava/lang/Object;
.source "ExtraAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/accounts/ExtraAccountManager;

.field final synthetic val$accountsCopy:[Landroid/accounts/Account;

.field final synthetic val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;


# direct methods
.method constructor <init>(Lmiui/accounts/ExtraAccountManager;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/accounts/ExtraAccountManager;

    .line 192
    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$2;->this$0:Lmiui/accounts/ExtraAccountManager;

    iput-object p2, p0, Lmiui/accounts/ExtraAccountManager$2;->val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    iput-object p3, p0, Lmiui/accounts/ExtraAccountManager$2;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$2;->val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$2;->val$accountsCopy:[Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lmiui/accounts/MiuiOnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "ExtraAccountManager"

    const-string v2, "Can\'t update accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_0
    return-void
.end method
