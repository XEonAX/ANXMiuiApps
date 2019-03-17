.class Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;
.super Ljava/lang/Object;
.source "SlideshowIntervalDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->access$000(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;)Lmiui/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 52
    .local v0, "confirmButton":Landroid/widget/Button;
    new-instance v1, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;-><init>(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
