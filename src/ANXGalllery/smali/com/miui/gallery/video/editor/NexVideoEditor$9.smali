.class Lcom/miui/gallery/video/editor/NexVideoEditor$9;
.super Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;
.source "NexVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->applyAsync(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field final synthetic val$changes:[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

.field final synthetic val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    iput-object p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->val$changes:[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 760
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    .line 761
    new-instance v0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->val$listener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$9;->val$changes:[Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 762
    return-void
.end method
