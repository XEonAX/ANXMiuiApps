.class public interface abstract Lcom/xiaomi/scanner/ui/PreviewStatusListener;
.super Ljava/lang/Object;
.source "PreviewStatusListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;,
        Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end method

.method public abstract getTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
.end method

.method public abstract shouldAutoAdjustTransformMatrixOnLayout()Z
.end method
