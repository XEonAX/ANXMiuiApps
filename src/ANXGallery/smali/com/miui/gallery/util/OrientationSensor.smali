.class public Lcom/miui/gallery/util/OrientationSensor;
.super Landroid/view/OrientationEventListener;
.source "OrientationSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mListener:Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mEnabled:Z

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/util/OrientationSensor;->restoreFromSurfaceRotation(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    .line 17
    return-void
.end method

.method public static restoreFromSurfaceRotation(I)I
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 95
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 87
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 91
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 93
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private roundOrientation(II)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "orientationHistory"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    add-int/lit8 v2, p1, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p2, v2, 0x168

    .line 65
    .end local p2    # "orientationHistory":I
    :cond_0
    return p2

    .line 58
    .restart local p2    # "orientationHistory":I
    :cond_1
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 59
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static transfer2SurfaceRotation(I)I
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 70
    sparse-switch p0, :sswitch_data_0

    .line 80
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 72
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 76
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 78
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mEnabled:Z

    .line 33
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mEnabled:Z

    .line 27
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mEnabled:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 41
    iget v1, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/util/OrientationSensor;->roundOrientation(II)I

    move-result v0

    .line 42
    .local v0, "iOrientation":I
    iget v1, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 43
    rem-int/lit16 v1, v0, 0xb4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/util/OrientationSensor;->mListener:Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/util/OrientationSensor;->mListener:Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;

    iget v2, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    invoke-interface {v1, v2, v0}, Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;->onOrientationChanged(II)V

    .line 49
    :cond_2
    iput v0, p0, Lcom/miui/gallery/util/OrientationSensor;->mOrientation:I

    goto :goto_0
.end method

.method public setOrientationChangedListener(Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/gallery/util/OrientationSensor;->mListener:Lcom/miui/gallery/util/OrientationSensor$OnOrientationChangedListener;

    .line 21
    return-void
.end method
