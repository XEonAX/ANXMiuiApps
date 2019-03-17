.class Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1$1;
.super Ljava/lang/Object;
.source "SecretTipDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1$1;->this$2:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1$1;->this$2:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    iget-object v0, v0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1$1;->this$2:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->startAnimation()V

    .line 194
    :cond_0
    return-void
.end method
