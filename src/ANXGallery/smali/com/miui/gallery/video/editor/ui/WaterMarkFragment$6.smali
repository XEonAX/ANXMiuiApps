.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->doCancel()Z
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
    .line 296
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->recordEventWithCancel()V

    .line 304
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->onExitMode()V

    goto :goto_0
.end method
