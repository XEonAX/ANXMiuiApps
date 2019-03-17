.class Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FilterMenuItem.java"


# instance fields
.field private mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mConfigIndicator:Landroid/view/View;

.field private mData:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

.field private mPreviewView:Landroid/widget/ImageView;

.field mSelected:Z

.field private mSelector:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private mValueIndicator:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 27
    const v0, 0x7f120170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mPreviewView:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mTitleView:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f120172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mValueIndicator:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f120173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mConfigIndicator:Landroid/view/View;

    .line 31
    const v0, 0x7f120171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mSelector:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method bindData(Lcom/miui/gallery/editor/photo/core/common/model/FilterData;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mData:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mPreviewView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mPreviewView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method setForegroundColor(I)V
    .locals 3
    .param p1, "foregroundColor"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 72
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mSelected:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mData:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x4063200000000000L    # 153.0

    :goto_0
    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mSelector:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    .line 73
    :cond_1
    const-wide v0, 0x406cb00000000000L    # 229.5

    goto :goto_0
.end method

.method setState(ZZ)V
    .locals 8
    .param p1, "selected"    # Z
    .param p2, "editMode"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0xa

    const/4 v4, 0x6

    const/16 v3, 0x8

    .line 42
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mSelector:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mSelected:Z

    .line 45
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 46
    .local v1, "rules":[I
    if-nez p1, :cond_1

    .line 47
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mConfigIndicator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    aget v2, v1, v4

    const v3, 0x7f12002d

    if-eq v2, v3, :cond_0

    .line 50
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 51
    const v2, 0x7f12002d

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    if-nez p2, :cond_3

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mData:Lcom/miui/gallery/editor/photo/core/common/model/FilterData;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->isNone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mConfigIndicator:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_2
    :goto_1
    aget v2, v1, v5

    if-eq v2, v6, :cond_0

    .line 64
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mConfigIndicator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method updateIndicator(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/filter/FilterMenuItem;->mValueIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
