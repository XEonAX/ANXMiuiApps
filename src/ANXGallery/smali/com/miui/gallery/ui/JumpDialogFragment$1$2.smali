.class Lcom/miui/gallery/ui/JumpDialogFragment$1$2;
.super Ljava/lang/Object;
.source "JumpDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/JumpDialogFragment$1;->onJumpFailed(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/JumpDialogFragment$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/JumpDialogFragment$1;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->val$errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->val$errorMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$2;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method
