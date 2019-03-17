.class Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$3;
.super Ljava/lang/Object;
.source "StoryAlbumRenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v0, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mConfirmButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog$3;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;

    iget-object v1, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumRenameDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
