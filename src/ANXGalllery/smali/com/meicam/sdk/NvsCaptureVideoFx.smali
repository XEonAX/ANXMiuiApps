.class public Lcom/meicam/sdk/NvsCaptureVideoFx;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsCaptureVideoFx.java"


# static fields
.field public static final CAPTURE_VIDEOFX_TYPE_BUILTIN:I = 0x0

.field public static final CAPTURE_VIDEOFX_TYPE_CUSTOM:I = 0x2

.field public static final CAPTURE_VIDEOFX_TYPE_PACKAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeGetBuiltinCaptureVideoFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptureVideoFxPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptureVideoFxType(J)I
.end method

.method private native nativeGetIndex(J)I
.end method


# virtual methods
.method public getBuiltinCaptureVideoFxName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureVideoFx;->nativeGetBuiltinCaptureVideoFxName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureVideoFxPackageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureVideoFx;->nativeGetCaptureVideoFxPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureVideoFxType()I
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 42
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureVideoFx;->nativeGetCaptureVideoFxType(J)I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCaptureVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsCaptureVideoFx;->nativeGetIndex(J)I

    move-result v0

    return v0
.end method
