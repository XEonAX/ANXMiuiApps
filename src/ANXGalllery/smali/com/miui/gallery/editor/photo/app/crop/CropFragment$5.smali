.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

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
    .line 190
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1000(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    .line 191
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/common/model/CropData;
    sget-object v1, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->MIRROR:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1100(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->doMirror()V

    .line 199
    :cond_0
    :goto_0
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 200
    const/4 v1, 0x1

    return v1

    .line 193
    :cond_1
    sget-object v1, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->ROTATE:Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->doRotate()V

    goto :goto_0

    .line 195
    :cond_2
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$700(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;->setSelection(I)V

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$1300(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$5;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$700(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/crop/CropAdapter;->getSelectedItem()Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->setAspectRatio(Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;)V

    goto :goto_0
.end method
