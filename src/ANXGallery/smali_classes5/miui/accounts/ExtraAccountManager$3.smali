.class Lmiui/accounts/ExtraAccountManager$3;
.super Ljava/lang/Object;
.source "ExtraAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/accounts/ExtraAccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

.field final synthetic val$preAdd:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lmiui/accounts/ExtraAccountManager;ZLmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/accounts/ExtraAccountManager;

    .line 210
    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$3;->this$0:Lmiui/accounts/ExtraAccountManager;

    iput-boolean p2, p0, Lmiui/accounts/ExtraAccountManager$3;->val$preAdd:Z

    iput-object p3, p0, Lmiui/accounts/ExtraAccountManager$3;->val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    iput-object p4, p0, Lmiui/accounts/ExtraAccountManager$3;->val$account:Landroid/accounts/Account;

    iput p5, p0, Lmiui/accounts/ExtraAccountManager$3;->val$type:I

    iput-object p6, p0, Lmiui/accounts/ExtraAccountManager$3;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lmiui/accounts/ExtraAccountManager$3;->val$preAdd:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$3;->val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$3;->val$account:Landroid/accounts/Account;

    iget v2, p0, Lmiui/accounts/ExtraAccountManager$3;->val$type:I

    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$3;->val$extra:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lmiui/accounts/MiuiOnAccountsUpdateListener;->onPreAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager$3;->val$listener:Lmiui/accounts/MiuiOnAccountsUpdateListener;

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager$3;->val$account:Landroid/accounts/Account;

    iget v2, p0, Lmiui/accounts/ExtraAccountManager$3;->val$type:I

    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager$3;->val$extra:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lmiui/accounts/MiuiOnAccountsUpdateListener;->onPostAccountUpdated(Landroid/accounts/Account;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "ExtraAccountManager"

    const-string v2, "Can\'t update accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_1
    return-void
.end method
