.class Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;
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
    .line 95
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

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
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$200(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$000(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$000(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$100(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/editor/photo/app/sticker/HeaderAdapter;->setSelection(I)V

    .line 103
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 104
    return v2
.end method
