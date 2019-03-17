.class Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StickerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerPagerAdapter"
.end annotation


# instance fields
.field private mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

.field private mViewMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mViewMapping:Landroid/util/SparseArray;

    .line 127
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    .line 128
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mViewMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$400(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 137
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v3, "recyclerView":Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$400(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;

    .line 139
    .local v4, "stickerCategory":Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 140
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2, v10}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 141
    invoke-virtual {v3, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    iget-wide v6, v4, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;->id:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->recent()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    const-string v5, "recent_tag"

    invoke-virtual {v3, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_0
    new-instance v0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 152
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    invoke-virtual {v3, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 153
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$500(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 154
    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .line 156
    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01ef

    invoke-direct {v5, v6, v7, v10}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    .line 154
    invoke-virtual {v3, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 157
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 158
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mViewMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    return-object v3

    .line 149
    .end local v0    # "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    iget-wide v6, v4, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->list(J)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 170
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 180
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mViewMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 181
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v1, :cond_0

    const-string v2, "recent_tag"

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;

    .line 183
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$600(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->recent()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->setDataList(Ljava/util/List;)V

    .line 184
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->notifyDataSetChanged()V

    .line 186
    .end local v0    # "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    :cond_0
    return-void
.end method
