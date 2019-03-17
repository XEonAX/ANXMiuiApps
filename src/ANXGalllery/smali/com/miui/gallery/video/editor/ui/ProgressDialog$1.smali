.class Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/ProgressDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;->this$0:Lcom/miui/gallery/video/editor/ui/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;->this$0:Lcom/miui/gallery/video/editor/ui/ProgressDialog;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->access$000(Lcom/miui/gallery/video/editor/ui/ProgressDialog;)Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;->this$0:Lcom/miui/gallery/video/editor/ui/ProgressDialog;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->access$000(Lcom/miui/gallery/video/editor/ui/ProgressDialog;)Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog$ProgressDialogInterface;->onCancelClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/ProgressDialog$1;->this$0:Lcom/miui/gallery/video/editor/ui/ProgressDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/ProgressDialog;->dismissAllowingStateLoss()V

    .line 55
    :cond_1
    return-void
.end method
