.class public Lcom/xiaomi/scanner/ui/BottomModuleContainer;
.super Landroid/widget/LinearLayout;
.source "BottomModuleContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;
    }
.end annotation


# static fields
.field private static final MAX_SHOW_PAGE:I = 0x6

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final TIME:I = 0xfa


# instance fields
.field private canScrollByTakePic:Z

.field private downX:I

.field private itemWidth:I

.field private mCurrentSelectIndex:I

.field private mMaxLeft:I

.field private mMaxRight:I

.field private mTotalScroll:I

.field private moduleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;

.field private scroll:I

.field private touchNoScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "BottomContainer"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    .line 38
    iput v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    .line 39
    iput v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->downX:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->canScrollByTakePic:Z

    .line 61
    sget v0, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    .line 62
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->setGravity(I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/BottomModuleContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    .prologue
    .line 31
    iget v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->firstScrollCalculate(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->updateSelected(I)V

    return-void
.end method

.method private animatorChange(I)V
    .locals 4
    .param p1, "scrollX"    # I

    .prologue
    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 222
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    new-instance v1, Lcom/xiaomi/scanner/ui/BottomModuleContainer$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer$2;-><init>(Lcom/xiaomi/scanner/ui/BottomModuleContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    new-instance v1, Lcom/xiaomi/scanner/ui/BottomModuleContainer$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer$3;-><init>(Lcom/xiaomi/scanner/ui/BottomModuleContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 239
    return-void
.end method

.method private firstScrollCalculate(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    .line 113
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_0

    .line 114
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    div-int/lit8 v2, v4, 0x2

    .line 118
    .local v2, "offset":I
    :goto_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isLayoutRtl()Z

    move-result v3

    .line 119
    .local v3, "rtl":Z
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    div-int/lit8 v1, p1, 0x2

    .line 120
    .local v1, "middleIndex":I
    :goto_1
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v4

    if-eqz v3, :cond_2

    const/4 v4, -0x1

    :goto_2
    mul-int/2addr v4, v5

    if-eqz v3, :cond_3

    .end local v2    # "offset":I
    :goto_3
    add-int v0, v4, v2

    .line 122
    .local v0, "firstScroll":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    mul-int/2addr v5, v4

    if-eqz v3, :cond_4

    move v4, v0

    :goto_4
    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mMaxRight:I

    .line 123
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    neg-int v4, v4

    iget v5, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    mul-int/2addr v5, v4

    if-eqz v3, :cond_5

    neg-int v4, v0

    :goto_5
    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mMaxLeft:I

    .line 124
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scrollEnd(IZ)V

    .line 125
    return-void

    .line 116
    .end local v0    # "firstScroll":I
    .end local v1    # "middleIndex":I
    .end local v3    # "rtl":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "offset":I
    goto :goto_0

    .line 119
    .restart local v3    # "rtl":Z
    :cond_1
    div-int/lit8 v4, p1, 0x2

    add-int/lit8 v1, v4, -0x1

    goto :goto_1

    .line 120
    .restart local v1    # "middleIndex":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    neg-int v2, v2

    goto :goto_3

    .line 122
    .end local v2    # "offset":I
    .restart local v0    # "firstScroll":I
    :cond_4
    neg-int v4, v0

    goto :goto_4

    :cond_5
    move v4, v0

    .line 123
    goto :goto_5
.end method

.method private genCheckedTextView()Landroid/widget/CheckedTextView;
    .locals 5

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030040

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 71
    .local v1, "textView":Landroid/widget/CheckedTextView;
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 74
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/widget/CheckedTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    return-object v1
.end method

.method private getCurrentSelectIndex()I
    .locals 3

    .prologue
    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 153
    .local v0, "child":Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    .end local v0    # "child":Landroid/widget/CheckedTextView;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 151
    .restart local v0    # "child":Landroid/widget/CheckedTextView;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "child":Landroid/widget/CheckedTextView;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private scrollEnd(IZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "needAnimator"    # Z

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scrollEnd(IZZI)V

    .line 243
    return-void
.end method

.method private scrollEnd(IZZI)V
    .locals 4
    .param p1, "scrollX"    # I
    .param p2, "needAnimator"    # Z
    .param p3, "toLeft"    # Z
    .param p4, "moveCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 246
    if-eqz p2, :cond_1

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 249
    .local v1, "text":Landroid/widget/CheckedTextView;
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "text":Landroid/widget/CheckedTextView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->animatorChange(I)V

    .line 255
    .end local v0    # "i":I
    :goto_1
    iput p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    .line 256
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scrollTo(II)V

    goto :goto_1
.end method

.method private updateItemView(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;Landroid/widget/CheckedTextView;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .param p2, "textView"    # Landroid/widget/CheckedTextView;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 82
    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method private updateSelected(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_2

    .line 129
    :cond_0
    sget-object v3, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update selected index >= count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getCurrentSelectIndex()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 133
    sget-object v3, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update selected index == current index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    const/4 v2, 0x0

    .line 137
    .local v2, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 138
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 139
    .local v0, "child":Landroid/widget/CheckedTextView;
    if-ne p1, v1, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 140
    if-ne p1, v1, :cond_4

    .line 141
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    check-cast v2, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 142
    .restart local v2    # "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->sendAccessibilityEvent(I)V

    .line 137
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 145
    .end local v0    # "child":Landroid/widget/CheckedTextView;
    :cond_6
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->moduleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->moduleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;

    invoke-interface {v2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;->onModuleSelect(I)V

    goto :goto_0
.end method


# virtual methods
.method public addModuleItemList(Ljava/util/List;I)V
    .locals 4
    .param p2, "moduleId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "baseInfoss":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;>;"
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->removeAllViews()V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 91
    .local v1, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->genCheckedTextView()Landroid/widget/CheckedTextView;

    move-result-object v2

    .line 92
    .local v2, "textView":Landroid/widget/CheckedTextView;
    invoke-direct {p0, v1, v2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->updateItemView(Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;Landroid/widget/CheckedTextView;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .end local v2    # "textView":Landroid/widget/CheckedTextView;
    :cond_0
    new-instance v3, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;-><init>(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->canScrollByTakePic:Z

    if-nez v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 165
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 166
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 170
    .local v1, "clickIndex":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    sub-int v6, v1, v4

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    :goto_1
    mul-int v2, v6, v4

    .line 171
    .local v2, "moveCount":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    mul-int v3, v4, v2

    .line 172
    .local v3, "scrollTo":I
    iput v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    .line 174
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    add-int v6, v4, v3

    if-gez v3, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-direct {p0, v6, v5, v4, v7}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scrollEnd(IZZI)V

    goto :goto_0

    .end local v2    # "moveCount":I
    .end local v3    # "scrollTo":I
    :cond_2
    move v4, v5

    .line 170
    goto :goto_1

    .line 174
    .restart local v2    # "moveCount":I
    .restart local v3    # "scrollTo":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/app/ScanActivity;->isOnlyBusinessCardScan()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->canScrollByTakePic:Z

    if-nez v4, :cond_2

    .line 213
    :cond_1
    :goto_0
    return v5

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->downX:I

    .line 186
    iput v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    .line 187
    iput-boolean v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->touchNoScroll:Z

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v6, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->downX:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 191
    .local v0, "moveX":I
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->downX:I

    .line 193
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isLayoutRtl()Z

    move-result v1

    .line 194
    .local v1, "rtl":Z
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    if-eqz v4, :cond_1

    .line 196
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    if-gez v4, :cond_3

    if-eqz v1, :cond_6

    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    iget v6, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mMaxLeft:I

    if-le v4, v6, :cond_1

    .line 198
    :cond_3
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    if-lez v4, :cond_4

    if-eqz v1, :cond_7

    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    iget v6, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mMaxRight:I

    if-ge v4, v6, :cond_1

    .line 201
    :cond_4
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    div-int/lit8 v6, v6, 0x3

    if-lt v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->touchNoScroll:Z

    if-nez v4, :cond_1

    .line 202
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scroll:I

    if-lez v4, :cond_5

    move v3, v5

    .line 203
    .local v3, "toLeft":Z
    :cond_5
    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    .line 204
    .local v2, "scrollEnd":I
    :goto_1
    if-eqz v3, :cond_b

    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    add-int/lit8 v4, v4, -0x1

    :goto_2
    iput v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    .line 205
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4, v5, v3, v5}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->scrollEnd(IZZI)V

    .line 206
    iput-boolean v5, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->touchNoScroll:Z

    goto :goto_0

    .line 196
    .end local v2    # "scrollEnd":I
    .end local v3    # "toLeft":Z
    :cond_6
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    iget v6, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mMaxRight:I

    if-lt v4, v6, :cond_3

    goto :goto_0

    .line 198
    :cond_7
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mTotalScroll:I

    iget v6, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mMaxLeft:I

    if-gt v4, v6, :cond_4

    goto/16 :goto_0

    .line 203
    .restart local v3    # "toLeft":Z
    :cond_8
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    neg-int v2, v4

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_a

    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    neg-int v2, v4

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->itemWidth:I

    goto :goto_1

    .line 204
    .restart local v2    # "scrollEnd":I
    :cond_b
    iget v4, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->mCurrentSelectIndex:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 210
    .end local v0    # "moveX":I
    .end local v1    # "rtl":Z
    .end local v2    # "scrollEnd":I
    .end local v3    # "toLeft":Z
    :pswitch_2
    iput-boolean v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->touchNoScroll:Z

    goto/16 :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCanScrollByTakePic(Z)V
    .locals 0
    .param p1, "canScrollByTakePic"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->canScrollByTakePic:Z

    .line 218
    return-void
.end method

.method public setModuleSelectListener(Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;)V
    .locals 0
    .param p1, "moduleSelectListener"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->moduleSelectListener:Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;

    .line 67
    return-void
.end method
