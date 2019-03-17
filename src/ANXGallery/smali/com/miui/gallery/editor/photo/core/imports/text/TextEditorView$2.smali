.class Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;
.super Ljava/lang/Object;
.source "TextEditorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    .line 867
    return-void
.end method
