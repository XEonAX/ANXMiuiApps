.class Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor$11;->onComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$11;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    iget-object v0, v0, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    iget-object v1, v1, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->val$outputFileURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$11$1;->this$1:Lcom/miui/gallery/video/editor/NexVideoEditor$11;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/NexVideoEditor$11;->val$esi:Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->export(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$EnocdeStateInterface;)V

    .line 984
    return-void
.end method
