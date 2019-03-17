.class Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;
.super Ljava/lang/Object;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerPoint"
.end annotation


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivePoint:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointLayout:Landroid/widget/LinearLayout;

.field private mPointMargin:I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p3, "active"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    .line 190
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointMargin:I

    .line 193
    iput-object p2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 194
    iput-object p3, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    return-void
.end method

.method private generatorPoint()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 223
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v1, "view":Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 226
    iget v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 227
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    return-object v1
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyActivePointChanged(I)V
    .locals 3
    .param p1, "activePoint"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 209
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 212
    iput p1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    .line 214
    :cond_0
    return-void
.end method

.method public notifyPointCountChanged(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 198
    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->generatorPoint()Landroid/widget/ImageView;

    move-result-object v1

    .line 201
    .local v1, "point":Landroid/widget/ImageView;
    if-ne p2, v0, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 204
    .end local v1    # "point":Landroid/widget/ImageView;
    :cond_1
    iput p2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    .line 205
    return-void
.end method
