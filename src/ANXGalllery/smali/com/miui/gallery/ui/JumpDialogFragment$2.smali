.class Lcom/miui/gallery/ui/JumpDialogFragment$2;
.super Ljava/lang/Object;
.source "JumpDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/JumpDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/JumpDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/JumpDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/JumpDialogFragment;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$2;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$2;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/JumpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/JumpDialogFragment$2;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/JumpDialogFragment$2;->this$0:Lcom/miui/gallery/ui/JumpDialogFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/JumpDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/JumpDialogFragment;->access$000(Lcom/miui/gallery/ui/JumpDialogFragment;Landroid/app/Dialog;F)V

    goto :goto_0
.end method
