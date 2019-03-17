.class Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FrameItemHolder.java"


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDrawable:Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040088

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mBound:Landroid/graphics/Rect;

    .line 24
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f12002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mTextView:Landroid/widget/TextView;

    .line 25
    new-instance v1, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mDrawable:Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 27
    .local v0, "size":I
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    return-void
.end method


# virtual methods
.method setFrameData(Lcom/miui/gallery/editor/photo/core/common/model/FrameData;)V
    .locals 3
    .param p1, "frameData"    # Lcom/miui/gallery/editor/photo/core/common/model/FrameData;

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mDrawable:Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/FrameData;->iconRatio:F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->setRatio(F)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mDrawable:Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameItemHolder;->mDrawable:Lcom/miui/gallery/editor/photo/app/frame/FrameItemPreviewDrawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method
