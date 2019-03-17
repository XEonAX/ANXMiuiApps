.class Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;
.super Ljava/lang/Object;
.source "StoryAlbumRenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cardName":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    invoke-static {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->access$100(Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDefaultName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mConfirmButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mOnRenameDoneListener:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mOnRenameDoneListener:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;

    invoke-interface {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$OnRenameDoneListener;->onOperationDone(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$2;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
