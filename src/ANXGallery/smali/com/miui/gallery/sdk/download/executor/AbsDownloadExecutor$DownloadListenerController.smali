.class Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
.super Ljava/lang/Object;
.source "AbsDownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadListenerController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;
    }
.end annotation


# instance fields
.field private final mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

.field private final mDownloadListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/gallery/sdk/download/listener/DownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

.field private final mProgressListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListeners:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    .line 117
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$1;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .line 139
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$2;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$1;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->callStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "x3"    # Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->callSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "x3"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->callFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->callCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .prologue
    .line 111
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->callProgress(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V

    return-void
.end method

.method private callCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getDownloadListeners(Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$6;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->dispatchListener(Ljava/util/LinkedList;Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;)V

    .line 228
    return-void
.end method

.method private callFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getDownloadListeners(Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$5;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->dispatchListener(Ljava/util/LinkedList;Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;)V

    .line 219
    return-void
.end method

.method private callProgress(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "curSize"    # J
    .param p5, "totalSize"    # J

    .prologue
    .line 231
    invoke-static {p1, p2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getProgressListeners(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v8

    new-instance v0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$7;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V

    invoke-direct {p0, v8, v0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->dispatchListener(Ljava/util/LinkedList;Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;)V

    .line 237
    return-void
.end method

.method private callStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 195
    invoke-static {p1, p2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getDownloadListeners(Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$3;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->dispatchListener(Ljava/util/LinkedList;Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;)V

    .line 201
    return-void
.end method

.method private callSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .prologue
    .line 204
    invoke-static {p1, p2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getDownloadListeners(Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$4;-><init>(Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->dispatchListener(Ljava/util/LinkedList;Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;)V

    .line 210
    return-void
.end method

.method private dispatchListener(Ljava/util/LinkedList;Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList",
            "<TE;>;",
            "Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "caller":Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;, "Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller<TE;>;"
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "listener":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {p2, v0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController$Caller;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .end local v0    # "listener":Ljava/lang/Object;, "TE;"
    :cond_1
    return-void
.end method

.method private getDownloadListeners(Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "clean"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/sdk/download/listener/DownloadListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListeners:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getListeners(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 176
    .local v0, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/sdk/download/listener/DownloadListener;>;"
    if-eqz p2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz p2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 182
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    :cond_1
    return-object v0

    .line 179
    .end local v0    # "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/sdk/download/listener/DownloadListener;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 183
    .restart local v0    # "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/sdk/download/listener/DownloadListener;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getListeners(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<TE;>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "container":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<TE;>;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 152
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 153
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-object v1
.end method

.method private getProgressListeners(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->getListeners(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putItem(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<TE;>;>;",
            "Ljava/lang/String;",
            "TE;)Z"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "container":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<TE;>;>;"
    .local p3, "listener":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 249
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .restart local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    return-object v0
.end method

.method public getDownloadProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    return-object v0
.end method

.method public putItem(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "result":Z
    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mDownloadListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->putItem(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 263
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 266
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 267
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->mProgressListeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor$DownloadListenerController;->putItem(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 268
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return v1

    .line 263
    .restart local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 268
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
