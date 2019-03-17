.class Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;
.super Ljava/lang/Object;
.source "CloudGuideAutoBackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncUtil;->setSyncAutomatically(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 74
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->access$000(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 76
    const-string/jumbo v1, "stat_key_source"

    iget-object v3, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->access$000(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;)Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    const-string v1, "com.xiaomi"

    iget-object v3, p0, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;->this$0:Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1$1;-><init>(Lcom/miui/gallery/ui/CloudGuideAutoBackupFragment$1;)V

    move-object v3, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method
