.class Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;
.super Ljava/lang/Object;
.source "TextMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 87
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;->getItemData(I)Lcom/miui/gallery/editor/photo/core/common/model/TextData;

    move-result-object v0

    .line 88
    .local v0, "filterData":Lcom/miui/gallery/editor/photo/core/common/model/TextData;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$400(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;->getItemCount()I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;->setSelection(I)V

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;->setSelection(I)V

    .line 91
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 92
    const/4 v1, 0x1

    return v1
.end method
