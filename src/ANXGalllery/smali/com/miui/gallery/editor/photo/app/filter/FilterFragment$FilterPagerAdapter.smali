.class Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterPagerAdapter"
.end annotation


# instance fields
.field private mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$400(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    .line 256
    new-instance v0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;-><init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$1;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;-><init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->clearOtherSelector()V

    return-void
.end method

.method private clearOtherSelector()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$100(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->setSelectedIndex(I)V

    .line 190
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->clearSelected()V

    goto :goto_1

    .line 199
    :cond_2
    return-void
.end method

.method private findSelected(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/FilterData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FilterData;>;"
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 237
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 238
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    iput v2, v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    goto :goto_0

    .line 237
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getCurrentAdapter()Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$100(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 248
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$400(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x0

    .line 212
    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    .line 213
    .local v5, "recyclerView":Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$400(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;

    .line 214
    .local v2, "filterCategory":Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->getFilterDatas()Ljava/util/List;

    move-result-object v4

    .line 215
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/editor/photo/core/common/model/FilterData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/FilterData;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 218
    .local v3, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v3, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 219
    invoke-virtual {v5, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 220
    new-instance v0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    iget v6, v2, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->highlighColor:I

    iget v7, v2, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->subHighlighColor:I

    iget v8, v2, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->subItemSize:I

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;-><init>(Ljava/util/List;III)V

    .line 221
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 222
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->findSelected(Ljava/util/List;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->setSelectedIndex(I)V

    .line 223
    invoke-virtual {v5, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 224
    new-instance v6, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    .line 225
    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01ef

    invoke-direct {v6, v7, v8, v9}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    .line 224
    invoke-virtual {v5, v6}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 226
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->mFilterAdapters:[Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    aput-object v0, v6, p2

    .line 229
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 230
    return-object v5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 253
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateProgressValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->getCurrentAdapter()Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    move-result-object v0

    .line 184
    .local v0, "filterAdapter":Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->update(I)V

    .line 187
    :cond_0
    return-void
.end method
