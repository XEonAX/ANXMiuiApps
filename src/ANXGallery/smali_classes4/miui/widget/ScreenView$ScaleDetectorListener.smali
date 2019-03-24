.class Lmiui/widget/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# static fields
.field private static final ZC:F = 200.0f

.field private static final ZD:F = 0.95f

.field private static final ZE:F = 0.8f

.field private static final ZF:F = 1.2f


# instance fields
.field final synthetic Zv:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    .line 2299
    iput-object p1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0

    .line 2299
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 2319
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2320
    iget-object v1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    invoke-static {v1}, Lmiui/widget/ScreenView;->g(Lmiui/widget/ScreenView;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2321
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x3f86bca2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 2324
    :cond_0
    iget-object v1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lmiui/widget/ScreenView;->a(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V

    .line 2326
    :cond_1
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_2

    .line 2327
    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 2328
    return v2

    .line 2330
    :cond_2
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 2331
    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 2332
    return v2

    .line 2334
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 2311
    iget-object p1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->g(Lmiui/widget/ScreenView;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 2315
    iget-object p1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->Zv:Lmiui/widget/ScreenView;

    invoke-virtual {p1}, Lmiui/widget/ScreenView;->finishCurrentGesture()V

    .line 2316
    return-void
.end method
