.class final Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p2, "x1"    # Lcom/xiaomi/scanner/camera/CaptureModule$1;

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "rawData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2002(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1269
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterToRawCallbackTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1270
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule$RawPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v4}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1500(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1271
    return-void
.end method
