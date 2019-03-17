.class Lcom/miui/gallery/net/library/LibraryDownloadManager$1;
.super Ljava/lang/Object;
.source "LibraryDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/net/download/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/net/library/LibraryDownloadManager;->download(JZLjava/util/Set;Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/net/library/LibraryDownloadManager;

.field final synthetic val$downloadingSet:Ljava/util/Set;

.field final synthetic val$libraryId:J

.field final synthetic val$libraryItem:Lcom/miui/gallery/assistant/library/LibraryItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/net/library/LibraryDownloadManager;Lcom/miui/gallery/assistant/library/LibraryItem;Ljava/util/Set;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/net/library/LibraryDownloadManager;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->this$0:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryItem:Lcom/miui/gallery/assistant/library/LibraryItem;

    iput-object p3, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$downloadingSet:Ljava/util/Set;

    iput-wide p4, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->this$0:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    invoke-static {v0}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->access$000(Lcom/miui/gallery/net/library/LibraryDownloadManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryItem:Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/library/LibraryItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 97
    if-nez p1, :cond_2

    .line 98
    const-string v0, "LibraryDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryItem:Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/LibraryItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download success!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$downloadingSet:Ljava/util/Set;

    iget-object v1, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryItem:Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$downloadingSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->this$0:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    iget-object v1, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$downloadingSet:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->access$100(Lcom/miui/gallery/net/library/LibraryDownloadManager;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->this$0:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    iget-wide v2, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryId:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->access$200(Lcom/miui/gallery/net/library/LibraryDownloadManager;JI)V

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    const-string v0, "LibraryDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryItem:Lcom/miui/gallery/assistant/library/LibraryItem;

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/library/LibraryItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->this$0:Lcom/miui/gallery/net/library/LibraryDownloadManager;

    iget-wide v2, p0, Lcom/miui/gallery/net/library/LibraryDownloadManager$1;->val$libraryId:J

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/miui/gallery/net/library/LibraryDownloadManager;->access$200(Lcom/miui/gallery/net/library/LibraryDownloadManager;JI)V

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
