.class Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecretTipDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->access$202(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;Z)Z

    .line 181
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->access$200(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->access$202(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;Z)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    iget-object v0, v0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1$1;-><init>(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;)V

    iget-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    iget-object v2, v2, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    .line 195
    invoke-virtual {v2}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
