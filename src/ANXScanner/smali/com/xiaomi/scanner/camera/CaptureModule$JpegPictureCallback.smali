.class final Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;
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
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field private mRequestModuleReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1
    .param p2, "module"    # Lcom/xiaomi/scanner/module/ModuleController;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->mRequestModuleReference:Ljava/lang/ref/WeakReference;

    .line 1279
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 10
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const-wide/16 v8, 0x0

    .line 1283
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onPictureTaken"

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1284
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2100(Lcom/xiaomi/scanner/camera/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    :goto_0
    return-void

    .line 1288
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->stopPreview()V

    .line 1290
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2202(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1294
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    .line 1295
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1296
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1500(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1295
    invoke-static {v2, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1297
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1298
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2200(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1900(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1297
    invoke-static {v2, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2402(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1305
    :goto_1
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pictureDisplayedToJpegCallbackTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1306
    invoke-static {v4}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2400(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1305
    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1309
    .local v0, "now":J
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2200(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2502(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1310
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jpegCallbackFinishTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v4}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2500(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1311
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2, v8, v9}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2202(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1313
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->savePhoto([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_0

    .line 1300
    .end local v0    # "now":J
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1301
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1500(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1300
    invoke-static {v2, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2302(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1302
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1303
    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2200(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2000(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1302
    invoke-static {v2, v4, v5}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2402(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    goto/16 :goto_1
.end method

.method savePhoto([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->mRequestModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/module/ModuleController;

    .line 1322
    .local v0, "moduleController":Lcom/xiaomi/scanner/module/ModuleController;
    if-eqz v0, :cond_0

    .line 1323
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$JpegPictureCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2600(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/app/ScanActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V

    .line 1331
    return-void
.end method
