.class Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;
.super Ljava/lang/Object;
.source "BabyAlbumRecommendationFinder.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->findRecommendation(Landroid/util/SparseArray;Ljava/lang/String;)V
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
        "Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

.field final synthetic val$babyAlbum:Landroid/util/SparseArray;

.field final synthetic val$babyAlbumLocalId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    iput-object p2, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->val$babyAlbum:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->val$babyAlbumLocalId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;
    .locals 9
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 68
    new-instance v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    invoke-direct {v7}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;-><init>()V

    .line 69
    .local v7, "datas":Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    invoke-static {v0}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$000(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->peopleServerId:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->this$0:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .line 71
    invoke-static {v0}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->access$000(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/provider/FaceManager;->getPeopleLocalIdByServerId(Ljava/lang/String;)J

    move-result-wide v0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->peopleLocalId:Ljava/lang/String;

    .line 72
    const/4 v6, 0x0

    .line 75
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mixedDateTime"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->peopleServerId:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->peopleLocalId:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    :cond_0
    :goto_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->val$babyAlbum:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 91
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->val$babyAlbumLocalId:Ljava/lang/String;

    .line 92
    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getLastClickBabyPhotosRecommandationTime(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    iget-object v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->ids:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->ids:Ljava/util/ArrayList;

    .line 96
    :cond_1
    iget-object v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->ids:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->totalFaceCountInFaceAlbum:I

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_2
    :goto_1
    return-object v7

    .line 101
    :cond_3
    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->totalFaceCountInFaceAlbum:I

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v7, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->totalFaceCountInFaceAlbum:I

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    move-result-object v0

    return-object v0
.end method
