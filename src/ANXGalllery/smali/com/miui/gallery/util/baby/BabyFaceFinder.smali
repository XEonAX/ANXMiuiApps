.class public Lcom/miui/gallery/util/baby/BabyFaceFinder;
.super Ljava/lang/Object;
.source "BabyFaceFinder.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_INTERVAL_FOR_CHECK_CANDIDATE_PEOPLE:Ljava/lang/Long;


# instance fields
.field private mFoundBabyAlbums:Ljava/lang/Boolean;

.field private mFuture:Lcom/miui/gallery/threadpool/Future;

.field private mListener:Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->TIME_INTERVAL_FOR_CHECK_CANDIDATE_PEOPLE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private accept(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relationType"    # I

    .prologue
    .line 30
    invoke-static {p2}, Lcom/miui/gallery/model/PeopleContactInfo;->isBabyRelation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/baby/BabyFaceFinder;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyFaceFinder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/baby/BabyFaceFinder;->accept(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Boolean;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFoundBabyAlbums:Ljava/lang/Boolean;

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mListener:Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mListener:Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;

    iget-object v1, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFoundBabyAlbums:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;->onBabyAlbumsFound(Ljava/lang/Boolean;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-ne p1, v0, :cond_1

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBabyAlbumsFoundListener(Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;)V
    .locals 1
    .param p1, "l"    # Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mListener:Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startFindFace(Ljava/lang/String;)V
    .locals 4
    .param p1, "babyAlbumLocalId"    # Ljava/lang/String;

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    invoke-static {p1}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getLastClickPeopleRecommandationTime(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/miui/gallery/util/baby/BabyFaceFinder;->TIME_INTERVAL_FOR_CHECK_CANDIDATE_PEOPLE:Ljava/lang/Long;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/baby/BabyFaceFinder$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/baby/BabyFaceFinder$1;-><init>(Lcom/miui/gallery/util/baby/BabyFaceFinder;)V

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/baby/BabyFaceFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
