.class public Lcom/xiaomi/scanner/ui/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mIsRtlLayout:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTextMaxWidth:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/xiaomi/scanner/ui/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const v0, 0x1030018

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 87
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 116
    new-instance v3, Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 119
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 120
    const v3, 0x7f0200bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    const v3, 0x7f0200c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    const v3, 0x7f0700cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 123
    const v3, 0x7f0700be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 124
    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbTextPadding:I

    .line 125
    const v3, 0x7f0800b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchMinWidth:I

    .line 126
    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTextMaxWidth:I

    .line 127
    const v3, 0x7f0800b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchPadding:I

    .line 128
    const v3, 0x1030101

    invoke-virtual {p0, p1, v3}, Lcom/xiaomi/scanner/ui/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 131
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mMinFlingVelocity:I

    .line 135
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->refreshDrawableState()V

    .line 136
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/ui/Switch;->setChecked(Z)V

    .line 138
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isRtlLayout()Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mIsRtlLayout:Z

    .line 139
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/ui/Switch;->setChecked(Z)V

    .line 320
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 286
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 287
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 289
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 323
    iget v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 450
    iget v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchWidth:I

    iget v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 208
    iget-object v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 209
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTop:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 210
    .local v3, "thumbTop":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchLeft:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 211
    .local v1, "thumbLeft":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 213
    .local v2, "thumbRight":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchBottom:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 214
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "maxWidth"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 196
    .local v5, "actual_width":I
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 200
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 201
    .local v0, "l":Landroid/text/StaticLayout;
    return-object v0
.end method

.method private setThumbPosition(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    .line 328
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 297
    iput v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 301
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 303
    if-eqz v0, :cond_3

    .line 305
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 306
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 307
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 308
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 312
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/Switch;->animateThumbToCheckedState(Z)V

    .line 316
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v4

    .line 299
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v4

    .line 308
    goto :goto_1

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 314
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/ui/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 467
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getDrawableState()[I

    move-result-object v0

    .line 471
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->invalidate()V

    .line 475
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 438
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 439
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    iget v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 442
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 485
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 486
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 487
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 455
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 457
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    sget-object v1, Lcom/xiaomi/scanner/ui/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/Switch;->mergeDrawableStates([I[I)[I

    .line 460
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 378
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 381
    move-object/from16 v0, p0

    iget v9, v0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchLeft:I

    .line 382
    .local v9, "switchLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTop:I

    .line 383
    .local v14, "switchTop":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchRight:I

    .line 384
    .local v10, "switchRight":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchBottom:I

    .line 386
    .local v4, "switchBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v14, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v6, v9, v18

    .line 393
    .local v6, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v8, v14, v18

    .line 394
    .local v8, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v10, v18

    .line 395
    .local v7, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v5, v4, v18

    .line 396
    .local v5, "switchInnerBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v14, v7, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 400
    .local v16, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v6, v18

    add-int v15, v18, v16

    .line 401
    .local v15, "thumbLeft":I
    add-int v18, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 403
    .local v17, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v14, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/ui/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    .line 409
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    .line 408
    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 411
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/scanner/ui/Switch;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/scanner/ui/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/scanner/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 416
    .local v11, "switchText":Landroid/text/Layout;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mIsRtlLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 417
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v11}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchPadding:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 421
    .local v12, "switchTextLeft":I
    :goto_1
    add-int v18, v8, v5

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v13, v18, v19

    .line 422
    .local v13, "switchTextTop":I
    int-to-float v0, v12

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 423
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/scanner/ui/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/ui/Switch;->mOffLayout:Landroid/text/Layout;

    .line 429
    .local v3, "anotherSwitchText":Landroid/text/Layout;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/scanner/ui/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, -0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/scanner/ui/Switch;->getThumbScrollRange()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 430
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 433
    .end local v3    # "anotherSwitchText":Landroid/text/Layout;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 434
    return-void

    .line 413
    .end local v11    # "switchText":Landroid/text/Layout;
    .end local v12    # "switchTextLeft":I
    .end local v13    # "switchTextTop":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/scanner/ui/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0

    .line 419
    .restart local v11    # "switchText":Landroid/text/Layout;
    :cond_3
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v11}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v12, v18, v19

    .restart local v12    # "switchTextLeft":I
    goto :goto_1

    .line 427
    .restart local v13    # "switchTextTop":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/scanner/ui/Switch;->mOnLayout:Landroid/text/Layout;

    goto :goto_2

    .line 429
    .restart local v3    # "anotherSwitchText":Landroid/text/Layout;
    :cond_5
    const/16 v18, 0x1

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 492
    const-class v0, Lcom/xiaomi/scanner/ui/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 498
    const-class v3, Lcom/xiaomi/scanner/ui/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 500
    .local v2, "switchText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 502
    .local v1, "oldText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 503
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 510
    .end local v1    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 499
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 505
    .restart local v1    # "oldText":Ljava/lang/CharSequence;
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v0, "newText":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 339
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 341
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/ui/Switch;->setThumbPosition(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 347
    .local v2, "switchRight":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 349
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 350
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 351
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 354
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getPaddingTop()I

    move-result v3

    .line 355
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 370
    :goto_0
    iput v1, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchLeft:I

    .line 371
    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTop:I

    .line 372
    iput v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchBottom:I

    .line 373
    iput v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchRight:I

    .line 374
    return-void

    .line 359
    :sswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 361
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 362
    goto :goto_0

    .line 365
    :sswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 366
    iget v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 157
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v5, v6}, Lcom/xiaomi/scanner/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 160
    :cond_0
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTextMaxWidth:I

    invoke-direct {p0, v5, v6}, Lcom/xiaomi/scanner/ui/Switch;->makeLayout(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mOffLayout:Landroid/text/Layout;

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 165
    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchTextMaxWidth:I

    iget-object v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mOnLayout:Landroid/text/Layout;

    .line 166
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 165
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    .local v0, "maxTextWidth":I
    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v6, v0, 0x2

    iget v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 169
    .local v4, "switchWidth":I
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 171
    .local v3, "switchHeight":I
    iget v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbTextPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iput v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbWidth:I

    .line 173
    iput v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchWidth:I

    .line 174
    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mSwitchHeight:I

    .line 176
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getMeasuredHeight()I

    move-result v1

    .line 178
    .local v1, "measuredHeight":I
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getMeasuredWidth()I

    move-result v2

    .line 179
    .local v2, "measuredWidth":I
    if-ge v1, v3, :cond_2

    .line 180
    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/scanner/ui/Switch;->setMeasuredDimension(II)V

    .line 182
    :cond_2
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 189
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    return-void

    .line 188
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 219
    iget-object v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 221
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 223
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 224
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 225
    .local v4, "y":F
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/scanner/ui/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    iput v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    .line 227
    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchX:F

    .line 228
    iput v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchY:F

    goto :goto_0

    .line 234
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 240
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 241
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 242
    .restart local v4    # "y":F
    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchY:F

    sub-float v6, v4, v6

    .line 243
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 244
    :cond_2
    iput v8, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    .line 245
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 246
    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchX:F

    .line 247
    iput v4, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchY:F

    goto :goto_1

    .line 254
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 255
    .restart local v3    # "x":F
    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 256
    .local v1, "dx":F
    const/4 v6, 0x0

    iget v7, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    .line 257
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 256
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 258
    .local v2, "newPos":F
    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 259
    iput v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbPosition:F

    .line 260
    iput v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchX:F

    .line 261
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->invalidate()V

    goto :goto_1

    .line 271
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v6, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 272
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 275
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mTouchMode:I

    .line 276
    iget-object v5, p0, Lcom/xiaomi/scanner/ui/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 234
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 333
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/Switch;->setThumbPosition(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->invalidate()V

    .line 335
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 148
    const v2, 0x7f0800b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 149
    .local v1, "ts":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 151
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/Switch;->requestLayout()V

    .line 153
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
