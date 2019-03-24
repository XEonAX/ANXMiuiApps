.class public Lmiui/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownPopupWindow$ListController;,
        Lmiui/widget/DropDownPopupWindow$ViewContentController;,
        Lmiui/widget/DropDownPopupWindow$DefaultContainerController;,
        Lmiui/widget/DropDownPopupWindow$ContentController;,
        Lmiui/widget/DropDownPopupWindow$ContainerController;,
        Lmiui/widget/DropDownPopupWindow$Controller;,
        Lmiui/widget/DropDownPopupWindow$ContainerView;
    }
.end annotation


# instance fields
.field private Rk:Landroid/widget/PopupWindow;

.field private Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

.field private Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

.field private Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

.field private Ro:Lmiui/widget/DropDownPopupWindow$Controller;

.field private Rp:I

.field private Rq:I

.field private Rr:Z

.field private Rs:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Rt:Landroid/animation/Animator$AnimatorListener;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private oP:Landroid/view/View;

.field private vE:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->Rp:I

    .line 46
    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->Rq:I

    .line 49
    new-instance v0, Lmiui/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$1;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rs:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 61
    new-instance v0, Lmiui/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$2;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rt:Landroid/animation/Animator$AnimatorListener;

    .line 255
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 256
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    .line 257
    new-instance v0, Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/widget/DropDownPopupWindow$ContainerView;-><init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    .line 258
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 259
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eC()V

    .line 260
    return-void
.end method

.method static synthetic a(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private aW()I
    .locals 4

    .line 407
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 408
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 409
    if-lez v1, :cond_0

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;
    .locals 0

    .line 35
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;
    .locals 0

    .line 35
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    return-object p0
.end method

.method private c(FFI)V
    .locals 4

    .line 344
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 348
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_4

    .line 349
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 350
    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    aput p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 354
    :goto_0
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    sget-boolean p2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p2, :cond_3

    int-to-long p2, p3

    goto :goto_1

    :cond_3
    const-wide/16 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow;->Rs:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow;->Rt:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 359
    :cond_4
    return-void
.end method

.method static synthetic d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;
    .locals 0

    .line 35
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-object p0
.end method

.method static synthetic e(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method private eC()V
    .locals 4

    .line 263
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 265
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 267
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 269
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2, v3}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    .line 270
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 271
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 272
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 273
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    new-instance v2, Lmiui/widget/DropDownPopupWindow$3;

    invoke-direct {v2, p0}, Lmiui/widget/DropDownPopupWindow$3;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v3}, Lmiui/widget/DropDownPopupWindow$ContainerView;->setFocusableInTouchMode(Z)V

    .line 288
    nop

    .line 290
    :try_start_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$attr;->arrowPopupWindowDimColor:I

    invoke-static {v0, v2}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 298
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 301
    :cond_1
    :goto_1
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v1, v0}, Lmiui/widget/DropDownPopupWindow$ContainerView;->setBackgroundColor(I)V

    .line 302
    return-void
.end method

.method private eD()V
    .locals 1

    .line 362
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 365
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onDismiss()V

    .line 368
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->onDismiss()V

    .line 371
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Rr:Z

    .line 372
    return-void
.end method

.method private eE()V
    .locals 5

    .line 380
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    .line 381
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 382
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 383
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 384
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 390
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 391
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 392
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 393
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->aW()I

    move-result v4

    .line 399
    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_0

    const/4 v4, 0x0

    .line 400
    :cond_0
    add-int/2addr v3, v4

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    .line 401
    if-lez v3, :cond_1

    .line 402
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 404
    :cond_1
    return-void
.end method

.method static synthetic f(Lmiui/widget/DropDownPopupWindow;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lmiui/widget/DropDownPopupWindow;->Rr:Z

    return p0
.end method

.method static synthetic g(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eD()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;
    .locals 0

    .line 35
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Ro:Lmiui/widget/DropDownPopupWindow$Controller;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Rr:Z

    .line 376
    iget v0, p0, Lmiui/widget/DropDownPopupWindow;->Rq:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lmiui/widget/DropDownPopupWindow;->c(FFI)V

    .line 377
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 146
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    .line 306
    return-void
.end method

.method public setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    .line 136
    return-void
.end method

.method public setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    .line 139
    return-void
.end method

.method public setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Ro:Lmiui/widget/DropDownPopupWindow$Controller;

    .line 143
    return-void
.end method

.method public show()V
    .locals 6

    .line 309
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto/16 :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rm:Lmiui/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 318
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v2, v3}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onAddContent(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    :cond_2
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ContainerView;->removeAllViews()V

    .line 321
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lmiui/widget/DropDownPopupWindow$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :cond_3
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rn:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onShow()V

    .line 329
    :cond_4
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lmiui/widget/DropDownPopupWindow;->Rp:I

    invoke-direct {p0, v0, v2, v3}, Lmiui/widget/DropDownPopupWindow;->c(FFI)V

    .line 331
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 332
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eE()V

    .line 333
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 334
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 335
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lmiui/widget/DropDownPopupWindow;->oP:Landroid/view/View;

    .line 336
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 335
    invoke-virtual {v2, v3, v1, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 337
    goto :goto_0

    .line 338
    :cond_5
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rl:Lmiui/widget/DropDownPopupWindow$ContainerView;

    const v3, 0x800033

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 341
    :goto_0
    return-void
.end method
