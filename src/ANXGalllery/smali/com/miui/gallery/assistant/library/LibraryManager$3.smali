.class Lcom/miui/gallery/assistant/library/LibraryManager$3;
.super Ljava/lang/Object;
.source "LibraryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/library/LibraryManager;->downloadLibrary(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

.field final synthetic val$libraryId:J

.field final synthetic val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/library/LibraryManager;Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/library/LibraryManager;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$3;->this$0:Lcom/miui/gallery/assistant/library/LibraryManager;

    iput-object p2, p0, Lcom/miui/gallery/assistant/library/LibraryManager$3;->val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    iput-wide p3, p0, Lcom/miui/gallery/assistant/library/LibraryManager$3;->val$libraryId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$3;->val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$3;->val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/library/LibraryManager$3;->val$libraryId:J

    const/4 v1, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;->onDownloadResult(JI)V

    .line 302
    :cond_0
    return-void
.end method
