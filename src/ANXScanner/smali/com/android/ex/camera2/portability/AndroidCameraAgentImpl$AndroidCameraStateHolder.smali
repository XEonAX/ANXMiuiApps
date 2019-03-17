.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;
.super Lcom/android/ex/camera2/portability/CameraStateHolder;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCameraStateHolder"
.end annotation


# static fields
.field public static final CAMERA_CAPTURING:I = 0x8

.field public static final CAMERA_FOCUSING:I = 0x10

.field public static final CAMERA_IDLE:I = 0x2

.field public static final CAMERA_UNLOCKED:I = 0x4

.field public static final CAMERA_UNOPENED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraStateHolder;-><init>(I)V

    .line 1081
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(I)V

    .line 1085
    return-void
.end method
