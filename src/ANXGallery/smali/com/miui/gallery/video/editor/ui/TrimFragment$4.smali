.class Lcom/miui/gallery/video/editor/ui/TrimFragment$4;
.super Ljava/lang/Object;
.source "TrimFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/TrimFragment;->onPlayButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/TrimFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/ui/TrimFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/ui/TrimFragment;->access$202(Lcom/miui/gallery/video/editor/ui/TrimFragment;Z)Z

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/TrimFragment$4;->this$0:Lcom/miui/gallery/video/editor/ui/TrimFragment;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/ui/TrimFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    .line 143
    return-void
.end method
