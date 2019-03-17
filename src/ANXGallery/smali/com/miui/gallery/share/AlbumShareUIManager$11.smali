.class final Lcom/miui/gallery/share/AlbumShareUIManager$11;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->exitAlbumShareAsync(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

.field final synthetic val$msg:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

.field final synthetic val$path:Lcom/miui/gallery/share/Path;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$path:Lcom/miui/gallery/share/Path;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$msg:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 833
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$path:Lcom/miui/gallery/share/Path;

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->findSharerMediaSet(Lcom/miui/gallery/share/Path;)Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v6

    .line 834
    .local v6, "mediaSet":Lcom/miui/gallery/share/CloudSharerMediaSet;
    invoke-static {v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->allowOperation(Lcom/miui/gallery/share/CloudSharerMediaSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 858
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-static {v6}, Lcom/miui/gallery/share/AlbumShareUIManager;->readAlbumShareStateFromDB(Lcom/miui/gallery/share/CloudSharerMediaSet;)I

    move-result v9

    .line 840
    .local v9, "state":I
    invoke-static {v9}, Lcom/miui/gallery/share/AlbumShareState;->exit(I)I

    move-result v7

    .line 841
    .local v7, "newState":I
    invoke-static {v7}, Lcom/miui/gallery/share/AlbumShareState;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    const-string v0, "AlbumShareUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state, media set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareUIManager;->notifyError(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    goto :goto_0

    .line 847
    :cond_1
    invoke-virtual {v6}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getShareAlbumId()Ljava/lang/String;

    move-result-object v8

    .line 848
    .local v8, "shareAlbumId":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;

    invoke-direct {v3, p0, v8, v6}, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;-><init>(Lcom/miui/gallery/share/AlbumShareUIManager$11;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 857
    .local v3, "job":Lcom/miui/gallery/threadpool/ThreadPool$Job;, "Lcom/miui/gallery/threadpool/ThreadPool$Job<Lcom/miui/gallery/share/AsyncResult<Ljava/lang/Void;>;>;"
    invoke-static {}, Lcom/miui/gallery/share/AlbumShareUIManager;->access$000()Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$path:Lcom/miui/gallery/share/Path;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$l:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11;->val$msg:Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->submit(Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method
