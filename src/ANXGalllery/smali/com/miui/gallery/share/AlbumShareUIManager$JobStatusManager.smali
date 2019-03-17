.class Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobStatusManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mStatusChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener",
            "<TK;TS;>;>;"
        }
    .end annotation
.end field

.field private final mStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TS;>;"
        }
    .end annotation
.end field

.field private final mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/threadpool/ThreadPool;)V
    .locals 1
    .param p1, "threadPool"    # Lcom/miui/gallery/threadpool/ThreadPool;

    .prologue
    .line 158
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    .line 155
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusChangedListeners:Ljava/util/List;

    .line 159
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    .line 160
    return-void
.end method

.method private notifyStatus(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TS;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newStatus":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;

    .line 194
    .local v0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener<TK;TS;>;"
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;->onAlbumStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    .end local v0    # "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnStatusChangedListener<TK;TS;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TS;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "status":Ljava/lang/Object;, "TS;"
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->notifyStatus(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected advanceStatus(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p3, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TS;Z)TS;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "current":Ljava/lang/Object;, "TS;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TS;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThreadPool()Lcom/miui/gallery/threadpool/ThreadPool;
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mThreadPool:Lcom/miui/gallery/threadpool/ThreadPool;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Z)V
    .locals 2
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;, "Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager<TK;TS;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->mStatusMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "status":Ljava/lang/Object;, "TS;"
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->advanceStatus(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/share/AlbumShareUIManager$JobStatusManager;->notifyStatus(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .end local v0    # "status":Ljava/lang/Object;, "TS;"
    :cond_0
    return-void
.end method
