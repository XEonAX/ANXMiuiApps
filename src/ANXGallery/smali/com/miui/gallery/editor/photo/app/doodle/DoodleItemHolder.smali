.class Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;
.super Ljava/lang/Object;
.source "DoodleItemHolder.java"


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field public final wholeView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->wholeView:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->wholeView:Landroid/view/View;

    const v1, 0x7f1200ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    .line 24
    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;I)V
    .locals 4
    .param p1, "doodleData"    # Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;
    .param p2, "position"    # I

    .prologue
    .line 27
    new-instance v0, Lcom/miui/gallery/editor/photo/drawable/SelectableDrawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;->normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;->selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/drawable/SelectableDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 31
    .local v0, "selectableDrawable":Lcom/miui/gallery/editor/photo/drawable/SelectableDrawable;
    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/drawable/SelectableDrawable;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/editor/photo/drawable/SelectableDrawable;->setDuration(J)V

    .line 33
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;->talkback:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/doodle/DoodleItemHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 43
    return-void
.end method
