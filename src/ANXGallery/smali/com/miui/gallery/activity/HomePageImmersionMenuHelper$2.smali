.class Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;
.super Ljava/lang/Object;
.source "HomePageImmersionMenuHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/PrintInstallHelper$InstallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->onCreateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

.field final synthetic val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

.field final synthetic val$photoPrintItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;Lcom/miui/gallery/widget/menu/ImmersionMenuItem;Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$photoPrintItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    iput-object p3, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZII)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "errorCode"    # I
    .param p3, "failReason"    # I

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-static {v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->access$000(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0397

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$photoPrintItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setRemainWhenClick(Z)V

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$photoPrintItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setInformation(Ljava/lang/CharSequence;)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 124
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->updateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 125
    return-void

    .line 117
    :cond_1
    invoke-static {p2, p3}, Lcom/miui/gallery/util/PrintInstallHelper;->getFailReasonMsg(II)I

    move-result v0

    .line 118
    .local v0, "failReasonMsg":I
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-static {v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->access$000(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onInstallLimited()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-static {v0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->access$000(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0500

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 102
    return-void
.end method

.method public onInstalling()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$photoPrintItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setRemainWhenClick(Z)V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$photoPrintItem:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    const v1, 0x7f0c0396

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->setInformation(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->this$0:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$2;->val$menu:Lcom/miui/gallery/widget/menu/ImmersionMenu;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->updateImmersionMenu(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V

    .line 110
    return-void
.end method
