.class public Lcom/meicam/sdk/NvsParticleSystemContext;
.super Ljava/lang/Object;
.source "NvsParticleSystemContext.java"


# instance fields
.field private m_contextInterface:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAppendPositionToEmitterPositionCurve(JLjava/lang/String;FFF)V
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeSetEmitterEnabled(JLjava/lang/String;Z)V
.end method

.method private native nativeSetEmitterParticleSizeGain(JLjava/lang/String;F)V
.end method

.method private native nativeSetEmitterPosition(JLjava/lang/String;FF)V
.end method

.method private native nativeSetEmitterRateGain(JLjava/lang/String;F)V
.end method


# virtual methods
.method public appendPositionToEmitterPositionCurve(Ljava/lang/String;FFF)V
    .locals 8

    .prologue
    .line 40
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 41
    iget-wide v2, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/meicam/sdk/NvsParticleSystemContext;->nativeAppendPositionToEmitterPositionCurve(JLjava/lang/String;FFF)V

    .line 42
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    iget-wide v0, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsParticleSystemContext;->nativeCleanup(J)V

    .line 65
    iput-wide v2, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    .line 68
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    return-void
.end method

.method protected setContextInterface(J)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    .line 59
    return-void
.end method

.method public setEmitterEnabled(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 29
    iget-wide v0, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsParticleSystemContext;->nativeSetEmitterEnabled(JLjava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public setEmitterParticleSizeGain(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 53
    iget-wide v0, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsParticleSystemContext;->nativeSetEmitterParticleSizeGain(JLjava/lang/String;F)V

    .line 54
    return-void
.end method

.method public setEmitterPosition(Ljava/lang/String;FF)V
    .locals 7

    .prologue
    .line 34
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 35
    iget-wide v2, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsParticleSystemContext;->nativeSetEmitterPosition(JLjava/lang/String;FF)V

    .line 36
    return-void
.end method

.method public setEmitterRateGain(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 47
    iget-wide v0, p0, Lcom/meicam/sdk/NvsParticleSystemContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsParticleSystemContext;->nativeSetEmitterRateGain(JLjava/lang/String;F)V

    .line 48
    return-void
.end method
