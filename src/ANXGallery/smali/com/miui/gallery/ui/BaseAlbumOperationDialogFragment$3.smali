.class Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$3;
.super Ljava/lang/Object;
.source "BaseAlbumOperationDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$3;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$3;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$3;->this$0:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;

    iget-object v1, v0, Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment;->mConfirmButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    :cond_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
