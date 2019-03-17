.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->doApply()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)I

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->saveEditState()V

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->recordEventWithApply()V

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->onExitMode()V

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    goto :goto_0
.end method
