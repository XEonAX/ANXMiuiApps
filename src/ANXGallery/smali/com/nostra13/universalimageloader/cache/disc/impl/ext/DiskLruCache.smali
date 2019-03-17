.class public final Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;,
        Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;,
        Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileCount:I

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxFileCount:I

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 758
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$2;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J
    .param p6, "maxFileCount"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    .line 150
    iput v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 161
    iput-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    .line 164
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 184
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    .line 185
    iput p2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 189
    iput p3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    .line 190
    iput-wide p4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    .line 191
    iput p6, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1900(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .prologue
    .line 88
    iget v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .param p1, "x1"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$502(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$1500(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    move-result-object v2

    .line 537
    .local v2, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 538
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v2    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 542
    .restart local v2    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 543
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4

    .line 544
    invoke-static {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$1600(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    .line 546
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 548
    :cond_1
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 549
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 543
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7

    .line 556
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 557
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 558
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 559
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 560
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 561
    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 562
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 563
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 564
    iget-wide v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    .line 565
    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    .line 555
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 568
    :cond_6
    invoke-static {v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 572
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    .line 573
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 574
    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 575
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$702(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z

    .line 576
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 577
    if-eqz p2, :cond_8

    .line 578
    iget-wide v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1302(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;J)J

    .line 584
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 586
    iget-wide v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    iget v9, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    if-gt v8, v9, :cond_9

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 587
    :cond_9
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 581
    :cond_a
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 397
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 467
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    .line 468
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 470
    .local v1, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 474
    :cond_1
    if-nez v1, :cond_3

    .line 475
    :try_start_1
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    .line 476
    .restart local v1    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_2
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    .line 482
    .local v0, "editor":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 485
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    .end local v0    # "editor":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 477
    .restart local v1    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 596
    const/16 v0, 0x7d0

    .line 597
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 598
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .param p5, "maxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    if-gtz p5, :cond_1

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxFileCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    if-gtz p2, :cond_2

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v7, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v7, "backupFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    new-instance v9, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v9, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v9, "journalFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 229
    .end local v9    # "journalFile":Ljava/io/File;
    :cond_3
    :goto_0
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    .line 230
    .local v0, "cache":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    iget-object v1, v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    :try_start_0
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->readJournal()V

    .line 233
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->processJournal()V

    .line 234
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 252
    .end local v0    # "cache":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .local v8, "cache":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 224
    .end local v8    # "cache":Ljava/lang/Object;
    .restart local v9    # "journalFile":Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    invoke-static {v7, v9, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 237
    .end local v9    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    :catch_0
    move-exception v10

    .line 238
    .local v10, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->delete()V

    .line 249
    .end local v10    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 250
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .end local v0    # "cache":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    .line 251
    .restart local v0    # "cache":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V

    move-object v8, v0

    .line 252
    .restart local v8    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 332
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 334
    .local v0, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 335
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 336
    iget-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    .line 337
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 340
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 341
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 342
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 343
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 345
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 348
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v5, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 258
    .local v5, "reader":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;
    :try_start_0
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    .line 264
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    .line 265
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    .line 266
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    .line 267
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 268
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 272
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 275
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 281
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    invoke-static {v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 288
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 289
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 290
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 293
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 294
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 296
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 297
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 303
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 306
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 307
    .local v0, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    if-nez v0, :cond_4

    .line 308
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    .line 309
    .restart local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_4
    if-eq v5, v7, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 313
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$702(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z

    .line 315
    invoke-static {v0, v8}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 316
    invoke-static {v0, v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$900(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 318
    new-instance v6, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    invoke-static {v0, v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    goto :goto_0

    .line 319
    :cond_6
    if-ne v5, v7, :cond_7

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 322
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 359
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 373
    .local v0, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 376
    .restart local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 380
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 383
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    :cond_3
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 387
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 389
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    if-eqz p2, :cond_0

    .line 401
    invoke-static {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 403
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 406
    :cond_1
    return-void
.end method

.method private trimToFileCount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    :goto_0
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    if-le v1, v2, :cond_0

    .line 680
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 681
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 683
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    :goto_0
    iget-wide v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 674
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 676
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 696
    sget-object v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 697
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 669
    :goto_0
    monitor-exit p0

    return-void

    .line 660
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 661
    .local v0, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 662
    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 657
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 665
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    .line 666
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    .line 667
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->close()V

    .line 692
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->deleteContents(Ljava/io/File;)V

    .line 693
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 414
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    .line 415
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .local v10, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    if-nez v10, :cond_1

    .line 455
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 421
    :cond_1
    :try_start_1
    invoke-static {v10}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    new-array v6, v2, [Ljava/io/File;

    .line 429
    .local v6, "files":[Ljava/io/File;
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    new-array v7, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .local v7, "ins":[Ljava/io/InputStream;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_2
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v12, v2, :cond_2

    .line 433
    invoke-virtual {v10, v12}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v11

    .line 434
    .local v11, "file":Ljava/io/File;
    aput-object v11, v6, v12

    .line 435
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v7, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 437
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v12, 0x0

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v12, v2, :cond_0

    .line 440
    aget-object v2, v7, v12

    if-eqz v2, :cond_0

    .line 441
    aget-object v2, v7, v12

    invoke-static {v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 439
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 449
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    .line 450
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 451
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 455
    :cond_3
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;

    invoke-static {v10}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J

    move-result-wide v4

    invoke-static {v10}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 414
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "ins":[Ljava/io/InputStream;
    .end local v10    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .end local v12    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    .line 609
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 611
    .local v0, "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 612
    :cond_0
    const/4 v3, 0x0

    .line 633
    :goto_0
    monitor-exit p0

    return v3

    .line 615
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 616
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 617
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 618
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 620
    .restart local v0    # "entry":Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    .line 621
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    .line 622
    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 625
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    .line 626
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 627
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 630
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
