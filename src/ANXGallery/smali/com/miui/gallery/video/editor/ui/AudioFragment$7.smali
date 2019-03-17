.class Lcom/miui/gallery/video/editor/ui/AudioFragment$7;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/AudioFragment;->successProcess(Lcom/miui/gallery/video/editor/LocalAudio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 370
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->recordEventWithEffectChanged()V

    .line 371
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->updatePalyBtnView()V

    .line 372
    return-void
.end method
