.class Lcom/miui/gallery/video/editor/NexVideoEditor$11;
.super Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;
.source "NexVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field final synthetic val$esi:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

.field final synthetic val$outputFileURI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->val$outputFileURI:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->val$esi:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 979
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$400(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    .line 980
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2300(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;-><init>(Lcom/miui/gallery/video/editor/NexVideoEditor$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    return-void
.end method
