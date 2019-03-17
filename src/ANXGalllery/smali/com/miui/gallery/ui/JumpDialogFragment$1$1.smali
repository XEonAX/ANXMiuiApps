.class Lcom/miui/gallery/ui/JumpDialogFragment$1$1;
.super Ljava/lang/Object;
.source "JumpDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/JumpDialogFragment$1;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/JumpDialogFragment$1;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/JumpDialogFragment$1;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iput-object p2, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/JumpDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/JumpDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/JumpDialogFragment$1;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method
