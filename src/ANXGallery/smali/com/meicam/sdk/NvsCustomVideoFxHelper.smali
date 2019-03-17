.class public Lcom/meicam/sdk/NvsCustomVideoFxHelper;
.super Ljava/lang/Object;
.source "NvsCustomVideoFxHelper.java"

# interfaces
.implements Lcom/meicam/sdk/NvsCustomVideoFx$RenderHelper;


# instance fields
.field private m_internalObject:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAllocateRGBATexture(JII)I
.end method

.method private native nativeReclaimTexture(JI)V
.end method


# virtual methods
.method public allocateRGBATexture(II)I
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 34
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCustomVideoFxHelper;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsCustomVideoFxHelper;->nativeAllocateRGBATexture(JII)I

    move-result v0

    return v0
.end method

.method public reclaimTexture(I)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 41
    iget-wide v0, p0, Lcom/meicam/sdk/NvsCustomVideoFxHelper;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsCustomVideoFxHelper;->nativeReclaimTexture(JI)V

    .line 42
    return-void
.end method
