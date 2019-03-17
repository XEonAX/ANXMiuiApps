.class Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->enableComparison(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->access$200(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)V

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 137
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->render()V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;->access$300(Lcom/miui/gallery/editor/photo/core/imports/filter/FilterFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method
