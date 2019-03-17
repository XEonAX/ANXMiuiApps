.class public Lcom/meicam/sdk/NvsAudioFx;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsAudioFx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeGetBuiltinAudioFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetIndex(J)I
.end method


# virtual methods
.method public getBuiltinAudioFxName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 44
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsAudioFx;->nativeGetBuiltinAudioFxName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 33
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAudioFx;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsAudioFx;->nativeGetIndex(J)I

    move-result v0

    return v0
.end method
