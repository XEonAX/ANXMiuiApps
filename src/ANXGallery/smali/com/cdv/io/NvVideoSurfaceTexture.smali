.class public Lcom/cdv/io/NvVideoSurfaceTexture;
.super Ljava/lang/Object;
.source "NvVideoSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final m_texId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/cdv/io/NvVideoSurfaceTexture;->m_texId:I

    .line 12
    return-void
.end method

.method private static native notifyFrameAvailable(I)V
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/cdv/io/NvVideoSurfaceTexture;->m_texId:I

    invoke-static {v0}, Lcom/cdv/io/NvVideoSurfaceTexture;->notifyFrameAvailable(I)V

    .line 18
    return-void
.end method
