.class Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;
.super Ljava/lang/Object;
.source "SlideshowIntervalDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v1, v1, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->access$100(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c049b

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->setSlideShowInterval(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->access$200(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;)Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->access$200(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;)Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;->onComplete()V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1$1;->this$1:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->access$000(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
