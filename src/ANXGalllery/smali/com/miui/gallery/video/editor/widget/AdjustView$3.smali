.class Lcom/miui/gallery/video/editor/widget/AdjustView$3;
.super Ljava/lang/Object;
.source "AdjustView.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/widget/AdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/widget/AdjustView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/widget/AdjustView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$100(Lcom/miui/gallery/video/editor/widget/AdjustView;)Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->getSelection()I

    move-result v1

    if-ne v1, p3, :cond_1

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$400(Lcom/miui/gallery/video/editor/widget/AdjustView;)V

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$100(Lcom/miui/gallery/video/editor/widget/AdjustView;)Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/video/editor/adapter/AdjustAdapter;->setSelection(I)V

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$200(Lcom/miui/gallery/video/editor/widget/AdjustView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/AdjustData;

    .line 172
    .local v0, "data":Lcom/miui/gallery/video/editor/model/AdjustData;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/gallery/video/editor/model/FilterAdjustData;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/AdjustView$3;->this$0:Lcom/miui/gallery/video/editor/widget/AdjustView;

    invoke-static {v1, v0}, Lcom/miui/gallery/video/editor/widget/AdjustView;->access$500(Lcom/miui/gallery/video/editor/widget/AdjustView;Lcom/miui/gallery/video/editor/model/AdjustData;)V

    goto :goto_0
.end method
