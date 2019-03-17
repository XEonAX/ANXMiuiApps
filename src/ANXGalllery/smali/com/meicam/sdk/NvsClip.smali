.class public Lcom/meicam/sdk/NvsClip;
.super Lcom/meicam/sdk/NvsObject;
.source "NvsClip.java"


# static fields
.field public static final CLIP_TYPE_AUDIO:I = 0x1

.field public static final CLIP_TYPE_VIDEO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meicam/sdk/NvsObject;-><init>()V

    return-void
.end method

.method private native nativeChangeSpeed(JDZ)V
.end method

.method private native nativeChangeTrimInPoint(JJZ)J
.end method

.method private native nativeChangeTrimOutPoint(JJZ)J
.end method

.method private native nativeGetFilePath(J)Ljava/lang/String;
.end method

.method private native nativeGetFxCount(J)I
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetIndex(J)I
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetSpeed(J)D
.end method

.method private native nativeGetTrimIn(J)J
.end method

.method private native nativeGetTrimOut(J)J
.end method

.method private native nativeGetType(J)I
.end method

.method private native nativeGetVolumeGain(J)Lcom/meicam/sdk/NvsVolume;
.end method

.method private native nativeSetVolumeGain(JFF)V
.end method


# virtual methods
.method public changeSpeed(D)V
    .locals 7

    .prologue
    .line 179
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 180
    iget-wide v2, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsClip;->nativeChangeSpeed(JDZ)V

    .line 181
    return-void
.end method

.method public changeSpeed(DZ)V
    .locals 7

    .prologue
    .line 193
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 194
    iget-wide v2, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsClip;->nativeChangeSpeed(JDZ)V

    .line 195
    return-void
.end method

.method public changeTrimInPoint(JZ)J
    .locals 7

    .prologue
    .line 139
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 140
    iget-wide v2, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsClip;->nativeChangeTrimInPoint(JJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public changeTrimOutPoint(JZ)J
    .locals 7

    .prologue
    .line 154
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 155
    iget-wide v2, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/meicam/sdk/NvsClip;->nativeChangeTrimOutPoint(JJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 115
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetFilePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFxCount()I
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 125
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetFxCount(J)I

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 71
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 105
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetIndex(J)I

    move-result v0

    return v0
.end method

.method public getOutPoint()J
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 83
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 168
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetSpeed(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrimIn()J
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 47
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetTrimIn(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrimOut()J
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetTrimOut(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 95
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetType(J)I

    move-result v0

    return v0
.end method

.method public getVolumeGain()Lcom/meicam/sdk/NvsVolume;
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 217
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsClip;->nativeGetVolumeGain(J)Lcom/meicam/sdk/NvsVolume;

    move-result-object v0

    return-object v0
.end method

.method public setVolumeGain(FF)V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 206
    iget-wide v0, p0, Lcom/meicam/sdk/NvsClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsClip;->nativeSetVolumeGain(JFF)V

    .line 207
    return-void
.end method
