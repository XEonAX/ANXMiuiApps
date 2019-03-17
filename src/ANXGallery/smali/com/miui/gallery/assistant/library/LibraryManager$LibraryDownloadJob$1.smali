.class Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob$1;
.super Ljava/lang/Object;
.source "LibraryManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob$1;->this$1:Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob$1;->this$1:Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;

    invoke-static {v0}, Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;->access$1100(Lcom/miui/gallery/assistant/library/LibraryManager$LibraryDownloadJob;)V

    .line 505
    return-void
.end method
