.class public Lcom/miui/gallery/hybrid/HybridLoadingProgressView;
.super Landroid/widget/LinearLayout;
.source "HybridLoadingProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;,
        Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mErrorResId:I

.field private mOnRefreshListener:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mText:Ljava/lang/CharSequence;

.field private mTextResId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040092

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    const v0, 0x7f120017

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 57
    const v0, 0x7f12002b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f120191

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/hybrid/HybridLoadingProgressView;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mOnRefreshListener:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

    return-object v0
.end method

.method private hideView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStyle(Z)V
    .locals 2
    .param p1, "hasData"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    const v0, 0x7f020166

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setBackgroundResource(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onError(ZLcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;Ljava/lang/String;)V
    .locals 7
    .param p1, "hasData"    # Z
    .param p2, "state"    # Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    iget v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mErrorResId:I

    if-lez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mErrorResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "errorDescription":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->updateStyle(Z)V

    .line 171
    if-eqz p1, :cond_2

    .line 172
    invoke-direct {p0, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->hideView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 217
    :goto_1
    return-void

    .line 164
    .end local v0    # "errorDescription":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    move-object v0, p3

    .restart local v0    # "errorDescription":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v0    # "errorDescription":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->getDescription()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorDescription":Ljava/lang/String;
    goto :goto_0

    .line 175
    :cond_2
    invoke-direct {p0, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->showView(Landroid/view/View;)V

    .line 176
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    sget-object v1, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->NETWORK_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    if-ne p2, v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020165

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    const v2, 0x7f0c024d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 204
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;-><init>(Lcom/miui/gallery/hybrid/HybridLoadingProgressView;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    .line 193
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020164

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 191
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    const v2, 0x7f0c0256

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 200
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mOnRefreshListener:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

    if-nez v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public onInit(ZZLcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;)V
    .locals 3
    .param p1, "hasData"    # Z
    .param p2, "isLoading"    # Z
    .param p3, "refreshListener"    # Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 108
    iput-object p3, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mOnRefreshListener:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

    .line 109
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->updateStyle(Z)V

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartLoading(Z)V
    .locals 3
    .param p1, "hasData"    # Z

    .prologue
    const/16 v2, 0x8

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->updateStyle(Z)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    invoke-direct {p0, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->showView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public onStopLoading(Z)V
    .locals 5
    .param p1, "hasData"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->updateStyle(Z)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->hideView(Landroid/view/View;)V

    .line 104
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0, p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->showView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    iget v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextResId:I

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020164

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setEmptyText(I)V
    .locals 0
    .param p1, "emptyRes"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mTextResId:I

    .line 153
    return-void
.end method

.method public setErrorText(I)V
    .locals 0
    .param p1, "errorRes"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mErrorResId:I

    .line 157
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 4
    .param p1, "indeterminate"    # Z

    .prologue
    const/4 v2, -0x2

    .line 220
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 226
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 227
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 228
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 230
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 231
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 231
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 234
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 242
    return-void
.end method
