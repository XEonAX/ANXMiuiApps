.class Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;
.super Ljava/lang/Object;
.source "RemoverFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 144
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$500(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->getSelection()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 154
    :goto_0
    return v4

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$600(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    .line 148
    .local v0, "removerData":Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    iget v3, v0, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;->mType:I

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$702(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I

    .line 149
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$800(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;->setRemoverData(Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;)V

    .line 150
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$500(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->setSelection(I)V

    .line 152
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$900(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BasicSeekBar;->getProgress()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;I)I

    move-result v1

    .line 153
    .local v1, "value":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;->access$1000(Lcom/miui/gallery/editor/photo/app/remover/RemoverFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractRemoverFragment;->setPaintSize(F)V

    goto :goto_0
.end method
