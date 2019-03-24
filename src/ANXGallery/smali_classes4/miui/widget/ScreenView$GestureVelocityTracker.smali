.class Lmiui/widget/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# static fields
.field private static final Zw:F = 3.0f


# instance fields
.field final synthetic Zv:Lmiui/widget/ScreenView;

.field private Zx:I

.field private Zy:F

.field private Zz:F

.field private rc:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    .line 2052
    iput-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zv:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zx:I

    .line 2060
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zy:F

    .line 2062
    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0

    .line 2052
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 2098
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zx:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zy:F

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    .line 2099
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2073
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2074
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    .line 2076
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2078
    iget v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2079
    iget v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zx:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2080
    if-eq v1, v2, :cond_1

    .line 2081
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_0

    .line 2083
    :cond_1
    iput v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zx:I

    .line 2086
    :cond_2
    :goto_0
    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zy:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 2087
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zy:F

    .line 2088
    return-void

    .line 2090
    :cond_3
    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    .line 2091
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    .line 2092
    return-void

    .line 2094
    :cond_4
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    .line 2095
    return-void
.end method

.method public e(F)I
    .locals 1

    .line 2117
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 2118
    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    iget v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zy:F

    sub-float/2addr p1, v0

    .line 2119
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zv:Lmiui/widget/ScreenView;

    invoke-static {v0}, Lmiui/widget/ScreenView;->c(Lmiui/widget/ScreenView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zz:F

    iget v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zy:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    .line 2120
    :cond_1
    const/4 p1, 0x3

    .line 2119
    :goto_0
    return p1

    .line 2122
    :cond_2
    const/4 p1, 0x4

    return p1
.end method

.method public init(I)V
    .locals 1

    .line 2102
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2105
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2107
    :goto_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 2108
    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zx:I

    .line 2109
    return-void
.end method

.method public j(III)F
    .locals 1

    .line 2112
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2113
    iget-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    .line 2065
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2067
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->rc:Landroid/view/VelocityTracker;

    .line 2069
    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 2070
    return-void
.end method
