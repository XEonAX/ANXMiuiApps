.class Lcom/xiaomi/scanner/camera/MotionManager$1;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/MotionManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/camera/MotionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/camera/MotionManager;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 100
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$000(Lcom/xiaomi/scanner/camera/MotionManager;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 101
    .local v2, "elapseTime":J
    const-wide/32 v6, 0x5f5e100

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$000(Lcom/xiaomi/scanner/camera/MotionManager;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v6, v7}, Lcom/xiaomi/scanner/camera/MotionManager;->access$002(Lcom/xiaomi/scanner/camera/MotionManager;J)J

    goto :goto_0

    .line 110
    :cond_3
    long-to-float v1, v2

    const v6, 0x3089705f    # 1.0E-9f

    mul-float v0, v1, v6

    .line 111
    .local v0, "dT":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v10

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    mul-float/2addr v1, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v11

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v12

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v12

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 114
    .local v4, "w":D
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v6, v7}, Lcom/xiaomi/scanner/camera/MotionManager;->access$002(Lcom/xiaomi/scanner/camera/MotionManager;J)J

    .line 116
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v4, v6

    if-lez v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$100(Lcom/xiaomi/scanner/camera/MotionManager;)V

    goto :goto_0

    .line 121
    :cond_4
    const-wide v6, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpg-double v1, v4, v6

    if-ltz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    iget-object v6, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v6}, Lcom/xiaomi/scanner/camera/MotionManager;->access$200(Lcom/xiaomi/scanner/camera/MotionManager;)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/xiaomi/scanner/camera/MotionManager;->access$202(Lcom/xiaomi/scanner/camera/MotionManager;D)D

    .line 125
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$200(Lcom/xiaomi/scanner/camera/MotionManager;)D

    move-result-wide v6

    const-wide v8, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpl-double v1, v6, v8

    if-lez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcom/xiaomi/scanner/camera/MotionManager;->access$202(Lcom/xiaomi/scanner/camera/MotionManager;D)D

    .line 128
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/MotionManager$1;->this$0:Lcom/xiaomi/scanner/camera/MotionManager;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/MotionManager;->access$100(Lcom/xiaomi/scanner/camera/MotionManager;)V

    goto/16 :goto_0
.end method
