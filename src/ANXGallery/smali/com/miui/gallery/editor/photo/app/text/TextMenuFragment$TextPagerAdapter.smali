.class Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TextMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextPagerAdapter"
.end annotation


# instance fields
.field private mAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)V
    .locals 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->mAdapterList:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->mAdapterList:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->mAdapterList:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;)Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 113
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "recyclerView":Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 116
    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;

    .line 120
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/text/TextBubbleAdapter;
    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment$TextPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;

    .line 123
    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/app/text/TextMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01ef

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    .line 121
    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 124
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 125
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 135
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
