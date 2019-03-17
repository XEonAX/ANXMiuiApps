.class Lcom/miui/gallery/video/editor/ui/AudioFragment$6;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/AudioFragment;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->recordEventWithEffectChanged()V

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->updatePalyBtnView()V

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$300(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/AudioFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$300(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->access$400(Lcom/miui/gallery/video/editor/ui/AudioFragment;I)V

    .line 275
    :cond_0
    return-void
.end method
