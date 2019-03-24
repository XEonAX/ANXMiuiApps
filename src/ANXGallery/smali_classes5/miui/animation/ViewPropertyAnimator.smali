.class public Lmiui/animation/ViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/ViewPropertyAnimator$Builder;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0x200

.field public static final CURRENT_HALF_HEIGHT:F = 0.01f

.field public static final CURRENT_HALF_WIDTH:F = 0.007f

.field public static final CURRENT_HEIGHT:F = 0.008f

.field public static final CURRENT_HEIGHT_NEGATIVE:F = 0.009f

.field public static final CURRENT_VALUE:F = 3.4028235E38f

.field public static final CURRENT_WIDTH:F = 0.005f

.field public static final CURRENT_WIDTH_NEGATIVE:F = 0.006f

.field private static final DISPLAY_METRICES_HEIGHT:I

.field private static final DISPLAY_METRICES_WIDTH:I

.field public static final NO_FINAL_VALUE:F = 1.4E-45f

.field public static final NO_FINAL_VISIBILITY:I = -0x1

.field public static final OUT_BOTTOM_SCREEN:F = 0.002f

.field public static final OUT_LEFT_SCREEN:F = 0.003f

.field public static final OUT_RIGHT_SCREEN:F = 0.004f

.field public static final OUT_TOP_SCREEN:F = 0.001f

.field public static final ROTATION:I = 0x10

.field public static final ROTATION_X:I = 0x20

.field public static final ROTATION_Y:I = 0x40

.field public static final SCALE_X:I = 0x4

.field public static final SCALE_Y:I = 0x8

.field public static final TRANSLATION_X:I = 0x1

.field public static final TRANSLATION_Y:I = 0x2

.field public static final X:I = 0x80

.field public static final Y:I = 0x100

.field private static final mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mFinalValue:F

.field private mFinalVisibility:I

.field private mFromValue:F

.field private mProperty:I

.field private mToValue:F

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_WIDTH:I

    .line 40
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_HEIGHT:I

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IFF)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # I
    .param p3, "fromValue"    # F
    .param p4, "toValue"    # F

    .line 103
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    .line 104
    iput-object p1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 105
    iput p2, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    .line 106
    iput p3, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    .line 107
    iput p4, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    .line 109
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/animation/ViewPropertyAnimator$1;

    invoke-direct {v1, p0}, Lmiui/animation/ViewPropertyAnimator$1;-><init>(Lmiui/animation/ViewPropertyAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/animation/ViewPropertyAnimator$2;

    invoke-direct {v1, p0}, Lmiui/animation/ViewPropertyAnimator$2;-><init>(Lmiui/animation/ViewPropertyAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lmiui/animation/ViewPropertyAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/animation/ViewPropertyAnimator;

    .line 12
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 12
    invoke-static {p0, p1}, Lmiui/animation/ViewPropertyAnimator;->setAnimator(Landroid/view/View;Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/animation/ViewPropertyAnimator;)V
    .locals 0
    .param p0, "x0"    # Lmiui/animation/ViewPropertyAnimator;

    .line 12
    invoke-direct {p0}, Lmiui/animation/ViewPropertyAnimator;->setFinalValues()V

    return-void
.end method

.method static synthetic access$300(Lmiui/animation/ViewPropertyAnimator;)F
    .locals 1
    .param p0, "x0"    # Lmiui/animation/ViewPropertyAnimator;

    .line 12
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    return v0
.end method

.method static synthetic access$400(Lmiui/animation/ViewPropertyAnimator;)F
    .locals 1
    .param p0, "x0"    # Lmiui/animation/ViewPropertyAnimator;

    .line 12
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    return v0
.end method

.method static synthetic access$500(Lmiui/animation/ViewPropertyAnimator;F)V
    .locals 0
    .param p0, "x0"    # Lmiui/animation/ViewPropertyAnimator;
    .param p1, "x1"    # F

    .line 12
    invoke-direct {p0, p1}, Lmiui/animation/ViewPropertyAnimator;->setValue(F)V

    return-void
.end method

.method private calulateAnimatorValue(F)F
    .locals 5
    .param p1, "value"    # F

    .line 285
    const v0, 0x3b449ba6    # 0.003f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 286
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v0, v2, :cond_12

    .line 287
    :cond_0
    new-array v0, v4, [I

    .line 288
    .local v0, "location":[I
    iget-object v2, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 289
    sget v2, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_WIDTH:I

    aget v1, v0, v1

    sub-int/2addr v2, v1

    int-to-float p1, v2

    .line 290
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v1, v3, :cond_1

    .line 291
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 293
    .end local v0    # "location":[I
    :cond_1
    goto/16 :goto_0

    .line 294
    :cond_2
    const v0, 0x3b83126f    # 0.004f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    .line 295
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v0, v2, :cond_12

    .line 296
    :cond_3
    new-array v0, v4, [I

    .line 297
    .restart local v0    # "location":[I
    iget-object v2, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 298
    iget-object v2, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result v2

    aget v1, v0, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    neg-float p1, v2

    .line 299
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v1, v3, :cond_4

    .line 300
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 302
    .end local v0    # "location":[I
    :cond_4
    goto/16 :goto_0

    .line 303
    :cond_5
    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, p1, v0

    const/16 v1, 0x100

    if-nez v0, :cond_8

    .line 304
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v0, v4, :cond_12

    .line 305
    :cond_6
    new-array v0, v4, [I

    .line 306
    .restart local v0    # "location":[I
    iget-object v3, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 307
    iget-object v3, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v3}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result v3

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    neg-float p1, v3

    .line 308
    iget v2, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v2, v1, :cond_7

    .line 309
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 311
    .end local v0    # "location":[I
    :cond_7
    goto/16 :goto_0

    .line 312
    :cond_8
    const v0, 0x3b03126f    # 0.002f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    .line 313
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v0, v4, :cond_12

    .line 314
    :cond_9
    new-array v0, v4, [I

    .line 315
    .restart local v0    # "location":[I
    iget-object v3, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 316
    sget v3, Lmiui/animation/ViewPropertyAnimator;->DISPLAY_METRICES_HEIGHT:I

    aget v2, v0, v2

    sub-int/2addr v3, v2

    int-to-float p1, v3

    .line 317
    iget v2, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    if-ne v2, v1, :cond_a

    .line 318
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 320
    .end local v0    # "location":[I
    :cond_a
    goto :goto_0

    .line 321
    :cond_b
    const v0, 0x3c03126f    # 0.008f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    .line 322
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result p1

    goto :goto_0

    .line 323
    :cond_c
    const v0, 0x3ba3d70a    # 0.005f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    .line 324
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result p1

    goto :goto_0

    .line 325
    :cond_d
    const v0, 0x3c1374bc    # 0.009f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    .line 326
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result v0

    neg-float p1, v0

    goto :goto_0

    .line 327
    :cond_e
    const v0, 0x3bc49ba6    # 0.006f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_f

    .line 328
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result v0

    neg-float p1, v0

    goto :goto_0

    .line 329
    :cond_f
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_10

    .line 330
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getHeightOrMeasureHeight(Landroid/view/View;)F

    move-result v0

    div-float p1, v0, v1

    goto :goto_0

    .line 331
    :cond_10
    const v0, 0x3be56042    # 0.007f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    .line 332
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->getWidthOrMeasureWidth(Landroid/view/View;)F

    move-result v0

    div-float p1, v0, v1

    goto :goto_0

    .line 333
    :cond_11
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-nez v0, :cond_12

    .line 334
    invoke-direct {p0}, Lmiui/animation/ViewPropertyAnimator;->getValue()F

    move-result p1

    .line 336
    :cond_12
    :goto_0
    return p1
.end method

.method public static cancelAnimator(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 444
    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 445
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 448
    :cond_0
    return-void
.end method

.method public static getAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 440
    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method public static getHeightOrMeasureHeight(Landroid/view/View;)F
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 423
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 424
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 425
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 424
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 428
    :cond_0
    int-to-float v1, v0

    return v1
.end method

.method private getValue()F
    .locals 3

    .line 340
    const/4 v0, 0x1

    .line 341
    .local v0, "value":F
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    const/16 v2, 0x200

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 347
    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 344
    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    .line 368
    goto :goto_0

    .line 364
    :cond_2
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    .line 365
    goto :goto_0

    .line 355
    :cond_3
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotationY()F

    move-result v0

    .line 356
    goto :goto_0

    .line 352
    :cond_4
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    move-result v0

    .line 353
    goto :goto_0

    .line 349
    :cond_5
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v0

    .line 350
    goto :goto_0

    .line 361
    :cond_6
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v0

    .line 362
    goto :goto_0

    .line 358
    :cond_7
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 359
    nop

    .line 373
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # I
    .param p2, "fromValue"    # F
    .param p3, "toValue"    # F

    .line 99
    new-instance v0, Lmiui/animation/ViewPropertyAnimator;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/animation/ViewPropertyAnimator;-><init>(Landroid/view/View;IFF)V

    .line 100
    .local v0, "anim":Lmiui/animation/ViewPropertyAnimator;
    new-instance v1, Lmiui/animation/ViewPropertyAnimator$Builder;

    invoke-direct {v1, v0}, Lmiui/animation/ViewPropertyAnimator$Builder;-><init>(Lmiui/animation/ViewPropertyAnimator;)V

    return-object v1
.end method

.method private static setAnimator(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 432
    if-eqz p1, :cond_0

    .line 433
    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    :cond_0
    sget-object v0, Lmiui/animation/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_0
    return-void
.end method

.method private setFinalValues()V
    .locals 2

    .line 270
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 274
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->setValue(F)V

    .line 276
    :cond_1
    return-void
.end method

.method private setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .line 377
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 383
    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 380
    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 404
    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 401
    goto :goto_0

    .line 391
    :cond_3
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 392
    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 389
    goto :goto_0

    .line 385
    :cond_5
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 386
    goto :goto_0

    .line 397
    :cond_6
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 398
    goto :goto_0

    .line 394
    :cond_7
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 395
    nop

    .line 409
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupValues()V
    .locals 1

    .line 279
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->calulateAnimatorValue(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    .line 280
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->calulateAnimatorValue(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    .line 281
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    invoke-direct {p0, v0}, Lmiui/animation/ViewPropertyAnimator;->calulateAnimatorValue(F)F

    move-result v0

    iput v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    .line 282
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 248
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 249
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .line 258
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Lmiui/animation/ViewPropertyAnimator;

    .line 259
    .local v0, "anim":Lmiui/animation/ViewPropertyAnimator;
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 260
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    iput-object v1, v0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 261
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mProperty:I

    .line 262
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mFromValue:F

    .line 263
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mToValue:F

    .line 264
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    .line 265
    iget v1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    iput v1, v0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    .line 266
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lmiui/animation/ViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 1

    .line 253
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 254
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 185
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinalValue()F
    .locals 1

    .line 217
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    return v0
.end method

.method public getFinalVisibility()I
    .locals 1

    .line 209
    iget v0, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 193
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 201
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 169
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidthOrMeasureWidth(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 413
    .local v0, "width":I
    if-nez v0, :cond_0

    .line 414
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 415
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 414
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 418
    :cond_0
    int-to-float v1, v0

    return v1
.end method

.method public isRunning()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    .line 179
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    return-object p0
.end method

.method public setFinalValue(F)V
    .locals 0
    .param p1, "value"    # F

    .line 213
    iput p1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalValue:F

    .line 214
    return-void
.end method

.method public setFinalVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 205
    iput p1, p0, Lmiui/animation/ViewPropertyAnimator;->mFinalVisibility:I

    .line 206
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .line 222
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1
    .param p1, "value"    # I

    .line 189
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 190
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "value"    # I

    .line 197
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 198
    return-void
.end method

.method public setStartDelay(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .line 174
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    return-void
.end method

.method public start()V
    .locals 3

    .line 232
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->cancelAnimator(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 234
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 237
    :cond_0
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 238
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-static {v1, p0}, Lmiui/animation/ViewPropertyAnimator;->setAnimator(Landroid/view/View;Landroid/animation/Animator;)V

    .line 239
    invoke-direct {p0}, Lmiui/animation/ViewPropertyAnimator;->setupValues()V

    .line 240
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_1
    iget-object v1, p0, Lmiui/animation/ViewPropertyAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 244
    return-void
.end method
