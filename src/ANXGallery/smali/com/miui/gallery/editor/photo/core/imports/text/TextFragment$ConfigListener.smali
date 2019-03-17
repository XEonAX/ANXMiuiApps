.class Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V

    return-void
.end method


# virtual methods
.method public onBoldChange(Z)V
    .locals 1
    .param p1, "bold"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemBold(Z)V

    .line 273
    return-void
.end method

.method public onColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemTextColor(I)V

    .line 253
    return-void
.end method

.method public onShadowChange(Z)V
    .locals 1
    .param p1, "shadow"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemShadow(Z)V

    .line 263
    return-void
.end method

.method public onTextAlignChange(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 1
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 268
    return-void
.end method

.method public onTransparentChange(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemTransparent(F)V

    .line 258
    return-void
.end method

.method public onTypefaceChange(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 1
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$602(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemTypeface(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 279
    return-void
.end method
