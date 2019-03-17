.class Lcom/nexstreaming/app/common/nexasset/preview/a$1;
.super Ljava/lang/Object;
.source "AssetPreviewView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/preview/a;->init(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

.field final synthetic b:Lcom/nexstreaming/app/common/nexasset/preview/a;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/preview/a;Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$1;->b:Lcom/nexstreaming/app/common/nexasset/preview/a;

    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$1;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 218
    .line 219
    const/16 v0, 0x13

    new-array v2, v0, [I

    const/16 v0, 0x3040

    aput v0, v2, v4

    aput v3, v2, v6

    const/16 v0, 0x3024

    aput v0, v2, v1

    const/4 v0, 0x3

    aput v5, v2, v0

    const/16 v0, 0x3023

    aput v0, v2, v3

    const/4 v0, 0x5

    aput v5, v2, v0

    const/4 v0, 0x6

    const/16 v3, 0x3022

    aput v3, v2, v0

    const/4 v0, 0x7

    aput v5, v2, v0

    const/16 v0, 0x3021

    aput v0, v2, v5

    const/16 v0, 0x9

    aput v5, v2, v0

    const/16 v0, 0xa

    const/16 v3, 0x3026

    aput v3, v2, v0

    const/16 v0, 0xb

    aput v6, v2, v0

    const/16 v0, 0xc

    const/16 v3, 0x3032

    aput v3, v2, v0

    const/16 v3, 0xd

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$1;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    .line 227
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getGLMultisample()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    aput v0, v2, v3

    const/16 v0, 0xe

    const/16 v3, 0x3031

    aput v3, v2, v0

    const/16 v3, 0xf

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$1;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    .line 228
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getGLMultisample()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    aput v0, v2, v3

    const/16 v0, 0x10

    const/16 v1, 0x3025

    aput v1, v2, v0

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a$1;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    .line 229
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getGLDepthBufferBits()I

    move-result v1

    aput v1, v2, v0

    const/16 v0, 0x12

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 232
    const/16 v0, 0xd

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 246
    new-array v5, v6, [I

    .line 247
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 248
    aget v0, v5, v4

    if-ge v0, v6, :cond_2

    .line 250
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, v8

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 252
    :goto_2
    aget v0, v5, v4

    new-array v9, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 253
    array-length v10, v9

    move-object v6, p1

    move-object v7, p2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 255
    aget-object v0, v9, v4

    return-object v0

    :cond_0
    move v0, v4

    .line 227
    goto :goto_0

    :cond_1
    move v0, v4

    .line 228
    goto :goto_1

    :cond_2
    move-object v8, v2

    goto :goto_2

    .line 232
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3026
        0x8
        0x3038
    .end array-data
.end method
