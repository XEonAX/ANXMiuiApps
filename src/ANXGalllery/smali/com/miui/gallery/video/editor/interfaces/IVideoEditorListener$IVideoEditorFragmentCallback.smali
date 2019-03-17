.class public interface abstract Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;
.super Ljava/lang/Object;
.source "IVideoEditorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVideoEditorFragmentCallback"
.end annotation


# virtual methods
.method public abstract changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V
.end method

.method public abstract getNavigatorData(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoEditor()Lcom/miui/gallery/video/editor/VideoEditor;
.end method

.method public abstract isLoadSuccess()Z
.end method

.method public abstract onCancel()V
.end method

.method public abstract onSave()V
.end method

.method public abstract showNavEditMenu()V
.end method

.method public abstract updateAudioVoiceView(Z)V
.end method

.method public abstract updateAutoTrimView()V
.end method

.method public abstract updatePalyBtnView()V
.end method
