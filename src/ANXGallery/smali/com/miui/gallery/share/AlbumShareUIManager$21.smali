.class final Lcom/miui/gallery/share/AlbumShareUIManager$21;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;->tryToCreateCloudAlbumAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cloudId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$21;->val$cloudId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/ThreadPool$JobContext;",
            ")",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$21;->val$cloudId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->tryToCreateCloudAlbum(Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$21;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
