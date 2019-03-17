.class public Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
.super Ljava/lang/Object;
.source "CameraAgent.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStartPreviewCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p2, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method
