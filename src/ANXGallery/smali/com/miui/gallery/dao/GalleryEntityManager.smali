.class public Lcom/miui/gallery/dao/GalleryEntityManager;
.super Lcom/miui/gallery/dao/base/EntityManager;
.source "GalleryEntityManager.java"


# static fields
.field private static instance:Lcom/miui/gallery/dao/GalleryEntityManager;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gallery_sub.db"

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/dao/base/EntityManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/miui/gallery/dao/GalleryEntityManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/dao/GalleryEntityManager;->instance:Lcom/miui/gallery/dao/GalleryEntityManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/miui/gallery/dao/GalleryEntityManager;

    invoke-direct {v0}, Lcom/miui/gallery/dao/GalleryEntityManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/dao/GalleryEntityManager;->instance:Lcom/miui/gallery/dao/GalleryEntityManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/miui/gallery/dao/GalleryEntityManager;->instance:Lcom/miui/gallery/dao/GalleryEntityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 84
    const-string v0, "GalleryEntityManager"

    const-string v1, "onDatabaseDowngrade from %s to %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method protected onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/miui/gallery/card/Card;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "localFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "updateTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "createTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "createdBy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected onInitTableList()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/miui/gallery/card/Card;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/miui/gallery/pendingtask/base/PendingTaskInfo;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/miui/gallery/model/PersistentResponse;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/miui/gallery/provider/peoplecover/PeopleCover;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/miui/gallery/card/scenario/Record;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/miui/gallery/assistant/library/Library;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/miui/gallery/card/SyncTag;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->addTable(Ljava/lang/Class;)V

    .line 60
    return-void
.end method
