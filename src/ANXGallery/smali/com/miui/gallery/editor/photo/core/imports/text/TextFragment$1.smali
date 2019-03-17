.class Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$202(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;I)I

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->onClear()V

    .line 115
    return-void
.end method

.method public onItemEdit()V
    .locals 7

    .prologue
    .line 119
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->isDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemText()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    const v5, 0x7f0c04da

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "hint":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setWillEditText(Ljava/lang/String;Z)V

    .line 130
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    move-result-object v3

    .line 131
    .local v3, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getCurrentItemStatus(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    .line 132
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setInitializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    .line 133
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "TextEditDialog"

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onModify()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
