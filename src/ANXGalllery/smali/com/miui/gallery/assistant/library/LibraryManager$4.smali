.class Lcom/miui/gallery/assistant/library/LibraryManager$4;
.super Ljava/lang/Object;
.source "LibraryManager.java"

# interfaces
.implements Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/library/LibraryManager;->downloadLibraryInternal(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

.field final synthetic val$library:Lcom/miui/gallery/assistant/library/Library;

.field final synthetic val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;Lcom/miui/gallery/assistant/library/Library;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    iput-object p2, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    iput-object p3, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadResult(JI)V
    .locals 3
    .param p1, "libraryId"    # J
    .param p3, "resultCode"    # I

    .prologue
    .line 315
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;-><init>(Lcom/miui/gallery/assistant/library/LibraryManager$4;JI)V

    .line 316
    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 324
    packed-switch p3, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    .line 329
    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/library/DeleteLibraryTask;->post()V

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    const-string/jumbo v2, "success"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$900(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/Library;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$900(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/Library;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/Library;->setLibraryStatus(Lcom/miui/gallery/assistant/library/Library$LibraryStatus;)V

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$library:Lcom/miui/gallery/assistant/library/Library;

    const-string v2, "fail"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$900(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/Library;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
