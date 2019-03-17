.class Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$3;
.super Ljava/lang/Object;
.source "StickerFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;

    .line 112
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$300(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/Metadata;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 113
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 114
    const/4 v1, 0x1

    return v1
.end method
