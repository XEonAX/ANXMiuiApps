.class Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;
.super Ljava/lang/Object;
.source "CloudGuideAutoBackupFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;->this$1:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;->this$1:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;->this$1:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    .line 85
    .local v0, "accountExists":Z
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;->this$1:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/Activity;->setResult(I)V

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;->this$1:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 88
    .end local v0    # "accountExists":Z
    :cond_0
    return-void

    .line 85
    .restart local v0    # "accountExists":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
