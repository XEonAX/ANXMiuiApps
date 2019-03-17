.class public Lcom/meicam/sdk/NvsAudioTrack;
.super Lcom/meicam/sdk/NvsTrack;
.source "NvsAudioTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meicam/sdk/NvsTrack;-><init>()V

    return-void
.end method

.method private native nativeAddClip(JLjava/lang/String;J)Lcom/meicam/sdk/NvsAudioClip;
.end method

.method private native nativeAddClip(JLjava/lang/String;JJJ)Lcom/meicam/sdk/NvsAudioClip;
.end method

.method private native nativeGetClipByIndex(JI)Lcom/meicam/sdk/NvsAudioClip;
.end method

.method private native nativeGetClipByTimelinePosition(JJ)Lcom/meicam/sdk/NvsAudioClip;
.end method

.method private native nativeGetTransitionWithSourceClipIndex(JI)Lcom/meicam/sdk/NvsAudioTransition;
.end method

.method private native nativeInsertClip(JLjava/lang/String;I)Lcom/meicam/sdk/NvsAudioClip;
.end method

.method private native nativeInsertClip(JLjava/lang/String;JJI)Lcom/meicam/sdk/NvsAudioClip;
.end method

.method private native nativeSetBuiltinTransition(JILjava/lang/String;)Lcom/meicam/sdk/NvsAudioTransition;
.end method


# virtual methods
.method public addClip(Ljava/lang/String;J)Lcom/meicam/sdk/NvsAudioClip;
    .locals 6

    .prologue
    .line 101
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 102
    iget-wide v1, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsAudioTrack;->nativeAddClip(JLjava/lang/String;J)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsAudioClip;
    .locals 10

    .prologue
    .line 118
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 119
    iget-wide v1, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsAudioTrack;->nativeAddClip(JLjava/lang/String;JJJ)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsAudioClip;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 40
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsAudioTrack;->getClipCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsAudioTrack;->insertClip(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsAudioClip;
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 55
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsAudioTrack;->getClipCount()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/meicam/sdk/NvsAudioTrack;->insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public getClipByIndex(I)Lcom/meicam/sdk/NvsAudioClip;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 133
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAudioTrack;->nativeGetClipByIndex(JI)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public getClipByTimelinePosition(J)Lcom/meicam/sdk/NvsAudioClip;
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 145
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsAudioTrack;->nativeGetClipByTimelinePosition(JJ)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionWithSourceClipIndex(I)Lcom/meicam/sdk/NvsAudioTransition;
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 170
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsAudioTrack;->nativeGetTransitionWithSourceClipIndex(JI)Lcom/meicam/sdk/NvsAudioTransition;

    move-result-object v0

    return-object v0
.end method

.method public insertClip(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAudioClip;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 70
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsAudioTrack;->nativeInsertClip(JLjava/lang/String;I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsAudioClip;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 87
    iget-wide v1, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/meicam/sdk/NvsAudioTrack;->nativeInsertClip(JLjava/lang/String;JJI)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v0

    return-object v0
.end method

.method public setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsAudioTransition;
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 159
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioTrack;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsAudioTrack;->nativeSetBuiltinTransition(JILjava/lang/String;)Lcom/meicam/sdk/NvsAudioTransition;

    move-result-object v0

    return-object v0
.end method
