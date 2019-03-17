.class Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;
.super Ljava/lang/Object;
.source "ChangeTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/transitions/ChangeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextAnimationUpdater"
.end annotation


# instance fields
.field private final mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsEndEmpty:Z

.field private mIsStartEmpty:Z

.field private final mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;
    .param p3, "end"    # Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mTextView:Landroid/widget/TextView;

    .line 81
    iput-object p2, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    .line 82
    iput-object p3, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v0, v0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v0, v0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-boolean v1, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsStartEmpty:Z

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v0, v0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v0, v0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iput-boolean v1, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsEndEmpty:Z

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 94
    iget-boolean v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsStartEmpty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsEndEmpty:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsStartEmpty:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsEndEmpty:Z

    if-nez v0, :cond_3

    .line 95
    :cond_1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 96
    :cond_3
    iget-boolean v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsStartEmpty:Z

    if-eqz v0, :cond_4

    .line 97
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 99
    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    .line 108
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 141
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    .line 116
    .local v4, "separator":F
    iget-boolean v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsStartEmpty:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsEndEmpty:Z

    if-nez v8, :cond_0

    .line 119
    :cond_2
    iget-boolean v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsStartEmpty:Z

    if-eqz v8, :cond_4

    .line 120
    const v4, 0x3c23d70a    # 0.01f

    :cond_3
    :goto_1
    move-object v8, v7

    .line 124
    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_5

    const/4 v3, 0x1

    .line 125
    .local v3, "isLeftPart":Z
    :goto_2
    check-cast v7, Ljava/lang/Float;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    if-eqz v3, :cond_6

    .end local v4    # "separator":F
    :goto_3
    div-float v0, v8, v4

    .line 126
    .local v0, "alpha":F
    if-eqz v3, :cond_7

    .line 127
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v5, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->text:Ljava/lang/String;

    .line 128
    .local v5, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v1, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hint:Ljava/lang/String;

    .line 129
    .local v1, "hint":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget v8, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hintColor:I

    invoke-static {v0, v8}, Lcom/miui/gallery/search/transitions/ChangeTextView;->access$000(FI)I

    move-result v2

    .line 130
    .local v2, "hintColor":I
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mStart:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget v8, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->textColor:I

    invoke-static {v0, v8}, Lcom/miui/gallery/search/transitions/ChangeTextView;->access$000(FI)I

    move-result v6

    .line 137
    .local v6, "textColor":I
    :goto_4
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 140
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 121
    .end local v0    # "alpha":F
    .end local v1    # "hint":Ljava/lang/String;
    .end local v2    # "hintColor":I
    .end local v3    # "isLeftPart":Z
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textColor":I
    .restart local v4    # "separator":F
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-boolean v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mIsEndEmpty:Z

    if-eqz v8, :cond_3

    .line 122
    const v4, 0x3f7d70a4    # 0.99f

    goto :goto_1

    .line 124
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 125
    .end local v7    # "value":Ljava/lang/Object;
    .restart local v3    # "isLeftPart":Z
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v4

    goto :goto_3

    .line 132
    .end local v4    # "separator":F
    .restart local v0    # "alpha":F
    :cond_7
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v5, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->text:Ljava/lang/String;

    .line 133
    .restart local v5    # "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget-object v1, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hint:Ljava/lang/String;

    .line 134
    .restart local v1    # "hint":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget v8, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hintColor:I

    invoke-static {v0, v8}, Lcom/miui/gallery/search/transitions/ChangeTextView;->access$000(FI)I

    move-result v2

    .line 135
    .restart local v2    # "hintColor":I
    iget-object v8, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$TextAnimationUpdater;->mEnd:Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;

    iget v8, v8, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->textColor:I

    invoke-static {v0, v8}, Lcom/miui/gallery/search/transitions/ChangeTextView;->access$000(FI)I

    move-result v6

    .restart local v6    # "textColor":I
    goto :goto_4
.end method
