.class public Lcom/meicam/sdk/NvsTimelineVideoFx;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsTimelineVideoFx.java"


# static fields
.field public static final TIMELINE_VIDEOFX_TYPE_BUILTIN:I = 0x0

.field public static final TIMELINE_VIDEOFX_TYPE_CUSTOM:I = 0x2

.field public static final TIMELINE_VIDEOFX_TYPE_PACKAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetBuiltinTimelineVideoFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetTimelineVideoFxPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetTimelineVideoFxType(J)I
.end method

.method private native nativeMapPointFromCanonicalToParticleSystem(JLandroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeMovePosition(JJ)V
.end method


# virtual methods
.method public changeInPoint(J)J
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 104
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeChangeInPoint(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public changeOutPoint(J)J
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 118
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeChangeOutPoint(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBuiltinTimelineVideoFxName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 55
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeGetBuiltinTimelineVideoFxName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInPoint()J
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 78
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutPoint()J
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 90
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimelineVideoFxPackageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 66
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeGetTimelineVideoFxPackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineVideoFxType()I
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 44
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeGetTimelineVideoFxType(J)I

    move-result v0

    return v0
.end method

.method public mapPointFromCanonicalToParticleSystem(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 144
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeMapPointFromCanonicalToParticleSystem(JLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public movePosition(J)V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 131
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineVideoFx;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineVideoFx;->nativeMovePosition(JJ)V

    .line 132
    return-void
.end method
