.class public Lcom/miui/internal/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x7

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x5

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x4

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private final rl:Landroid/graphics/Paint;

.field private sN:Landroid/view/View;

.field private sW:I

.field private sX:I

.field private th:Landroid/view/View$OnTouchListener;

.field private tm:Z

.field private tn:I

.field private ty:I

.field private uA:Lmiui/widget/GuidePopupWindow;

.field private uB:Landroid/animation/ObjectAnimator;

.field private uC:I

.field private uD:I

.field private uE:I

.field private uF:I

.field private uG:F

.field private uH:F

.field private uI:F

.field private uJ:I

.field private uK:I

.field private uL:Landroid/content/res/ColorStateList;

.field private uM:Z

.field private uN:Landroid/animation/Animator$AnimatorListener;

.field private uO:Landroid/animation/Animator$AnimatorListener;

.field private uw:Landroid/widget/LinearLayout;

.field private ux:Landroid/widget/LinearLayout;

.field private uy:Z

.field private uz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 166
    sget v0, Lcom/miui/internal/R$attr;->guidePopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uy:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uL:Landroid/content/res/ColorStateList;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    .line 111
    new-instance v0, Lcom/miui/internal/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/GuidePopupView$1;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uN:Landroid/animation/Animator$AnimatorListener;

    .line 133
    new-instance v0, Lcom/miui/internal/widget/GuidePopupView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/GuidePopupView$2;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uO:Landroid/animation/Animator$AnimatorListener;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    .line 172
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    .line 174
    sget-object v1, Lcom/miui/internal/R$styleable;->GuidePopupView:[I

    .line 175
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 178
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_startPointRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uG:F

    .line 179
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_lineLength:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uH:F

    .line 180
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_textCircleRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    .line 181
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_android_colorBackground:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uJ:I

    .line 183
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_paintColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 184
    iget-object p3, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_android_textSize:I

    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uK:I

    .line 187
    sget p2, Lcom/miui/internal/R$styleable;->GuidePopupView_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uL:Landroid/content/res/ColorStateList;

    .line 189
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    iget p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uH:F

    iget p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    const/high16 p3, 0x40200000    # 2.5f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->tn:I

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/internal/widget/GuidePopupView;->uA:Lmiui/widget/GuidePopupWindow;

    return-object p0
.end method

.method private a(ILandroid/widget/LinearLayout;II)V
    .locals 8

    .line 386
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uz:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uH:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    add-float/2addr v0, v1

    .line 387
    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 388
    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 389
    nop

    .line 391
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 416
    move v1, v3

    goto :goto_0

    .line 406
    :pswitch_0
    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 407
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v3, v1

    .line 408
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 409
    goto :goto_0

    .line 411
    :pswitch_1
    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v3, v1

    .line 412
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    .line 396
    int-to-float v1, v2

    add-float/2addr v1, v0

    .line 397
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 398
    goto :goto_0

    .line 402
    :pswitch_3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    .line 403
    int-to-float v1, v2

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 404
    nop

    .line 416
    :goto_0
    nop

    .line 417
    float-to-double v4, v0

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 418
    int-to-float v4, v2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 420
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 430
    :pswitch_4
    add-int/2addr v3, v2

    .line 431
    add-int/2addr v1, v0

    .line 432
    goto :goto_1

    .line 426
    :pswitch_5
    sub-int/2addr v3, v2

    .line 427
    sub-int/2addr v1, v0

    .line 428
    goto :goto_1

    .line 434
    :pswitch_6
    sub-int/2addr v3, v2

    .line 435
    add-int/2addr v1, v0

    goto :goto_1

    .line 422
    :pswitch_7
    add-int/2addr v3, v2

    .line 423
    sub-int/2addr v1, v0

    .line 424
    nop

    .line 438
    :goto_1
    add-int/2addr v3, p3

    .line 439
    add-int/2addr v1, p4

    .line 441
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v3

    .line 442
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v1

    .line 443
    invoke-virtual {p2, v3, v1, p1, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 444
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;III)V
    .locals 7

    .line 325
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float p3, v0

    .line 328
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    int-to-float p4, v0

    .line 330
    nop

    .line 331
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 358
    :goto_0
    move p2, v0

    goto :goto_1

    .line 351
    :pswitch_0
    const/high16 p2, -0x3cf90000    # -135.0f

    .line 352
    goto :goto_1

    .line 348
    :pswitch_1
    const/high16 p2, 0x42340000    # 45.0f

    .line 349
    goto :goto_1

    .line 354
    :pswitch_2
    const/high16 p2, 0x43070000    # 135.0f

    goto :goto_1

    .line 345
    :pswitch_3
    const/high16 p2, -0x3dcc0000    # -45.0f

    .line 346
    goto :goto_1

    .line 339
    :pswitch_4
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 340
    goto :goto_1

    .line 342
    :pswitch_5
    const/high16 p2, 0x42b40000    # 90.0f

    .line 343
    goto :goto_1

    .line 333
    :pswitch_6
    nop

    .line 334
    goto :goto_0

    .line 336
    :pswitch_7
    const/high16 p2, 0x43340000    # 180.0f

    .line 337
    nop

    .line 358
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 361
    iget p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uz:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    .line 364
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v2, p3, v0

    add-float v4, p3, v0

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uG:F

    add-float v5, p4, v0

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 365
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uG:F

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 366
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 368
    iget-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    iget-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    iget p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uH:F

    add-float v5, p4, p2

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p3

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    iget p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uH:F

    add-float/2addr p4, p2

    .line 376
    iget p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    add-float/2addr p4, p2

    .line 377
    iget-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    iget p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 382
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/miui/internal/widget/GuidePopupView;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView;->tm:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private bG()V
    .locals 11

    .line 207
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getWidth()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getHeight()I

    move-result v1

    .line 210
    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 211
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 212
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    sub-int v4, v1, v4

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    sub-int/2addr v4, v6

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 213
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    const/4 v6, 0x2

    aput v4, v3, v6

    .line 214
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    sub-int v4, v0, v4

    iget v7, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    sub-int/2addr v4, v7

    const/4 v7, 0x3

    aput v4, v3, v7

    .line 219
    nop

    .line 220
    nop

    .line 221
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    iget v7, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 222
    iget v7, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    iget v8, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    div-int/2addr v8, v6

    add-int/2addr v7, v8

    .line 223
    const/high16 v6, -0x80000000

    move v8, v6

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 224
    aget v9, v3, v5

    iget v10, p0, Lcom/miui/internal/widget/GuidePopupView;->tn:I

    if-lt v9, v10, :cond_0

    .line 225
    nop

    .line 226
    goto :goto_1

    .line 227
    :cond_0
    aget v9, v3, v5

    if-le v9, v8, :cond_1

    .line 228
    nop

    .line 229
    aget v6, v3, v5

    .line 223
    move v8, v6

    move v6, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_2
    move v5, v6

    :goto_1
    const/4 v3, 0x5

    const/4 v6, 0x6

    const/4 v8, 0x7

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 255
    :pswitch_0
    int-to-float v0, v7

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 256
    goto :goto_6

    .line 257
    :cond_3
    sub-int/2addr v1, v7

    int-to-float v0, v1

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 258
    goto :goto_3

    .line 248
    :pswitch_1
    int-to-float v0, v7

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 249
    nop

    .line 263
    :goto_2
    move v2, v6

    goto :goto_6

    .line 250
    :cond_4
    sub-int/2addr v1, v7

    int-to-float v0, v1

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 251
    goto :goto_4

    .line 241
    :pswitch_2
    int-to-float v1, v4

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 242
    goto :goto_6

    .line 243
    :cond_5
    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 244
    goto :goto_2

    .line 234
    :pswitch_3
    int-to-float v1, v4

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 235
    nop

    .line 263
    :goto_3
    move v2, v8

    goto :goto_6

    .line 236
    :cond_6
    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 237
    nop

    .line 263
    :goto_4
    move v2, v3

    goto :goto_6

    :cond_7
    :goto_5
    move v2, v5

    :goto_6
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 264
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bL()V
    .locals 8

    .line 447
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uy:Z

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uz:I

    .line 449
    return-void

    .line 451
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    div-int/lit8 v0, v0, 0x2

    .line 452
    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    div-int/lit8 v1, v1, 0x2

    .line 453
    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 454
    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    packed-switch v3, :pswitch_data_0

    .line 464
    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->uz:I

    goto :goto_0

    .line 461
    :pswitch_0
    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uz:I

    .line 462
    goto :goto_0

    .line 457
    :pswitch_1
    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uz:I

    .line 458
    nop

    .line 467
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bM()I
    .locals 2

    .line 470
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 471
    return v1

    .line 473
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 474
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 476
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private by()V
    .locals 4

    .line 270
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->bL()V

    .line 272
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uw:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->sW:I

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->sX:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->a(ILandroid/widget/LinearLayout;II)V

    .line 273
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uM:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->bM()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->ux:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->sW:I

    neg-int v2, v2

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->sX:I

    neg-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->a(ILandroid/widget/LinearLayout;II)V

    .line 277
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/internal/widget/GuidePopupView;->uN:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method


# virtual methods
.method public addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 7

    .line 563
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    return-void

    .line 566
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 567
    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    .line 570
    :cond_1
    const/4 v0, 0x0

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 571
    iget-object v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    sget v5, Lcom/miui/internal/R$layout;->guide_popup_text_view:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/miui/internal/widget/GuidePopupView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 572
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uK:I

    int-to-float v3, v3

    invoke-virtual {v4, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 574
    iget-object v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uL:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 575
    iget-object v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uL:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 577
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    :cond_3
    return-void

    .line 568
    :cond_4
    :goto_1
    return-void
.end method

.method public animateToDismiss()V
    .locals 4

    .line 501
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->tm:Z

    if-eqz v0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 507
    :cond_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    .line 508
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 509
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uO:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 510
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uB:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 511
    return-void
.end method

.method public animateToShow()V
    .locals 2

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setAlpha(F)V

    .line 482
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->invalidate()V

    .line 483
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/GuidePopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/GuidePopupView$3;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 498
    return-void
.end method

.method public clearOffset()V
    .locals 1

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setOffset(II)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uy:Z

    .line 552
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 308
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 311
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->sW:I

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->sX:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/internal/widget/GuidePopupView;->a(Landroid/graphics/Canvas;III)V

    .line 318
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uM:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->bM()I

    move-result v0

    .line 320
    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->sW:I

    neg-int v1, v1

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->sX:I

    neg-int v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/internal/widget/GuidePopupView;->a(Landroid/graphics/Canvas;III)V

    .line 322
    :cond_0
    return-void
.end method

.method public getArrowMode()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    return v0
.end method

.method public getColorBackground()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uJ:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 198
    sget v0, Lcom/miui/internal/R$id;->text_group:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uw:Landroid/widget/LinearLayout;

    .line 199
    sget v0, Lcom/miui/internal/R$id;->mirrored_text_group:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->ux:Landroid/widget/LinearLayout;

    .line 200
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 281
    iget p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    if-nez p1, :cond_1

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uw:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 285
    iget-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uw:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 286
    int-to-double p3, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    int-to-double p1, p2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 287
    div-double/2addr p1, v0

    iget p3, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    float-to-double p3, p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    .line 288
    iget-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uM:Z

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->ux:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 290
    iget-object p2, p0, Lcom/miui/internal/widget/GuidePopupView;->ux:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 291
    int-to-double p3, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    int-to-double p1, p2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 292
    div-double/2addr p1, v0

    iget p3, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    float-to-double p3, p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uI:F

    .line 295
    :cond_2
    iget p1, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->bG()V

    goto :goto_0

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->by()V

    .line 300
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 588
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 590
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    iget-object v5, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    .line 591
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 592
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 594
    return v2

    .line 596
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uA:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {p1, v2}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    .line 597
    return v2
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 1

    .line 532
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    .line 534
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uE:I

    .line 535
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uF:I

    .line 537
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 538
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->sN:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 539
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->uC:I

    .line 540
    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uD:I

    .line 541
    return-void
.end method

.method public setArrowMode(I)V
    .locals 0

    .line 518
    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->ty:I

    .line 519
    return-void
.end method

.method public setArrowMode(IZ)V
    .locals 0

    .line 522
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 523
    iput-boolean p2, p0, Lcom/miui/internal/widget/GuidePopupView;->uM:Z

    .line 524
    iget-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uM:Z

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->ux:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->ux:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    :goto_0
    return-void
.end method

.method public setGuidePopupWindow(Lmiui/widget/GuidePopupWindow;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uA:Lmiui/widget/GuidePopupWindow;

    .line 556
    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->sW:I

    .line 545
    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->sX:I

    .line 546
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView;->uy:Z

    .line 547
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->th:Landroid/view/View$OnTouchListener;

    .line 583
    return-void
.end method
