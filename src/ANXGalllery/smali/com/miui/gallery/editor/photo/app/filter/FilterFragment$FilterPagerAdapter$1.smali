.class Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 259
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 260
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;

    .line 261
    .local v0, "filterAdapter":Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;
    invoke-virtual {v0, p3}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->getItemData(I)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v1

    .line 262
    .local v1, "filterData":Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
    if-nez v1, :cond_1

    .line 263
    const-string v2, "FilterFragment"

    const-string v3, "FilterAdapter get filterData null:pos is %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    :cond_0
    :goto_0
    return v5

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$500(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->exitEditMode()V

    .line 269
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->showTopPanel(Z)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->enterEditMode()V

    .line 272
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$600(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 273
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-virtual {v2, v5}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->showTopPanel(Z)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    iget v3, v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$700(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/common/model/FilterData;Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v0, p3}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->setSelectedIndex(I)V

    .line 278
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v2, v1}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$502(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;Lcom/miui/gallery/editor/photo/core/common/model/FilterData;)Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .line 279
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/filter/FilterAdapter;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v2

    if-nez v2, :cond_4

    .line 280
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;->access$600(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, v1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter$1;->this$1:Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;->access$800(Lcom/miui/gallery/editor/photo/app/filter/FilterFragment$FilterPagerAdapter;)V

    goto :goto_0
.end method
