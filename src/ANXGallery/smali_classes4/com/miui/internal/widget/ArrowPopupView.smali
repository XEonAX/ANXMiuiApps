.class public Lcom/miui/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArrowPopupView"

.field private static final tu:I = 0x4

.field private static final tv:I = 0x8


# instance fields
.field private nI:Landroid/graphics/drawable/Drawable;

.field private qs:Landroid/widget/LinearLayout;

.field private sN:Landroid/view/View;

.field private sO:Landroid/widget/ImageView;

.field private sP:Landroid/widget/FrameLayout;

.field private sQ:Landroid/widget/LinearLayout;

.field private sR:Landroid/widget/TextView;

.field private sS:Landroid/widget/Button;

.field private sT:Landroid/widget/Button;

.field private sU:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private sV:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private sW:I

.field private sX:I

.field private sY:Landroid/graphics/drawable/Drawable;

.field private sZ:Landroid/graphics/drawable/Drawable;

.field private ta:Landroid/graphics/drawable/Drawable;

.field private tb:Landroid/graphics/drawable/Drawable;

.field private tc:Landroid/graphics/drawable/Drawable;

.field private td:Landroid/graphics/drawable/Drawable;

.field private te:Landroid/graphics/drawable/Drawable;

.field private tf:Landroid/graphics/drawable/Drawable;

.field private tg:Lmiui/widget/ArrowPopupWindow;

.field private th:Landroid/view/View$OnTouchListener;

.field private ti:Landroid/graphics/Rect;

.field private tj:Landroid/graphics/RectF;

.field private tk:Landroid/animation/AnimatorSet;

.field private tl:Landroid/view/animation/AnimationSet;

.field private tm:Z

.field private tn:I

.field private to:I

.field private tp:I

.field private tq:I

.field private tr:I

.field private ts:Z

.field private tt:I

.field private tw:Landroid/view/animation/Animation$AnimationListener;

.field private tx:Landroid/view/animation/Animation$AnimationListener;

.field private ty:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 192
    sget v0, Lcom/miui/internal/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ti:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:Landroid/graphics/RectF;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ts:Z

    .line 147
    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$1;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tw:Landroid/view/animation/Animation$AnimationListener;

    .line 166
    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$2;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tx:Landroid/view/animation/Animation$AnimationListener;

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    .line 198
    sget-object v1, Lcom/miui/internal/R$styleable;->ArrowPopupView:[I

    .line 199
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 202
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->nI:Landroid/graphics/drawable/Drawable;

    .line 203
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    .line 204
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/drawable/Drawable;

    .line 205
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/graphics/drawable/Drawable;

    .line 206
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/graphics/drawable/Drawable;

    .line 207
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->tc:Landroid/graphics/drawable/Drawable;

    .line 208
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->td:Landroid/graphics/drawable/Drawable;

    .line 209
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->te:Landroid/graphics/drawable/Drawable;

    .line 210
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->tf:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->arrow_popup_window_min_border:I

    .line 215
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tn:I

    .line 216
    return-void
.end method

.method private static a(Landroid/content/res/Resources;)I
    .locals 3

    .line 384
    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 385
    if-lez v0, :cond_0

    .line 386
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 388
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tt:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;[F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->a([F)V

    return-void
.end method

.method private a([F)V
    .locals 6

    .line 641
    nop

    .line 642
    nop

    .line 644
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    .line 646
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 647
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 649
    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 668
    move v0, v5

    goto :goto_0

    .line 651
    :pswitch_0
    int-to-float v5, v2

    .line 652
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 653
    goto :goto_0

    .line 655
    :pswitch_1
    int-to-float v5, v3

    .line 656
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 657
    goto :goto_0

    .line 659
    :pswitch_2
    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 660
    int-to-float v0, v0

    .line 661
    goto :goto_0

    .line 663
    :pswitch_3
    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 664
    int-to-float v0, v1

    .line 668
    :goto_0
    const/4 v1, 0x0

    aput v5, p1, v1

    .line 669
    const/4 v1, 0x1

    aput v0, p1, v1

    .line 670
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ts:Z

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tm:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bF()V

    return-void
.end method

.method private bA()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bB()V
    .locals 17

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 393
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v3

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v4

    .line 396
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 397
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v5

    .line 399
    :goto_0
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 400
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v6

    .line 401
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bD()I

    move-result v7

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bE()I

    move-result v8

    .line 404
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 405
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 406
    const/4 v11, 0x0

    aget v12, v10, v11

    .line 407
    const/4 v13, 0x1

    aget v14, v10, v13

    .line 408
    invoke-virtual {v0, v10}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 409
    div-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 410
    iget v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    sub-int v15, v3, v15

    .line 411
    sub-int/2addr v1, v7

    div-int/2addr v1, v9

    add-int/2addr v12, v1

    aget v1, v10, v11

    sub-int/2addr v12, v1

    iput v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getTop()I

    move-result v1

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 414
    nop

    .line 415
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    if-nez v1, :cond_2

    .line 416
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    aget v2, v10, v13

    sub-int v2, v14, v2

    sub-int/2addr v2, v6

    iget-object v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    .line 417
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v9, v8

    add-int/2addr v2, v9

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 418
    aget v1, v10, v13

    sub-int/2addr v14, v1

    sub-int/2addr v14, v8

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    add-int/2addr v1, v14

    goto :goto_2

    .line 419
    :cond_2
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    if-ne v1, v13, :cond_3

    .line 420
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    add-int/2addr v14, v2

    aget v2, v10, v13

    sub-int/2addr v14, v2

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    .line 421
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v14, v2

    add-int/2addr v14, v8

    add-int/2addr v1, v14

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 422
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    goto :goto_2

    .line 425
    :cond_3
    move v1, v11

    :goto_2
    div-int/lit8 v2, v5, 0x2

    .line 426
    sub-int v9, v5, v2

    .line 427
    iget v10, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-lt v10, v2, :cond_4

    if-lt v15, v9, :cond_4

    .line 429
    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    sub-int/2addr v9, v2

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    goto :goto_3

    .line 430
    :cond_4
    if-ge v15, v9, :cond_5

    .line 432
    sub-int v2, v3, v5

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    goto :goto_3

    .line 433
    :cond_5
    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-ge v9, v2, :cond_6

    .line 435
    iput v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 437
    :cond_6
    :goto_3
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sW:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 438
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sW:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    .line 440
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    if-gez v2, :cond_7

    .line 441
    iput v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    goto :goto_4

    .line 442
    :cond_7
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    add-int/2addr v2, v7

    if-le v2, v3, :cond_8

    .line 443
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v3

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    .line 448
    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-direct {v0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->h(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 449
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/internal/widget/ArrowPopupView;->a(Landroid/content/res/Resources;)I

    move-result v2

    .line 450
    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    sub-int/2addr v9, v2

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 451
    sub-int/2addr v1, v2

    .line 454
    :cond_9
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 455
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 456
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    add-int/2addr v11, v5

    .line 457
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    add-int/2addr v5, v6

    .line 458
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 454
    invoke-virtual {v2, v9, v10, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 460
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    add-int/2addr v0, v7

    add-int/2addr v8, v1

    invoke-virtual {v2, v3, v1, v0, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 464
    return-void
.end method

.method private bC()V
    .locals 18

    .line 467
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 468
    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 469
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 470
    const/4 v5, 0x1

    aget v6, v2, v5

    .line 471
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 472
    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 473
    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v9

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v10

    .line 476
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 478
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v11

    .line 480
    :goto_0
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    if-le v12, v13, :cond_1

    .line 481
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v12

    .line 482
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bD()I

    move-result v13

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bE()I

    move-result v14

    .line 484
    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 485
    iget v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    sub-int v15, v10, v15

    .line 486
    sub-int/2addr v8, v14

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    aget v5, v2, v5

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    .line 488
    div-int/lit8 v5, v12, 0x2

    .line 489
    sub-int v6, v12, v5

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getLeft()I

    move-result v8

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->sW:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 492
    nop

    .line 493
    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    if-ne v3, v1, :cond_2

    .line 494
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    sub-int v3, v4, v11

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    .line 495
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v3, v13

    const/4 v7, 0x0

    aget v8, v2, v7

    sub-int/2addr v3, v8

    add-int/2addr v1, v3

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 496
    sub-int/2addr v4, v13

    aget v1, v2, v7

    sub-int/2addr v4, v1

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sW:I

    add-int v3, v4, v1

    goto :goto_2

    .line 497
    :cond_2
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 498
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    add-int/2addr v4, v7

    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    .line 499
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v13

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 500
    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    goto :goto_2

    .line 503
    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    if-lt v1, v5, :cond_4

    if-lt v15, v6, :cond_4

    .line 505
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    sub-int/2addr v1, v5

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    goto :goto_3

    .line 506
    :cond_4
    if-ge v15, v6, :cond_5

    .line 508
    sub-int v1, v10, v12

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    goto :goto_3

    .line 509
    :cond_5
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    if-ge v1, v5, :cond_6

    .line 511
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 513
    :cond_6
    :goto_3
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    .line 515
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    if-gez v1, :cond_7

    .line 516
    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    goto :goto_4

    .line 517
    :cond_7
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    add-int/2addr v1, v14

    if-le v1, v10, :cond_8

    .line 518
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    add-int/2addr v2, v14

    sub-int/2addr v2, v10

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    .line 521
    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->h(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 522
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Landroid/content/res/Resources;)I

    move-result v1

    .line 523
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 524
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    .line 527
    :cond_9
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 528
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    .line 529
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    add-int/2addr v5, v11

    .line 530
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    add-int/2addr v6, v12

    .line 531
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 527
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 533
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    add-int/2addr v13, v3

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    add-int/2addr v0, v14

    invoke-virtual {v1, v3, v2, v13, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 537
    return-void
.end method

.method private bD()I
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 541
    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 545
    :cond_0
    return v0
.end method

.method private bE()I
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 550
    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 554
    :cond_0
    return v0
.end method

.method private bF()V
    .locals 12

    .line 757
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 764
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    .line 765
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$4;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 772
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 773
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 774
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    if-eqz v2, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 780
    :pswitch_0
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 781
    goto :goto_0

    .line 784
    :pswitch_1
    neg-float v0, v0

    .line 785
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    .line 776
    :cond_2
    neg-float v0, v0

    .line 777
    nop

    .line 789
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v0, v4, v7

    const/4 v8, 0x2

    aput v6, v4, v8

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 790
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 791
    const-wide/16 v9, 0x4b0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 792
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 793
    new-instance v11, Lcom/miui/internal/widget/ArrowPopupView$5;

    invoke-direct {v11, p0}, Lcom/miui/internal/widget/ArrowPopupView$5;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 803
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    new-array v3, v3, [F

    aput v6, v3, v5

    aput v0, v3, v7

    aput v6, v3, v8

    invoke-static {v11, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 804
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 805
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 806
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 808
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v5

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 809
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 811
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bG()V
    .locals 13

    .line 817
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 818
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 820
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v2

    .line 821
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v3

    .line 822
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 823
    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 824
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 825
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 827
    const/4 v8, 0x4

    new-array v9, v8, [I

    .line 828
    const/4 v10, 0x1

    aget v11, v1, v10

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    aput v11, v9, v12

    .line 829
    aget v11, v1, v10

    sub-int/2addr v3, v11

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    aput v3, v9, v10

    .line 830
    aget v3, v1, v12

    sub-int/2addr v3, v4

    aput v3, v9, v0

    .line 831
    aget v0, v1, v12

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    sub-int/2addr v2, v4

    const/4 v0, 0x3

    aput v2, v9, v0

    .line 835
    nop

    .line 836
    nop

    .line 837
    const/high16 v0, -0x80000000

    move v1, v0

    move v0, v12

    :goto_0
    if-ge v12, v8, :cond_2

    .line 838
    aget v2, v9, v12

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->tn:I

    if-lt v2, v3, :cond_0

    .line 839
    nop

    .line 840
    nop

    .line 846
    move v0, v12

    goto :goto_1

    .line 841
    :cond_0
    aget v2, v9, v12

    if-le v2, v1, :cond_1

    .line 842
    nop

    .line 843
    aget v0, v9, v12

    .line 837
    move v1, v0

    move v0, v12

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 846
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 847
    return-void
.end method

.method private by()V
    .locals 5

    .line 296
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bC()V

    goto :goto_1

    .line 297
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bB()V

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_5

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 307
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 309
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 310
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_3
    :goto_2
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_4

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_5

    .line 314
    :cond_4
    const-string v0, "ArrowPopupView"

    const-string v1, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_5
    return-void
.end method

.method private bz()Z
    .locals 2

    .line 372
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bA()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 374
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 376
    :cond_1
    return v1
.end method

.method static synthetic c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tw:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/widget/ArrowPopupView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tt:I

    return p0
.end method

.method private g(Landroid/view/View;)Z
    .locals 5

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    .line 322
    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 323
    const-string v2, "getRootWindowInsets"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 324
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 325
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 326
    if-eqz p1, :cond_1

    .line 327
    const-string v0, "android.view.WindowInsets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 328
    const-string v3, "getDisplayCutout"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 330
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 338
    :catch_0
    move-exception p1

    .line 339
    const-string v0, "ArrowPopupView"

    const-string v2, "ClassNotFoundException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 336
    :catch_1
    move-exception p1

    .line 337
    const-string v0, "ArrowPopupView"

    const-string v2, "InvocationTargetException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 334
    :catch_2
    move-exception p1

    .line 335
    const-string v0, "ArrowPopupView"

    const-string v2, "IllegalAccessException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 332
    :catch_3
    move-exception p1

    .line 333
    const-string v0, "ArrowPopupView"

    const-string v2, "NoSuchMethodException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_1
    :goto_0
    nop

    .line 342
    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic h(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private h(Landroid/view/View;)Z
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bA()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 349
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 352
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 354
    return v1

    .line 357
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 358
    return v1

    .line 363
    :catch_0
    move-exception p1

    .line 364
    const-string v0, "ArrowPopupView"

    const-string v1, "NoSuchFieldException in isNotchShow()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 361
    :catch_1
    move-exception p1

    .line 362
    const-string v0, "ArrowPopupView"

    const-string v1, "NoSuchFieldException in isNotchShow()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :cond_1
    nop

    .line 367
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public animateToDismiss()V
    .locals 12

    .line 718
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tm:Z

    if-eqz v0, :cond_0

    .line 719
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 730
    :cond_2
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    .line 732
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 733
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->a([F)V

    .line 735
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    aget v10, v0, v1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 740
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 742
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_3

    .line 743
    const-wide/16 v1, 0x96

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 746
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 749
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 750
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 751
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tx:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 752
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tl:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 754
    return-void
.end method

.method public animateToShow()V
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->invalidate()V

    .line 674
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$3;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 715
    return-void
.end method

.method public enableShowingAnimation(Z)V
    .locals 0

    .line 907
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ts:Z

    .line 908
    return-void
.end method

.method public getArrowMode()I
    .locals 1

    .line 850
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/widget/Button;

    return-object v0
.end method

.method public getRollingPercent()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 567
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->nI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    nop

    .line 572
    nop

    .line 573
    nop

    .line 574
    nop

    .line 575
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 576
    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 578
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 604
    move v2, v3

    move v5, v4

    move v6, v5

    goto :goto_0

    .line 592
    :pswitch_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 593
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 594
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    sub-int/2addr v6, v5

    .line 595
    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    sub-int/2addr v5, v7

    .line 596
    goto :goto_0

    .line 598
    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    .line 599
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->tr:I

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 600
    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    sub-int v6, v5, v6

    .line 601
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v7

    sub-int v5, v7, v5

    goto :goto_0

    .line 580
    :pswitch_2
    nop

    .line 581
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 582
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    sub-int v5, v2, v5

    .line 583
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    sub-int v2, v6, v2

    .line 584
    nop

    .line 604
    move v6, v5

    move v5, v2

    move v2, v3

    goto :goto_0

    .line 586
    :pswitch_3
    const/high16 v2, 0x43340000    # 180.0f

    .line 587
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->tq:I

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 588
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 589
    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    sub-int/2addr v5, v7

    .line 590
    nop

    .line 604
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 605
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {p1, v2, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 606
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_5

    .line 619
    :pswitch_4
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 620
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v4, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 621
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tt:I

    :goto_1
    int-to-float v0, v0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tt:I

    neg-int v0, v0

    goto :goto_1

    :goto_2
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 622
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 623
    int-to-float v0, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v4, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 609
    :pswitch_5
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tp:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v4, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 611
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tt:I

    :goto_3
    int-to-float v0, v0

    goto :goto_4

    :cond_2
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tt:I

    neg-int v0, v0

    goto :goto_3

    :goto_4
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 613
    int-to-float v0, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 614
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v4, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 615
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 616
    nop

    .line 628
    :goto_5
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 629
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 221
    sget v0, Lcom/miui/internal/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    .line 222
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/widget/FrameLayout;

    .line 223
    sget v0, Lcom/miui/internal/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->nI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 229
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qs:Landroid/widget/LinearLayout;

    .line 233
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qs:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sR:Landroid/widget/TextView;

    .line 235
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/widget/Button;

    .line 236
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/widget/Button;

    .line 238
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 239
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 240
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 559
    iget p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bG()V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->by()V

    .line 563
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 893
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 894
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 897
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->ti:Landroid/graphics/Rect;

    .line 898
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 899
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1, v4}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 901
    return v4

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->th:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->th:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:Landroid/view/View;

    .line 876
    return-void
.end method

.method public setArrowMode(I)V
    .locals 1

    .line 854
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ty:I

    .line 855
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 865
    :pswitch_0
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    goto :goto_1

    .line 869
    :pswitch_1
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->te:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 857
    :pswitch_2
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qs:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tc:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    goto :goto_1

    .line 861
    :pswitch_3
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->td:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    nop

    .line 872
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:Lmiui/widget/ArrowPopupWindow;

    .line 885
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 245
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 879
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:I

    .line 880
    iput p2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sX:I

    .line 881
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void
.end method

.method public setRollingPercent(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qs:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sR:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->th:Landroid/view/View$OnTouchListener;

    .line 889
    return-void
.end method
