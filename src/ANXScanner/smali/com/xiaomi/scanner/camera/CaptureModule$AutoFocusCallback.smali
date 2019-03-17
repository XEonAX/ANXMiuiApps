.class final Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/camera/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V
    .locals 0

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/camera/CaptureModule;Lcom/xiaomi/scanner/camera/CaptureModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/scanner/camera/CaptureModule;
    .param p2, "x1"    # Lcom/xiaomi/scanner/camera/CaptureModule$1;

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;-><init>(Lcom/xiaomi/scanner/camera/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2100(Lcom/xiaomi/scanner/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onAutoFocus: paused"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1349
    :goto_0
    return-void

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2800(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2702(Lcom/xiaomi/scanner/camera/CaptureModule;J)J

    .line 1343
    invoke-static {}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$1800()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocusTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v2}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2700(Lcom/xiaomi/scanner/camera/CaptureModule;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms  focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$2900(Lcom/xiaomi/scanner/camera/CaptureModule;I)V

    .line 1345
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/CaptureModule$AutoFocusCallback;->this$0:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->access$800(Lcom/xiaomi/scanner/camera/CaptureModule;)Lcom/xiaomi/scanner/camera/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/scanner/camera/FocusManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
