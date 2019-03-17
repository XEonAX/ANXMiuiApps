.class Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 137
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 152
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 141
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemText(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->onTextChange()V

    .line 147
    return-void
.end method
