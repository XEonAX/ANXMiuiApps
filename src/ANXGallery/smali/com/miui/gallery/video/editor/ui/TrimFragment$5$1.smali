.class Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget v1, v1, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->val$start:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$302(Lcom/miui/gallery/video/editor/ui/TrimFragment;I)I

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget v1, v1, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->val$end:I

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$402(Lcom/miui/gallery/video/editor/ui/TrimFragment;I)I

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$202(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$502(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->recordEventWithApply()V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5$1;->this$1:Lcom/miui/gallery/video/editor/ui/TrimFragment$5;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment$5;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->onExitMode()V

    goto :goto_0
.end method
