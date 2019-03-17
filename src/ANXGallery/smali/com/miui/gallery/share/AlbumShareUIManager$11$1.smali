.class Lcom/miui/gallery/share/AlbumShareUIManager$11$1;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/AlbumShareUIManager$11;

.field final synthetic val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

.field final synthetic val$shareAlbumId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/AlbumShareUIManager$11;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/AlbumShareUIManager$11;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;->this$0:Lcom/miui/gallery/share/AlbumShareUIManager$11;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;->val$shareAlbumId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;->val$shareAlbumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 853
    invoke-virtual {v1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-static {v0, v1}, Lcom/miui/gallery/share/AlbumShareOperations;->exitAlbumShare(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$11$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
