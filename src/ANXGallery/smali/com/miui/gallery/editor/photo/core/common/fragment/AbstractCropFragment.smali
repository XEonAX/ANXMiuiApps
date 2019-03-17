.class public abstract Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;
.super Lcom/miui/gallery/editor/photo/core/RenderFragment;
.source "AbstractCropFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;
    }
.end annotation


# instance fields
.field private mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

.field private mHasChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public autoCrop(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mHasChanged:Z

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mHasChanged:Z

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onAutoCrop(F)V

    .line 42
    return-void
.end method

.method public changeRotationState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;->changeRotationState(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public doMirror()V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onChanged()V

    .line 24
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onDoMirror()V

    .line 25
    return-void
.end method

.method public doRotate()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onChanged()V

    .line 29
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onDoRotate()V

    .line 30
    return-void
.end method

.method public doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public abstract finishTuning()V
.end method

.method protected final notifyCropped()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;->onCropped()V

    .line 82
    :cond_0
    return-void
.end method

.method protected final notifyRestored()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;->onRestored()V

    .line 88
    :cond_0
    return-void
.end method

.method protected abstract onAutoCrop(F)V
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mHasChanged:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mHasChanged:Z

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->notifyCropped()V

    .line 63
    :cond_0
    return-void
.end method

.method protected abstract onDoMirror()V
.end method

.method protected abstract onDoRotate()V
.end method

.method protected abstract onSetAspectRatio(Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;)V
.end method

.method protected abstract onTurning(F)V
.end method

.method public abstract prepareTuning()V
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mHasChanged:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mHasChanged:Z

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->notifyRestored()V

    .line 70
    :cond_0
    return-void
.end method

.method public setAspectRatio(Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;)V
    .locals 0
    .param p1, "ratio"    # Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onChanged()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onSetAspectRatio(Lcom/miui/gallery/editor/photo/core/common/model/CropData$AspectRatio;)V

    .line 20
    return-void
.end method

.method public setOnCropChangedListener(Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->mCropChangedListener:Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment$OnCropStateChangedListener;

    .line 92
    return-void
.end method

.method public tuning(F)V
    .locals 0
    .param p1, "degree"    # F

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onChanged()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->onTurning(F)V

    .line 35
    return-void
.end method
