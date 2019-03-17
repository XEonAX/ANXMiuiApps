.class final Lcom/miui/gallery/share/AlbumShareUIManager$1;
.super Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
.source "AlbumShareUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager",
        "<",
        "Lcom/miui/gallery/share/Path;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool;)V
    .locals 0
    .param p1, "threadPool"    # Lcom/miui/gallery/threadpool/ThreadPool;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;-><init>(Lcom/miui/gallery/threadpool/ThreadPool;)V

    return-void
.end method


# virtual methods
.method protected advanceStatus(Lcom/miui/gallery/share/Path;Ljava/lang/Integer;Z)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Lcom/miui/gallery/share/Path;
    .param p2, "current"    # Ljava/lang/Integer;
    .param p3, "success"    # Z

    .prologue
    .line 63
    const/4 v0, -0x1

    .line 64
    .local v0, "next":I
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p3}, Lcom/miui/gallery/share/AlbumShareState;->advance(IZ)I

    move-result v0

    .line 68
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareState;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-static {p1}, Lcom/miui/gallery/share/AlbumShareUIManager;->readAlbumShareStateFromDB(Lcom/miui/gallery/share/Path;)I

    move-result v0

    .line 72
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic advanceStatus(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lcom/miui/gallery/share/Path;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/share/AlbumShareUIManager$1;->advanceStatus(Lcom/miui/gallery/share/Path;Ljava/lang/Integer;Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
