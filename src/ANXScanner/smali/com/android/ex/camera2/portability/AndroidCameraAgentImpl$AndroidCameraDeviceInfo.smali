.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCameraDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;
    }
.end annotation


# instance fields
.field private final mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

.field private final mFirstBackCameraId:I

.field private final mFirstFrontCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method private constructor <init>([Landroid/hardware/Camera$CameraInfo;III)V
    .locals 0
    .param p1, "info"    # [Landroid/hardware/Camera$CameraInfo;
    .param p2, "numberOfCameras"    # I
    .param p3, "firstBackCameraId"    # I
    .param p4, "firstFrontCameraId"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    .line 140
    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    .line 141
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    .line 142
    iput p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    .line 143
    return-void
.end method

.method public static create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    .locals 8

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    .line 150
    .local v5, "numberOfCameras":I
    new-array v0, v5, [Landroid/hardware/Camera$CameraInfo;

    .line 151
    .local v0, "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 152
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v6, v0, v4

    .line 153
    aget-object v6, v0, v4

    invoke-static {v4, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v6

    const-string v7, "Exception while creating CameraDeviceInfo"

    invoke-static {v6, v7, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    const/4 v6, 0x0

    .line 173
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    return-object v6

    .line 160
    .restart local v0    # "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    .restart local v4    # "i":I
    :cond_0
    const/4 v3, -0x1

    .line 161
    .local v3, "firstFront":I
    const/4 v2, -0x1

    .line 163
    .local v2, "firstBack":I
    add-int/lit8 v4, v5, -0x1

    :goto_2
    if-ltz v4, :cond_3

    .line 164
    aget-object v6, v0, v4

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_2

    .line 165
    move v2, v4

    .line 163
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 167
    :cond_2
    aget-object v6, v0, v4

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 168
    move v3, v4

    goto :goto_3

    .line 173
    :cond_3
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    invoke-direct {v6, v0, v5, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;-><init>([Landroid/hardware/Camera$CameraInfo;III)V

    goto :goto_1
.end method


# virtual methods
.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v1, p1

    .line 179
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    .line 182
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    return v0
.end method
