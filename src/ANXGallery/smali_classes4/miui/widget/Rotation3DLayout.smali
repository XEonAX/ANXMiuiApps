.class public Lmiui/widget/Rotation3DLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/Rotation3DLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final LAYOUT_DIRECTION_LTR:I = 0x0

.field private static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final XU:I = 0x800033

.field private static final XV:I = 0xa

.field private static final XW:F

.field private static final XX:I = 0x2d

.field private static final Ya:I = 0x12c

.field private static final Yb:[F


# instance fields
.field private XY:F

.field private XZ:F

.field private Yc:I

.field private Yd:[F

.field private Ye:[F

.field private Yf:[F

.field private Yg:J

.field private Yh:Z

.field private Yi:Z

.field private Yj:Z

.field private Yk:Z

.field private Yl:F

.field private Ym:F

.field private Yn:Landroid/hardware/Sensor;

.field private Yo:Landroid/hardware/SensorManager;

.field private Yp:Landroid/hardware/SensorEventListener;

.field private tk:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lmiui/widget/Rotation3DLayout;->d(F)F

    move-result v0

    sput v0, Lmiui/widget/Rotation3DLayout;->XW:F

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/Rotation3DLayout;->Yb:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    .line 49
    sget v0, Lmiui/widget/Rotation3DLayout;->XW:F

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->XZ:F

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->Yc:I

    .line 55
    sget-object v0, Lmiui/widget/Rotation3DLayout;->Yb:[F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yd:[F

    .line 56
    sget-object v0, Lmiui/widget/Rotation3DLayout;->Yb:[F

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Ye:[F

    .line 57
    sget-object v0, Lmiui/widget/Rotation3DLayout;->Yb:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yf:[F

    .line 59
    iput-wide v2, p0, Lmiui/widget/Rotation3DLayout;->Yg:J

    .line 60
    iput-boolean v4, p0, Lmiui/widget/Rotation3DLayout;->Yh:Z

    .line 62
    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Yi:Z

    .line 63
    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Yj:Z

    .line 64
    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Yk:Z

    .line 425
    new-instance v0, Lmiui/widget/Rotation3DLayout$4;

    invoke-direct {v0, p0}, Lmiui/widget/Rotation3DLayout$4;-><init>(Lmiui/widget/Rotation3DLayout;)V

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yp:Landroid/hardware/SensorEventListener;

    .line 84
    sget-object v0, Lcom/miui/internal/R$styleable;->Rotation3DLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    sget p2, Lcom/miui/internal/R$styleable;->Rotation3DLayout_maxRotationDegree:I

    iget p3, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/widget/Rotation3DLayout;->setMaxRotationDegree(F)V

    .line 86
    sget p2, Lcom/miui/internal/R$styleable;->Rotation3DLayout_autoGravityRotation:I

    iget-boolean p3, p0, Lmiui/widget/Rotation3DLayout;->Yk:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->Yk:Z

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;)F
    .locals 0

    .line 37
    iget p0, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    return p0
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0

    .line 37
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Yl:F

    return p1
.end method

.method private a(FZ)V
    .locals 6

    .line 301
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 302
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    neg-float p1, p1

    .line 305
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 306
    return-void

    .line 309
    :cond_2
    if-nez p2, :cond_3

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->Yi:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->Yj:Z

    if-nez p2, :cond_4

    .line 310
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationX(F)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    .line 313
    :cond_4
    return-void
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->a(FZ)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/Rotation3DLayout;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Yj:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/Rotation3DLayout;)F
    .locals 0

    .line 37
    iget p0, p0, Lmiui/widget/Rotation3DLayout;->Yl:F

    return p0
.end method

.method static synthetic b(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0

    .line 37
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Ym:F

    return p1
.end method

.method private b(FZ)V
    .locals 6

    .line 316
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 317
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    neg-float p1, p1

    .line 320
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 321
    return-void

    .line 324
    :cond_2
    if-nez p2, :cond_3

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->Yi:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lmiui/widget/Rotation3DLayout;->Yj:Z

    if-nez p2, :cond_4

    .line 325
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationY(F)V

    .line 326
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    .line 328
    :cond_4
    return-void
.end method

.method static synthetic b(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->b(FZ)V

    return-void
.end method

.method static synthetic c(Lmiui/widget/Rotation3DLayout;)F
    .locals 0

    .line 37
    iget p0, p0, Lmiui/widget/Rotation3DLayout;->Ym:F

    return p0
.end method

.method private static d(F)F
    .locals 2

    .line 422
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method private d(IF)I
    .locals 2

    .line 418
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    int-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public enableAutoRotationByGravity(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Yk:Z

    .line 104
    iget-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Yk:Z

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    .line 109
    :goto_0
    return-void
.end method

.method public enableTouchRotation(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Yh:Z

    .line 96
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 344
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 345
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    .line 346
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 448
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lmiui/widget/Rotation3DLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 458
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 453
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaxRotationDegree()F
    .locals 1

    .line 239
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Yh:Z

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 247
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 350
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getChildCount()I

    move-result v1

    .line 352
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingLeft()I

    move-result v2

    .line 353
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 355
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingTop()I

    move-result v4

    .line 356
    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 358
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_9

    .line 359
    invoke-virtual {v0, v7}, Lmiui/widget/Rotation3DLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 360
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    .line 361
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmiui/widget/Rotation3DLayout$LayoutParams;

    .line 363
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 364
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 369
    iget v12, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->gravity:I

    .line 370
    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 371
    const v12, 0x800033

    .line 374
    :cond_0
    nop

    .line 375
    invoke-static {v12, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    .line 376
    and-int/lit8 v12, v12, 0x70

    .line 378
    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    const/4 v14, 0x3

    if-eq v13, v14, :cond_2

    const/4 v14, 0x5

    if-eq v13, v14, :cond_1

    .line 390
    iget v13, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v2

    goto :goto_1

    .line 387
    :cond_1
    sub-int v13, v3, v10

    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v13, v14

    .line 388
    goto :goto_1

    .line 380
    :cond_2
    iget v13, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v2

    .line 381
    goto :goto_1

    .line 383
    :cond_3
    sub-int v13, v3, v2

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v2

    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v13, v14

    .line 385
    nop

    .line 393
    :goto_1
    const/16 v14, 0x10

    if-eq v12, v14, :cond_6

    const/16 v14, 0x30

    if-eq v12, v14, :cond_5

    const/16 v14, 0x50

    if-eq v12, v14, :cond_4

    .line 405
    iget v12, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v4

    goto :goto_2

    .line 402
    :cond_4
    sub-int v12, v5, v11

    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v14

    .line 403
    goto :goto_2

    .line 395
    :cond_5
    iget v12, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v4

    .line 396
    goto :goto_2

    .line 398
    :cond_6
    sub-int v12, v5, v4

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v14

    .line 400
    nop

    .line 408
    :goto_2
    iget v14, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v15

    invoke-direct {v0, v14, v15}, Lmiui/widget/Rotation3DLayout;->d(IF)I

    move-result v14

    add-int/2addr v13, v14

    .line 409
    iget v9, v9, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v14

    invoke-direct {v0, v9, v14}, Lmiui/widget/Rotation3DLayout;->d(IF)I

    move-result v9

    sub-int/2addr v12, v9

    .line 410
    if-nez p1, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v14

    if-ne v13, v14, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    if-eq v12, v14, :cond_8

    .line 411
    :cond_7
    add-int/2addr v10, v13

    add-int/2addr v11, v12

    invoke-virtual {v8, v13, v12, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 358
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 415
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 253
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Yh:Z

    if-nez v0, :cond_0

    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 259
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/widget/Rotation3DLayout;->Yg:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->Yi:Z

    .line 282
    goto :goto_1

    .line 264
    :cond_1
    :goto_0
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/Rotation3DLayout;->Yg:J

    .line 267
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 269
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 270
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 271
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 274
    :cond_3
    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget v2, p0, Lmiui/widget/Rotation3DLayout;->XZ:F

    mul-float/2addr v4, v2

    invoke-direct {p0, v4, v1}, Lmiui/widget/Rotation3DLayout;->a(FZ)V

    .line 275
    int-to-float v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lmiui/widget/Rotation3DLayout;->XZ:F

    mul-float/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lmiui/widget/Rotation3DLayout;->b(FZ)V

    .line 276
    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->Yi:Z

    .line 277
    nop

    .line 286
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 287
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 332
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 333
    if-nez p2, :cond_0

    .line 334
    iget-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->Yk:Z

    if-eqz p1, :cond_1

    .line 335
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    .line 340
    :cond_1
    :goto_0
    return-void
.end method

.method protected resetRotation()V
    .locals 8

    .line 143
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    .line 145
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    new-instance v3, Lmiui/widget/Rotation3DLayout$1;

    invoke-direct {v3, p0}, Lmiui/widget/Rotation3DLayout$1;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 167
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    new-instance v3, Lmiui/widget/Rotation3DLayout$2;

    invoke-direct {v3, p0}, Lmiui/widget/Rotation3DLayout$2;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    iget v3, p0, Lmiui/widget/Rotation3DLayout;->Yc:I

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 178
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    new-instance v4, Lmiui/widget/Rotation3DLayout$3;

    invoke-direct {v4, p0}, Lmiui/widget/Rotation3DLayout$3;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget v4, p0, Lmiui/widget/Rotation3DLayout;->Yc:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object v4, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 190
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v0

    .line 191
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v3

    .line 193
    move v4, v2

    :goto_0
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->Yd:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 194
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->Ye:[F

    iget v6, p0, Lmiui/widget/Rotation3DLayout;->Yl:F

    iget-object v7, p0, Lmiui/widget/Rotation3DLayout;->Yd:[F

    aget v7, v7, v4

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 195
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->Yf:[F

    iget v6, p0, Lmiui/widget/Rotation3DLayout;->Ym:F

    iget-object v7, p0, Lmiui/widget/Rotation3DLayout;->Yd:[F

    aget v7, v7, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->Ye:[F

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 198
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->Yf:[F

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 199
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 200
    return-void
.end method

.method public setMaxRotationDegree(F)V
    .locals 0

    .line 230
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->XY:F

    .line 231
    invoke-static {p1}, Lmiui/widget/Rotation3DLayout;->d(F)F

    move-result p1

    iput p1, p0, Lmiui/widget/Rotation3DLayout;->XZ:F

    .line 232
    return-void
.end method

.method public setResetAnimDuration(I)V
    .locals 0

    .line 208
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->Yc:I

    .line 209
    return-void
.end method

.method public setResetBouncePatterns([F)V
    .locals 2

    .line 218
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 219
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout;->Yd:[F

    .line 220
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Ye:[F

    .line 221
    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout;->Yf:[F

    .line 223
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->a(FZ)V

    .line 293
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->b(FZ)V

    .line 298
    return-void
.end method

.method public startGravityDetection()V
    .locals 4

    .line 115
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    .line 118
    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yn:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yn:Landroid/hardware/Sensor;

    .line 120
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->Yp:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->Yn:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    :cond_1
    return-void
.end method

.method public stopGravityDetection()V
    .locals 3

    .line 128
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yn:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->Yp:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->Yn:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yn:Landroid/hardware/Sensor;

    .line 131
    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->Yo:Landroid/hardware/SensorManager;

    .line 132
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    .line 134
    :cond_0
    return-void
.end method

.method protected stopResetRotation()V
    .locals 1

    .line 137
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 140
    :cond_0
    return-void
.end method
