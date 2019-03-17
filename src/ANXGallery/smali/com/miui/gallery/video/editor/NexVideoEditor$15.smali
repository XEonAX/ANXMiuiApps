.class Lcom/miui/gallery/video/editor/NexVideoEditor$15;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;->adjustContrast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$15;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$15;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->play()V

    .line 1549
    return-void
.end method
