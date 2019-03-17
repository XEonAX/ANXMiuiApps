.class public abstract Lcom/miui/gallery/video/editor/VideoEditor;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;,
        Lcom/miui/gallery/video/editor/VideoEditor$OnGetVideoThumbnailListener;,
        Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;,
        Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;,
        Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;,
        Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;,
        Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;
    }
.end annotation


# instance fields
.field protected mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

.field protected mIsInit:Z

.field private mOnVideoThumbnailChangedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;

.field private mState:I

.field private mStateChangeListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mIsInit:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mState:I

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    .line 201
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "nex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor;-><init>(Landroid/content/Context;)V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V
    .locals 1
    .param p1, "stateChangeInterface"    # Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public abstract adjustBrightness(I)V
.end method

.method public abstract adjustContrast(I)V
.end method

.method public abstract adjustSaturation(I)V
.end method

.method public abstract adjustSharpness(I)V
.end method

.method public abstract adjustVignetteRange(I)V
.end method

.method public abstract apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
.end method

.method public abstract autoTrim(ILcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V
.end method

.method public autoTrim(Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V
    .locals 1
    .param p1, "tsi"    # Lcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;

    .prologue
    .line 152
    const/16 v0, 0x61a8

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor;->autoTrim(ILcom/miui/gallery/video/editor/VideoEditor$TrimStateInterface;)V

    .line 153
    return-void
.end method

.method public abstract cancelExport(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
.end method

.method public abstract export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V
.end method

.method public abstract getCurrentDisplayRatio()F
.end method

.method public getDisplayWrapper()Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    return-object v0
.end method

.method public abstract getProjectTotalTime()I
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mState:I

    return v0
.end method

.method public abstract getVideoFrames()I
.end method

.method public abstract getVideoPath()Ljava/lang/String;
.end method

.method public abstract getVideoStartTime()I
.end method

.method public abstract getVideoTotalTime()I
.end method

.method public abstract hasEdit()Z
.end method

.method public abstract haveSavedEditState()Z
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mIsInit:Z

    return v0
.end method

.method public abstract isSourceAudioEnable()Z
.end method

.method public abstract isSupportAutoTrim()Z
.end method

.method public abstract load(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
.end method

.method public notifyThumbnailChanged()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mOnVideoThumbnailChangedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mOnVideoThumbnailChangedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;->onVideoThumbnailChanged()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onTimeChanged(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;

    .line 82
    .local v0, "listener":Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;
    invoke-interface {v0, p1}, Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;->onTimeChanged(I)V

    goto :goto_0

    .line 84
    .end local v0    # "listener":Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;
    :cond_0
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract pickThumbnail(I)Landroid/graphics/Bitmap;
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public removeStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V
    .locals 1
    .param p1, "stateChangeInterface"    # Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public abstract resetProject(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
.end method

.method public abstract restoreEditState()V
.end method

.method public abstract resume()V
.end method

.method public abstract saveEditState()V
.end method

.method public abstract seek(ILcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
.end method

.method public abstract setAutoWaterMark(Ljava/lang/String;I)Z
.end method

.method public abstract setBackgroundMusic(Ljava/lang/String;)V
.end method

.method protected abstract setDisplayView(Landroid/view/View;)V
.end method

.method public setDisplayWrapper(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)V
    .locals 0
    .param p1, "view"    # Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mDisplayWrapper:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .line 117
    return-void
.end method

.method public abstract setFilter(Lcom/miui/gallery/video/editor/Filter;)V
.end method

.method public setOnVideoThumbnailChangedListener(Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mOnVideoThumbnailChangedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnVideoThumbnailChangedListener;

    .line 51
    return-void
.end method

.method public abstract setSmartEffectTemplate(Lcom/miui/gallery/video/editor/SmartEffect;)Z
.end method

.method public abstract setSourceAudioEnable(Ljava/lang/Boolean;)V
.end method

.method protected setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 72
    iget v1, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mState:I

    if-eq v1, p1, :cond_0

    .line 73
    iput p1, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mState:I

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mStateChangeListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;

    .line 75
    .local v0, "listener":Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;
    iget v2, p0, Lcom/miui/gallery/video/editor/VideoEditor;->mState:I

    invoke-interface {v0, v2}, Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;->onStateChanged(I)V

    goto :goto_0

    .line 78
    .end local v0    # "listener":Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;
    :cond_0
    return-void
.end method

.method public abstract setTrimInfo(II)V
.end method

.method public abstract setVideoEditorAdjust(Z)V
.end method

.method public abstract setWarterMark(ILjava/lang/String;)Z
.end method

.method public abstract startPreview()V
.end method

.method public abstract toThirdEditor(Landroid/content/Context;)V
.end method
