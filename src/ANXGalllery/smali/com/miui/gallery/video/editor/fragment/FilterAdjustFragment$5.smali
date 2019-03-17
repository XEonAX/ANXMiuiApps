.class Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;
.super Ljava/lang/Object;
.source "FilterAdjustFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/FilterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
    .locals 4
    .param p1, "adapter"    # Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "isChanged"    # Z

    .prologue
    .line 152
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;

    .line 153
    .local v1, "filterRecyclerViewAdapter":Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;
    invoke-virtual {v1, p2}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getFilter(I)Lcom/miui/gallery/video/editor/Filter;

    move-result-object v0

    .line 154
    .local v0, "filter":Lcom/miui/gallery/video/editor/Filter;
    if-eqz v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$1900(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/video/editor/VideoEditor;->setFilter(Lcom/miui/gallery/video/editor/Filter;)V

    .line 156
    iget-object v2, p0, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;->this$0:Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;->access$2200(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5$1;-><init>(Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment$5;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v2

    .line 165
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
