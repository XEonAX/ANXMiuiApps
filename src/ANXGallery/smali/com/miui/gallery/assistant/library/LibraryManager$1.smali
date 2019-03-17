.class Lcom/miui/gallery/assistant/library/LibraryManager$1;
.super Landroid/os/AsyncTask;
.source "LibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/library/LibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/library/LibraryManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/library/LibraryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryManager$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 97
    aget-object v0, p1, v2

    .line 98
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-static {v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$200(Lcom/miui/gallery/assistant/library/LibraryManager;)V

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-static {v1, v2}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$302(Lcom/miui/gallery/assistant/library/LibraryManager;Z)Z

    .line 100
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$402(Lcom/miui/gallery/assistant/library/LibraryManager;Z)Z

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-static {v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$500(Lcom/miui/gallery/assistant/library/LibraryManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 102
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-static {v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$600(Lcom/miui/gallery/assistant/library/LibraryManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    invoke-static {v1, v0}, Lcom/miui/gallery/assistant/library/LibraryManager;->access$700(Lcom/miui/gallery/assistant/library/LibraryManager;Landroid/content/Context;)V

    .line 105
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
