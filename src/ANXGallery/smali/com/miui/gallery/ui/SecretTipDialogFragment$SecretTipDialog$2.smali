.class Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$2;
.super Ljava/lang/Object;
.source "SecretTipDialogFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;
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
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$2;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$2;->this$1:Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    invoke-static {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->access$300(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    return-void
.end method
