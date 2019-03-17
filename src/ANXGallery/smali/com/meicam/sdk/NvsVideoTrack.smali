.class public Lcom/meicam/sdk/NvsVideoTrack;
.super Lcom/meicam/sdk/NvsTrack;
.source "NvsVideoTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meicam/sdk/NvsTrack;-><init>()V

    return-void
.end method

.method private native nativeAddClip(JLjava/lang/String;J)Lcom/meicam/sdk/NvsVideoClip;
.end method

.method private native nativeAddClip(JLjava/lang/String;JJJ)Lcom/meicam/sdk/NvsVideoClip;
.end method

.method private native nativeGetClipByIndex(JI)Lcom/meicam/sdk/NvsVideoClip;
.end method

.method private native nativeGetClipByTimelinePosition(JJ)Lcom/meicam/sdk/NvsVideoClip;
.end method

.method private native nativeGetTransitionBySourceClipIndex(JI)Lcom/meicam/sdk/NvsVideoTransition;
.end method

.method private native nativeInsertClip(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoClip;
.end method

.method private native nativeInsertClip(JLjava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;
.end method

.method private native nativeSetBuiltinTransition(JILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;
.end method

.method private native nativeSetPackagedTransition(JILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;
.end method


# virtual methods
.method public addClip(Ljava/lang/String;J)Lcom/meicam/sdk/NvsVideoClip;
    .locals 6

    .prologue
    .line 143
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 144
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsVideoTrack;->nativeAddClip(JLjava/lang/String;J)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsVideoClip;
    .locals 10

    .prologue
    .line 174
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 175
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsVideoTrack;->nativeAddClip(JLjava/lang/String;JJJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 50
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsVideoTrack;->insertClip(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;
    .locals 8

    .prologue
    .line 66
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 67
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/meicam/sdk/NvsVideoTrack;->insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 197
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoTrack;->nativeGetClipByIndex(JI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public getClipByTimelinePosition(J)Lcom/meicam/sdk/NvsVideoClip;
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 208
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoTrack;->nativeGetClipByTimelinePosition(JJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionBySourceClipIndex(I)Lcom/meicam/sdk/NvsVideoTransition;
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 264
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoTrack;->nativeGetTransitionBySourceClipIndex(JI)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v0

    return-object v0
.end method

.method public insertClip(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoClip;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 94
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoTrack;->nativeInsertClip(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;
    .locals 10

    .prologue
    .line 120
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 121
    iget-wide v1, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsVideoTrack;->nativeInsertClip(JLjava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    return-object v0
.end method

.method public setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 236
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoTrack;->nativeSetBuiltinTransition(JILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v0

    return-object v0
.end method

.method public setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 252
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoTrack;->nativeSetPackagedTransition(JILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v0

    return-object v0
.end method
