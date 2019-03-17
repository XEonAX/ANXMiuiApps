.class public Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;
.super Ljava/lang/Object;
.source "BabyAlbumRecommendationFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;,
        Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;
    }
.end annotation


# instance fields
.field private volatile mFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleId:Ljava/lang/String;

.field private volatile mRecommandationDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

.field private volatile mRecommandationFoundListener:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "peopleId"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mPeopleId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mPeopleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mRecommandationDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;
    .param p1, "x1"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mRecommandationDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mRecommandationFoundListener:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method


# virtual methods
.method public findRecommendation(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 3
    .param p2, "babyAlbumLocalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "babyAlbum":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;-><init>(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;Landroid/util/SparseArray;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$2;-><init>(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public setRecommendationFoundListener(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->mRecommandationFoundListener:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;

    .line 57
    return-void
.end method
