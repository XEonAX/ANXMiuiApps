.class Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusListener"
.end annotation


# instance fields
.field private mDialogBottom:I

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V

    return-void
.end method


# virtual methods
.method public onBottomChange(I)V
    .locals 4
    .param p1, "bottom"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->mDialogBottom:I

    .line 232
    const-string v1, "TextFragment"

    const-string v2, "onBottomChange: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getActivationItemBottom()I

    move-result v0

    .line 234
    .local v0, "activationItemBottom":I
    const-string v1, "TextFragment"

    const-string/jumbo v2, "text bottom: %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    if-le v0, p1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v1

    sub-int v2, p1, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->offsetWithAnimator(F)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->offsetWithAnimator(F)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method onTextChange()V
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->mDialogBottom:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;->onBottomChange(I)V

    .line 244
    return-void
.end method
