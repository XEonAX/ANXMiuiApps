.class Lmiui/widget/Rotation3DLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/Rotation3DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yq:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 443
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 429
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 430
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget p1, p1, v1

    .line 431
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 432
    iget-object v1, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    iget-object v3, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    invoke-static {v3}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    invoke-static {v1, v3}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;F)F

    .line 433
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    invoke-static {v1}, Lmiui/widget/Rotation3DLayout;->b(Lmiui/widget/Rotation3DLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/Rotation3DLayout;->setRotationX(F)V

    .line 435
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 436
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    invoke-static {v1}, Lmiui/widget/Rotation3DLayout;->a(Lmiui/widget/Rotation3DLayout;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->b(Lmiui/widget/Rotation3DLayout;F)F

    .line 437
    iget-object p1, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$4;->Yq:Lmiui/widget/Rotation3DLayout;

    invoke-static {v0}, Lmiui/widget/Rotation3DLayout;->c(Lmiui/widget/Rotation3DLayout;)F

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/widget/Rotation3DLayout;->setRotationY(F)V

    .line 439
    :cond_1
    return-void
.end method
