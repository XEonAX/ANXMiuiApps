.class public Lcom/cdv/io/NvCameraSurfaceTextureListener;
.super Ljava/lang/Object;
.source "NvCameraSurfaceTextureListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final m_texId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/cdv/io/NvCameraSurfaceTextureListener;->m_texId:I

    .line 24
    return-void
.end method

.method private static native notifyCameraFrameAvailable(I)V
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/cdv/io/NvCameraSurfaceTextureListener;->m_texId:I

    invoke-static {v0}, Lcom/cdv/io/NvCameraSurfaceTextureListener;->notifyCameraFrameAvailable(I)V

    .line 30
    return-void
.end method
