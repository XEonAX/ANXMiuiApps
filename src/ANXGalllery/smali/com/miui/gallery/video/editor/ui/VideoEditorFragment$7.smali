.class Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;
.super Ljava/lang/Object;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V
    .locals 1
    .param p1, "fragmentData"    # Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V

    .line 412
    return-void
.end method

.method public getNavigatorData(I)Ljava/util/List;
    .locals 1
    .param p1, "videoFrames"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->getNavigatorData(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoEditor()Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    return-object v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$800(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Z

    move-result v0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onCancel()V

    .line 422
    return-void
.end method

.method public onSave()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onSave()V

    .line 427
    return-void
.end method

.method public showNavEditMenu()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->showNavEditMenu()V

    .line 417
    return-void
.end method

.method public updateAudioVoiceView(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->updateAudioVoiceView(Z)V

    .line 452
    return-void
.end method

.method public updateAutoTrimView()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->updateAutoTrimView()V

    .line 442
    return-void
.end method

.method public updatePalyBtnView()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->updatePlayView()V

    .line 437
    return-void
.end method
