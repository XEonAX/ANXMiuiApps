.class public Lcom/miui/gallery/widget/EmptyPage;
.super Landroid/widget/RelativeLayout;
.source "EmptyPage.java"


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mBigTitle:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/EmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/EmptyPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p2}, Lcom/miui/gallery/widget/EmptyPage;->init(Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x0

    const v11, 0x3ccccccd    # 0.025f

    const/4 v10, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/R$styleable;->EmptyPage:[I

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 69
    .local v4, "iconDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 70
    .local v6, "titleText":Ljava/lang/CharSequence;
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 71
    .local v3, "descriptionText":Ljava/lang/CharSequence;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    .local v1, "actionButtonDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 73
    .local v2, "actionButtonText":Ljava/lang/CharSequence;
    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 75
    .local v5, "showActionButton":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040070

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 79
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f1200d8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    .line 80
    const v8, 0x7f12002d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    .line 81
    const v8, 0x7f120157

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    .line 82
    const v8, 0x7f1200f8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    .line 83
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 84
    iget-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 85
    iget-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 87
    :cond_1
    const v8, 0x7f120156

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    .line 89
    if-eqz v4, :cond_2

    .line 90
    invoke-virtual {p0, v4}, Lcom/miui/gallery/widget/EmptyPage;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_2
    if-eqz v3, :cond_6

    .line 93
    invoke-direct {p0, v12}, Lcom/miui/gallery/widget/EmptyPage;->setSingleLineTextMode(Z)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/EmptyPage;->setDescription(Ljava/lang/CharSequence;)V

    .line 95
    if-eqz v6, :cond_3

    .line 96
    invoke-virtual {p0, v6}, Lcom/miui/gallery/widget/EmptyPage;->setBigTitle(Ljava/lang/CharSequence;)V

    .line 105
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_4
    if-eqz v2, :cond_5

    .line 109
    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_5
    invoke-virtual {p0, v5}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    goto/16 :goto_0

    .line 75
    .end local v1    # "actionButtonDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "actionButtonText":Ljava/lang/CharSequence;
    .end local v3    # "descriptionText":Ljava/lang/CharSequence;
    .end local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "showActionButton":Z
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .end local v7    # "v":Landroid/view/View;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8

    .line 99
    .restart local v1    # "actionButtonDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "actionButtonText":Ljava/lang/CharSequence;
    .restart local v3    # "descriptionText":Ljava/lang/CharSequence;
    .restart local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "showActionButton":Z
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v7    # "v":Landroid/view/View;
    :cond_6
    invoke-direct {p0, v10}, Lcom/miui/gallery/widget/EmptyPage;->setSingleLineTextMode(Z)V

    .line 100
    if-eqz v6, :cond_3

    .line 101
    invoke-virtual {p0, v6}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setSingleLineTextMode(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/EmptyPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 48
    .local v1, "topMargin":I
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v2, v1, :cond_0

    .line 49
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setActionButtonBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    return-void
.end method

.method public setActionButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method public setActionButtonClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 184
    return-void
.end method

.method public setActionButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 168
    return-void
.end method

.method public setActionButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public setActionButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 179
    iget-object v1, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setBigTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    return-void
.end method

.method public setBigTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mBigTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method

.method public setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/widget/EmptyPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
