.class Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MosaicMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

.field final synthetic val$itemDecoration:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    iput p2, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;->val$itemDecoration:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 77
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 78
    .local v0, "adapterPos":I
    if-nez v0, :cond_1

    .line 79
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;->val$itemDecoration:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 83
    :goto_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;->val$itemDecoration:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 86
    :cond_0
    return-void

    .line 81
    :cond_1
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$1;->val$itemDecoration:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method
