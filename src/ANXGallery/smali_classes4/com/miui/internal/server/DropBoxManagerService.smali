.class public final Lcom/miui/internal/server/DropBoxManagerService;
.super Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DropBoxManagerService$EntryFile;,
        Lcom/miui/internal/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "DropBoxManagerService"

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"

.field private static final hT:I = 0x3f480

.field private static final hU:I = 0x3e8

.field private static final hV:I = 0x1400

.field private static final hW:I = 0xa

.field private static final hX:I = 0xa

.field private static final hY:I = 0x1388

.field private static final hZ:I = 0x1

.field private static final ia:Z = false

.field private static final ib:Ljava/lang/String; = "dropbox:"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/server/DropBoxManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ic:Ljava/io/File;

.field private ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

.field private if:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private ig:Landroid/os/StatFs;

.field private ii:I

.field private ij:I

.field private ik:J

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$1;

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService$1;-><init>()V

    sput-object v0, Lcom/miui/internal/server/DropBoxManagerService;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 97
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    .line 101
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    .line 103
    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ik:J

    .line 110
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    .line 113
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/server/DropBoxManagerService$2;-><init>(Lcom/miui/internal/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 123
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->Z()V

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;-><init>()V

    return-void
.end method

.method private Z()V
    .locals 2

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ik:J

    .line 136
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$3;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    .line 145
    invoke-virtual {v0}, Lcom/miui/internal/server/DropBoxManagerService$3;->start()V

    .line 146
    return-void
.end method

.method private declared-synchronized a(Ljava/io/File;Ljava/lang/String;I)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 628
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 629
    const/4 v4, 0x0

    .line 630
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 631
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 632
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 635
    :cond_0
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-wide/16 v5, 0x1

    if-nez v0, :cond_1

    .line 636
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v7, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    add-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 639
    :cond_1
    if-eqz v4, :cond_4

    .line 640
    array-length v0, v4

    const/4 v7, 0x0

    move-wide v12, v2

    :goto_0
    if-ge v7, v0, :cond_5

    aget-object v2, v4, v7

    .line 641
    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 642
    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 643
    if-eqz v3, :cond_2

    iget-object v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 644
    iget v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    sub-int/2addr v8, v9

    iput v8, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 646
    :cond_2
    iget v3, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    .line 647
    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v9, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget-object v10, v1, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    iget-object v11, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v16, v12, v5

    iget v14, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    iget v15, v1, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v3}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    .line 640
    move-wide/from16 v12, v16

    goto :goto_1

    .line 650
    :cond_3
    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v8, v1, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    iget-object v2, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v9, v12, v5

    invoke-direct {v3, v8, v2, v12, v13}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v3}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    .line 640
    move-wide v12, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 655
    :cond_4
    move-wide v12, v2

    :cond_5
    if-nez p1, :cond_6

    .line 656
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v2, v1, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3, v12, v13}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    goto :goto_2

    .line 658
    :cond_6
    move-object/from16 v3, p2

    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    iget v5, v1, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    move-object v14, v2

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-wide/from16 v18, v12

    move/from16 v20, p3

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v2}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_2
    monitor-exit p0

    return-wide v12

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/miui/internal/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    .locals 3

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 609
    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    if-lez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 611
    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    .line 613
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 616
    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget p1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_1
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized aa()J
    .locals 9

    monitor-enter p0

    .line 670
    nop

    .line 671
    const/16 v0, 0x3e8

    .line 672
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0xf731400

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 673
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 674
    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 675
    iget-wide v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-ge v4, v0, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 678
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 679
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 680
    :cond_2
    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 681
    :cond_3
    goto :goto_0

    .line 688
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 689
    iget-wide v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ik:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_5

    .line 690
    nop

    .line 691
    nop

    .line 692
    nop

    .line 694
    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    .line 696
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    div-int/lit8 v4, v4, 0x64

    sub-int/2addr v2, v4

    .line 697
    const/high16 v4, 0x500000

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    div-int/2addr v4, v5

    .line 698
    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    .line 699
    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ik:J

    .line 716
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    if-le v0, v1, :cond_d

    .line 718
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 719
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 720
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 721
    if-lez v3, :cond_6

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v6, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    sub-int/2addr v6, v0

    div-int/2addr v6, v3

    if-gt v5, v6, :cond_6

    .line 722
    goto :goto_3

    .line 724
    :cond_6
    iget v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    sub-int/2addr v0, v4

    .line 725
    add-int/lit8 v3, v3, 0x1

    .line 726
    goto :goto_2

    .line 727
    :cond_7
    :goto_3
    iget v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v3

    .line 730
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 731
    iget-object v3, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    if-ge v3, v4, :cond_8

    goto :goto_7

    .line 732
    :cond_8
    :goto_5
    iget v3, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    if-le v3, v2, :cond_c

    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 733
    iget-object v3, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 734
    iget-object v4, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v5, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    .line 735
    :cond_9
    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I

    iget v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->io:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->io:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :cond_a
    :try_start_1
    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 739
    :cond_b
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    iget-object v6, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    goto :goto_6

    .line 740
    :catch_0
    move-exception v3

    .line 741
    :try_start_2
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t write tombstone file"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    :goto_6
    goto :goto_5

    .line 744
    :cond_c
    goto :goto_4

    .line 747
    :cond_d
    :goto_7
    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ij:I

    int-to-long v0, v0

    iget v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, v2

    mul-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/miui/internal/server/DropBoxManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic c(Lcom/miui/internal/server/DropBoxManagerService;)J
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->aa()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/miui/internal/server/DropBoxManagerService;
    .locals 1

    .line 59
    sget-object v0, Lcom/miui/internal/server/DropBoxManagerService;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService;

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    .line 565
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ig:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    goto :goto_1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t statfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_7

    .line 572
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_6

    .line 575
    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 576
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    .line 579
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 580
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 581
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 583
    goto :goto_3

    .line 586
    :cond_3
    new-instance v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    invoke-direct {v4, v3, v5}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 587
    iget-object v5, v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 588
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    goto :goto_3

    .line 590
    :cond_4
    iget-wide v5, v4, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 591
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 593
    goto :goto_3

    .line 596
    :cond_5
    invoke-direct {p0, v4}, Lcom/miui/internal/server/DropBoxManagerService;->a(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    .line 579
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 573
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t list files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :cond_7
    monitor-exit p0

    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 63
    const-string p0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-static {p1, p0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object p0

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->Z()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lmiui/os/DropBoxManager$Entry;)V
    .locals 20

    move-object/from16 v0, p0

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 155
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getFlags()I

    move-result v3

    .line 156
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_c

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    .line 159
    invoke-virtual {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v4, :cond_0

    .line 231
    nop

    .line 232
    nop

    .line 233
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 234
    nop

    .line 159
    return-void

    .line 160
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->aa()J

    move-result-wide v4

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 163
    iget v8, v0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    new-array v8, v8, [B

    .line 164
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 169
    nop

    .line 170
    const/4 v10, 0x0

    move v11, v10

    :goto_0
    :try_start_2
    array-length v12, v8

    if-ge v11, v12, :cond_2

    .line 171
    array-length v12, v8

    sub-int/2addr v12, v11

    invoke-virtual {v9, v8, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 172
    if-gtz v12, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    add-int/2addr v11, v12

    .line 174
    goto :goto_0

    .line 179
    :cond_2
    :goto_1
    new-instance v12, Ljava/io/File;

    iget-object v13, v0, Lcom/miui/internal/server/DropBoxManagerService;->ic:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drop"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    move/from16 v16, v3

    invoke-virtual {v15}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 180
    :try_start_3
    iget v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->ii:I

    .line 181
    const/16 v3, 0x1000

    if-le v2, v3, :cond_3

    .line 182
    move v2, v3

    :cond_3
    const/16 v3, 0x200

    if-ge v2, v3, :cond_4

    .line 183
    move v2, v3

    :cond_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 185
    :try_start_4
    array-length v2, v8

    if-ne v11, v2, :cond_5

    and-int/lit8 v2, v16, 0x4

    if-nez v2, :cond_5

    .line 186
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v13}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    or-int/lit8 v13, v16, 0x4

    goto :goto_2

    .line 191
    :cond_5
    move-object v2, v13

    move/from16 v13, v16

    :cond_6
    :goto_2
    :try_start_5
    invoke-virtual {v2, v8, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 194
    sub-long v16, v14, v6

    const-wide/16 v18, 0x7530

    cmp-long v11, v16, v18

    if-lez v11, :cond_7

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->aa()J

    move-result-wide v4

    .line 196
    nop

    .line 199
    move-wide v6, v14

    :cond_7
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 200
    if-gtz v11, :cond_8

    .line 201
    invoke-static {v3}, Lmiui/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 202
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 203
    nop

    .line 208
    const/4 v2, 0x0

    goto :goto_3

    .line 205
    :cond_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 208
    :goto_3
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 209
    cmp-long v14, v14, v4

    if-lez v14, :cond_9

    .line 210
    const-string v3, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 212
    nop

    .line 213
    nop

    .line 217
    const/4 v12, 0x0

    goto :goto_4

    .line 215
    :cond_9
    if-gtz v11, :cond_6

    .line 217
    :goto_4
    invoke-direct {v0, v12, v1, v13}, Lcom/miui/internal/server/DropBoxManagerService;->a(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 218
    nop

    .line 220
    :try_start_6
    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v6, "tag"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v6, "time"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 231
    if-eqz v2, :cond_a

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 232
    :cond_a
    :goto_5
    if-eqz v9, :cond_b

    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 233
    :cond_b
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 234
    goto/16 :goto_c

    .line 231
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_7

    .line 228
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    .line 231
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    goto :goto_d

    .line 228
    :catch_4
    move-exception v0

    move-object v2, v13

    goto :goto_9

    .line 231
    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto :goto_d

    .line 228
    :catch_5
    move-exception v0

    const/4 v2, 0x0

    goto :goto_9

    .line 231
    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto :goto_7

    .line 228
    :catch_6
    move-exception v0

    const/4 v2, 0x0

    goto :goto_8

    .line 156
    :cond_c
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 231
    :catchall_4
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_7
    const/4 v12, 0x0

    goto :goto_d

    .line 228
    :catch_7
    move-exception v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_8
    const/4 v12, 0x0

    .line 229
    :goto_9
    :try_start_a
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 231
    if-eqz v2, :cond_d

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    .line 232
    :cond_d
    :goto_a
    if-eqz v9, :cond_e

    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    .line 233
    :cond_e
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 234
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 236
    :cond_f
    :goto_c
    return-void

    .line 231
    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_d
    if-eqz v2, :cond_10

    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 232
    :cond_10
    :goto_e
    if-eqz v9, :cond_11

    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 233
    :cond_11
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 234
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_12
    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "Permission Denial: Can\'t dump DropBoxManagerService"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 288
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 297
    nop

    .line 301
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    nop

    .line 303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 304
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-eqz v3, :cond_6

    array-length v10, v3

    if-ge v0, v10, :cond_6

    .line 305
    aget-object v10, v3, v0

    const-string v11, "-p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    aget-object v10, v3, v0

    const-string v11, "--print"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    .line 307
    :cond_1
    aget-object v10, v3, v0

    const-string v11, "-f"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v3, v0

    const-string v11, "--file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 309
    :cond_2
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 310
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 312
    :cond_3
    aget-object v9, v3, v0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 308
    :cond_4
    :goto_1
    nop

    .line 304
    const/4 v8, 0x1

    goto :goto_3

    .line 306
    :cond_5
    :goto_2
    nop

    .line 304
    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_6
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 319
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 321
    :cond_7
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 325
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 326
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 328
    iget-wide v14, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    invoke-virtual {v11, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 329
    const-string v14, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 330
    nop

    .line 331
    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_6
    if-ge v15, v10, :cond_b

    if-eqz v16, :cond_b

    .line 332
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 333
    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    iget-object v9, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    .line 331
    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    .line 333
    :cond_a
    :goto_7
    nop

    .line 331
    const/16 v16, 0x1

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 335
    :cond_b
    if-nez v16, :cond_c

    goto :goto_5

    .line 337
    :cond_c
    add-int/lit8 v6, v0, 0x1

    .line 338
    if-eqz v7, :cond_d

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_d
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "(no tag)"

    goto :goto_9

    :cond_e
    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v0, :cond_f

    .line 341
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    nop

    .line 327
    :goto_a
    move-object/from16 v24, v5

    move/from16 v23, v10

    goto/16 :goto_1a

    .line 343
    :cond_f
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 v9, 0x1

    and-int/2addr v0, v9

    if-eqz v0, :cond_10

    .line 344
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    goto :goto_a

    .line 347
    :cond_10
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_11
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    const-string v0, "text"

    goto :goto_b

    :cond_12
    const-string v0, "data"

    :goto_b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    if-nez v8, :cond_13

    if-eqz v7, :cond_15

    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    .line 354
    :cond_13
    if-nez v7, :cond_14

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_14
    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_15
    iget v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    if-nez v7, :cond_16

    if-nez v8, :cond_21

    .line 359
    :cond_16
    nop

    .line 360
    nop

    .line 362
    :try_start_3
    new-instance v15, Lmiui/os/DropBoxManager$Entry;

    iget-object v0, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v23, v10

    :try_start_4
    iget-wide v9, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    iget-object v14, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v24, v5

    :try_start_5
    iget v5, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v17, v15

    move-object/from16 v18, v0

    move-wide/from16 v19, v9

    move-object/from16 v21, v14

    move/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 365
    const/16 v0, 0xa

    if-eqz v7, :cond_1b

    .line 366
    :try_start_6
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v15}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 367
    const/16 v5, 0x1000

    :try_start_7
    new-array v5, v5, [C

    .line 368
    nop

    .line 370
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v14, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 371
    if-gtz v10, :cond_18

    .line 381
    if-nez v9, :cond_17

    :try_start_8
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_d

    .line 389
    :catch_0
    move-exception v0

    move-object v5, v14

    move-object v14, v15

    const/4 v10, 0x0

    goto/16 :goto_15

    .line 382
    :cond_17
    :goto_d
    nop

    .line 393
    const/4 v10, 0x0

    goto/16 :goto_13

    .line 372
    :cond_18
    const/4 v9, 0x0

    :try_start_9
    invoke-virtual {v4, v5, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 373
    add-int/lit8 v10, v10, -0x1

    :try_start_a
    aget-char v9, v5, v10

    if-ne v9, v0, :cond_19

    .line 376
    const/4 v9, 0x1

    goto :goto_e

    .line 373
    :cond_19
    nop

    .line 376
    const/4 v9, 0x0

    :goto_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/high16 v0, 0x10000

    if-le v10, v0, :cond_1a

    .line 377
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 378
    const/4 v10, 0x0

    :try_start_b
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_f

    .line 389
    :catch_1
    move-exception v0

    goto :goto_10

    .line 380
    :cond_1a
    const/4 v10, 0x0

    .line 370
    :goto_f
    const/16 v0, 0xa

    goto :goto_c

    .line 389
    :catch_2
    move-exception v0

    move v10, v9

    goto :goto_10

    .line 393
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v5, v14

    goto/16 :goto_17

    .line 389
    :catch_3
    move-exception v0

    const/4 v10, 0x0

    :goto_10
    move-object v5, v14

    move-object v14, v15

    goto :goto_15

    .line 393
    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto/16 :goto_17

    .line 389
    :catch_4
    move-exception v0

    const/4 v10, 0x0

    :goto_11
    move-object v14, v15

    const/4 v5, 0x0

    goto :goto_15

    .line 383
    :cond_1b
    const/4 v10, 0x0

    const/16 v0, 0x46

    :try_start_c
    invoke-virtual {v15, v0}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v0, :cond_1c

    .line 385
    const/4 v0, 0x1

    goto :goto_12

    .line 384
    :cond_1c
    nop

    .line 385
    move v0, v10

    :goto_12
    const-string v9, "    "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x2f

    const/16 v14, 0xa

    invoke-virtual {v5, v14, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    if-eqz v0, :cond_1d

    const-string v0, " ..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1d
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 393
    const/4 v14, 0x0

    :goto_13
    :try_start_d
    invoke-virtual {v15}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 394
    if-eqz v14, :cond_22

    .line 396
    :try_start_e
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_16

    .line 389
    :catch_5
    move-exception v0

    goto :goto_11

    :catch_6
    move-exception v0

    goto :goto_14

    :catch_7
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_14

    .line 393
    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v15, 0x0

    goto :goto_17

    .line 389
    :catch_8
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v23, v10

    :goto_14
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 390
    :goto_15
    :try_start_f
    const-string v9, "*** "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v9, "DropBoxManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 393
    if-eqz v14, :cond_1e

    :try_start_10
    invoke-virtual {v14}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 394
    :cond_1e
    if-eqz v5, :cond_22

    .line 396
    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 398
    :goto_16
    goto :goto_19

    .line 397
    :catch_9
    move-exception v0

    goto :goto_16

    .line 393
    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v15, v14

    :goto_17
    if-eqz v15, :cond_1f

    :try_start_12
    invoke-virtual {v15}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 394
    :cond_1f
    if-eqz v5, :cond_20

    .line 396
    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 398
    goto :goto_18

    .line 397
    :catch_a
    move-exception v0

    .line 398
    :cond_20
    :goto_18
    :try_start_14
    throw v2

    .line 403
    :cond_21
    move-object/from16 v24, v5

    move/from16 v23, v10

    :cond_22
    :goto_19
    if-eqz v7, :cond_23

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_23
    nop

    .line 327
    :goto_1a
    move v0, v6

    move/from16 v10, v23

    move-object/from16 v5, v24

    goto/16 :goto_5

    .line 406
    :cond_24
    if-nez v0, :cond_25

    const-string v0, "(No entries found.)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_25
    if-eqz v3, :cond_26

    array-length v0, v3

    if-nez v0, :cond_28

    .line 409
    :cond_26
    if-nez v7, :cond_27

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_27
    const-string v0, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 415
    monitor-exit p0

    return-void

    .line 293
    :catch_b
    move-exception v0

    .line 294
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    const-string v0, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v0, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 296
    monitor-exit p0

    return-void

    .line 283
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;
    .locals 7

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "miui.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 257
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    nop

    .line 263
    if-nez p1, :cond_0

    :try_start_2
    iget-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService;->ie:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->if:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :goto_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-object v0

    .line 266
    :cond_1
    :try_start_3
    iget-object p1, p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->ip:Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    invoke-direct {v1, p2, p3}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 267
    iget-object p3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez p3, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    iget p3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_3

    .line 269
    new-instance p1, Lmiui/os/DropBoxManager$Entry;

    iget-object p3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    invoke-direct {p1, p3, v0, v1}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 272
    :cond_3
    :try_start_4
    new-instance p3, Lmiui/os/DropBoxManager$Entry;

    iget-object v2, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v3, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->im:J

    iget-object v5, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v6, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p3

    .line 274
    :catch_0
    move-exception p3

    .line 275
    :try_start_5
    const-string v1, "DropBoxManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    goto :goto_1

    .line 280
    :cond_4
    monitor-exit p0

    return-object v0

    .line 258
    :catch_1
    move-exception p1

    .line 259
    :try_start_6
    const-string p2, "DropBoxManagerService"

    const-string p3, "Can\'t init"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 260
    monitor-exit p0

    return-object v0

    .line 253
    :cond_5
    :try_start_7
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "READ_LOGS permission required"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 249
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 5

    .line 240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 242
    :try_start_0
    const-string v2, "disabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    return p1

    .line 244
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
