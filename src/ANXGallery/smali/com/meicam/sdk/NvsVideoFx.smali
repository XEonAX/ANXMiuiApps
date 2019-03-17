.class public Lcom/meicam/sdk/NvsVideoFx;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsVideoFx.java"


# static fields
.field public static final VIDEOFX_TYPE_BUILTIN:I = 0x0

.field public static final VIDEOFX_TYPE_CUSTOM:I = 0x2

.field public static final VIDEOFX_TYPE_PACKAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeGetBuiltinVideoFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetIndex(J)I
.end method

.method private native nativeGetVideoFxPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetVideoFxType(J)I
.end method

.method private native nativeMapPointFromCanonicalToParticleSystem(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method


# virtual methods
.method public getBuiltinVideoFxName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoFx;->nativeGetBuiltinVideoFxName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoFx;->nativeGetIndex(J)I

    move-result v0

    return v0
.end method

.method public getVideoFxPackageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 75
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoFx;->nativeGetVideoFxPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFxType()I
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 43
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoFx;->nativeGetVideoFxType(J)I

    move-result v0

    return v0
.end method

.method public mapPointFromCanonicalToParticleSystem(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 87
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoFx;->nativeMapPointFromCanonicalToParticleSystem(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
