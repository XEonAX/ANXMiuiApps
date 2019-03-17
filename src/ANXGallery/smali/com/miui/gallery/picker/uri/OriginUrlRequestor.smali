.class public Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
.super Ljava/lang/Object;
.source "OriginUrlRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;,
        Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;,
        Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;
    }
.end annotation


# instance fields
.field private mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

.field private mRequestAsyncTask:Landroid/os/AsyncTask;

.field private final mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;",
            ">;",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mTasks:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mRequestAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mRequestAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 133
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mRequestAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mRequestAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 138
    iput-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mRequestAsyncTask:Landroid/os/AsyncTask;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    if-eqz v0, :cond_1

    .line 142
    iput-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    .line 144
    :cond_1
    return-void
.end method

.method public start([Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 6
    .param p1, "resultImageUris"    # [Landroid/net/Uri;
    .param p2, "resultSha1s"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    array-length v2, p1

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v1, "originRequestResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_3

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    invoke-interface {v2, v1, v3}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;->onEnd(Ljava/util/ArrayList;Z)V

    .line 127
    :cond_1
    :goto_1
    return-void

    .end local v1    # "originRequestResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    :cond_2
    move v2, v3

    .line 38
    goto :goto_0

    .line 47
    .restart local v1    # "originRequestResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 48
    new-instance v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;

    aget-object v4, p1, v0

    aget-object v5, p2, v0

    invoke-direct {v2, v4, v5}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mProgressListener:Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;

    iget-object v4, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;->onStart(I)V

    .line 52
    new-instance v2, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;-><init>(Lcom/miui/gallery/picker/uri/OriginUrlRequestor;Ljava/util/ArrayList;)V

    new-array v3, v3, [Ljava/lang/Void;

    .line 126
    invoke-virtual {v2, v3}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->mRequestAsyncTask:Landroid/os/AsyncTask;

    goto :goto_1
.end method
