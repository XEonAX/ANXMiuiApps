.class public Lcom/meicam/sdk/NvsARFaceContext;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;,
        Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;
    }
.end annotation


# instance fields
.field m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

.field m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

.field private m_contextInterface:J

.field mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 28
    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeIsFaceTracking(J)Z
.end method

.method private native nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
.end method

.method private native nativeSetDualBufferInputUsed(JZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 97
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeCleanup(J)V

    .line 99
    iput-wide v2, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    .line 102
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    return-void
.end method

.method public isFaceTracking()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 35
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeIsFaceTracking(J)Z

    move-result v0

    return v0
.end method

.method public setContextCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
    .locals 3

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 60
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/meicam/sdk/NvsARFaceContext$1;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsARFaceContext$1;-><init>(Lcom/meicam/sdk/NvsARFaceContext;)V

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    .line 82
    :goto_0
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object v2, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V

    .line 83
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    goto :goto_0
.end method

.method protected setContextInterface(J)V
    .locals 1

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    .line 93
    return-void
.end method

.method public setDualBufferInputUsed(Z)V
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsARFaceContext;->nativeSetDualBufferInputUsed(JZ)V

    .line 88
    return-void
.end method
