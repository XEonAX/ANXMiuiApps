.class Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "click event is not from current fragment, maybe listener not detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->access$000(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;->access$000(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;)Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/editor/photo/app/AlertDialogFragment$Callbacks;->onClick(Lcom/miui/gallery/editor/photo/app/AlertDialogFragment;I)V

    .line 72
    :cond_1
    return-void
.end method
