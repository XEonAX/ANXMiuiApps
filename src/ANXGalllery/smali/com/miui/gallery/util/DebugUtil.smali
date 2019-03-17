.class public Lcom/miui/gallery/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/DebugUtil$DebugTask;
    }
.end annotation


# static fields
.field private static sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/DebugUtil;->sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/miui/gallery/util/DebugUtil;->doExportDB()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/miui/gallery/util/DebugUtil;->getDebugPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/miui/gallery/util/DebugUtil;->doCorrectPhotoTime(Landroid/content/Context;)V

    return-void
.end method

.method public static correctPhotoTime(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/miui/gallery/ui/ProcessTask;

    new-instance v2, Lcom/miui/gallery/util/DebugUtil$2;

    invoke-direct {v2, v0}, Lcom/miui/gallery/util/DebugUtil$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/ProcessTask;-><init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;)V

    .line 189
    .local v1, "deletionTask":Lcom/miui/gallery/ui/ProcessTask;, "Lcom/miui/gallery/ui/ProcessTask<Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v2, Lcom/miui/gallery/util/DebugUtil$3;

    invoke-direct {v2, v0}, Lcom/miui/gallery/util/DebugUtil$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/ProcessTask;->setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    .line 195
    const v2, 0x7f0c0137

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/gallery/ui/ProcessTask;->showProgress(Landroid/app/Activity;Ljava/lang/String;)V

    .line 196
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/ProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-void
.end method

.method private static doCorrectPhotoTime(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v1, "UPDATE cloud SET mixedDateTime=dateTaken WHERE _id IN (SELECT _id FROM cloud WHERE serverType IN (1,2) AND exifGPSDateStamp LIKE \'1970%\' AND dateTaken > mixedDateTime)"

    .line 172
    .local v1, "sql":Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private static doExportDB()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 39
    sget-object v2, Lcom/miui/gallery/util/DebugUtil;->sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    .local v0, "foc":Ljava/nio/channels/FileChannel;
    .local v1, "fic":Ljava/nio/channels/FileChannel;
    .local v9, "folder":Ljava/io/File;
    :goto_0
    return-void

    .line 42
    .end local v0    # "foc":Ljava/nio/channels/FileChannel;
    .end local v1    # "fic":Ljava/nio/channels/FileChannel;
    .end local v9    # "folder":Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/miui/gallery/util/DebugUtil;->sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/util/DebugUtil;->getDebugPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v9    # "folder":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    .restart local v1    # "fic":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 51
    .restart local v0    # "foc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v2, "DBTest.db"

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v8, "file":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases/gallery.db"

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v6, "dbFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 54
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 55
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 56
    const-string v2, "DebugUtil"

    const-string v3, "Done exporting db"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 58
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 61
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    const-string v2, "DBTest_sub.db"

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .restart local v8    # "file":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    .end local v6    # "dbFile":Ljava/io/File;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases/gallery_sub.db"

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .restart local v6    # "dbFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 64
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 65
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 66
    const-string v2, "DebugUtil"

    const-string v3, "Done exporting sub db"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 73
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 74
    sget-object v2, Lcom/miui/gallery/util/DebugUtil;->sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 69
    .end local v6    # "dbFile":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 70
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "DebugUtil"

    const-string v3, "Error occurred while exporting db, %s"

    invoke-static {v2, v3, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 73
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 74
    sget-object v2, Lcom/miui/gallery/util/DebugUtil;->sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 72
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 73
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 74
    sget-object v3, Lcom/miui/gallery/util/DebugUtil;->sDBExporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method

.method public static exportDB(Z)V
    .locals 2
    .param p0, "async"    # Z

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/DebugUtil$1;

    invoke-direct {v1}, Lcom/miui/gallery/util/DebugUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/DebugUtil;->doExportDB()V

    goto :goto_0
.end method

.method public static generateDebugLog(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    new-instance v0, Lcom/miui/gallery/util/DebugUtil$DebugTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/DebugUtil$DebugTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/DebugUtil$DebugTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method private static getDebugPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "MIUI/Gallery/Debug"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
