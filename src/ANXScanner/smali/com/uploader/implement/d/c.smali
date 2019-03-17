.class public Lcom/uploader/implement/d/c;
.super Ljava/lang/Object;
.source "UploaderSession.java"

# interfaces
.implements Lcom/uploader/implement/b/b;
.implements Lcom/uploader/implement/b/d;
.implements Lcom/uploader/implement/d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/d/c$a;,
        Lcom/uploader/implement/d/c$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Lcom/uploader/implement/d/a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/d/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/d/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/uploader/implement/b/c;

.field private f:Landroid/os/Handler;

.field private final h:I

.field private final i:Lcom/uploader/implement/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/uploader/implement/d/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/uploader/implement/c;Lcom/uploader/implement/b/c;Landroid/os/Looper;)V
    .locals 1
    .param p1, "config"    # Lcom/uploader/implement/c;
    .param p2, "recycler"    # Lcom/uploader/implement/b/c;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    .line 192
    iput-object p1, p0, Lcom/uploader/implement/d/c;->i:Lcom/uploader/implement/c;

    .line 193
    iput-object p2, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/uploader/implement/d/c;->h:I

    .line 197
    return-void
.end method

.method private static a(Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I
    .locals 3
    .param p0, "request"    # Lcom/uploader/implement/a/e;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/a/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/d/c$b;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 771
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 772
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 773
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$b;

    iget-object v2, v2, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 772
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I
    .locals 3
    .param p0, "connection"    # Lcom/uploader/implement/b/e;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/d/c$b;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 762
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 763
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$b;

    iget-object v2, v2, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 767
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 762
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Lcom/uploader/implement/d/c$b;Ljava/nio/ByteBuffer;)Lcom/uploader/implement/c/a;
    .locals 22
    .param p1, "wrapper"    # Lcom/uploader/implement/d/c$b;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 324
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/uploader/implement/a/h;->h:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 325
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->c:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/uploader/implement/d/c$b;->g:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    .line 326
    .local v15, "start":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->d:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/uploader/implement/d/c$b;->g:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v14, v0

    .line 327
    .local v14, "size":I
    if-ltz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->d:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/uploader/implement/a/h;->h:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    .line 328
    :cond_0
    new-instance v16, Lcom/uploader/implement/c/a;

    const-string v17, "200"

    const-string v18, "11"

    const-string v19, "readFromBytes"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 395
    .end local v14    # "size":I
    .end local v15    # "start":I
    :cond_1
    :goto_0
    return-object v16

    .line 331
    .restart local v14    # "size":I
    .restart local v15    # "start":I
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/uploader/implement/a/h;->h:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 333
    move-object/from16 v0, p1

    iget v0, v0, Lcom/uploader/implement/d/c$b;->g:I

    move/from16 v16, v0

    add-int v16, v16, v14

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/uploader/implement/d/c$b;->g:I

    .line 335
    const/4 v11, 0x4

    .line 336
    .local v11, "p":I
    invoke-static {v11}, Lcom/uploader/implement/a;->a(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 337
    const-string v16, "UploaderSession"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/d/c;->h:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " readFromEntity, from copy:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    .line 343
    .end local v11    # "p":I
    .end local v14    # "size":I
    .end local v15    # "start":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/uploader/implement/a/h;->a:Ljava/io/File;

    .line 344
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_6

    .line 345
    :cond_5
    new-instance v16, Lcom/uploader/implement/c/a;

    const-string v17, "200"

    const-string v18, "3"

    const-string v19, "file == null || !file.exists()"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 348
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 349
    .local v8, "lastModified":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->b:J

    move-wide/from16 v16, v0

    cmp-long v16, v8, v16

    if-eqz v16, :cond_8

    const/4 v10, 0x1

    .line 350
    .local v10, "modified":Z
    :goto_1
    if-eqz v10, :cond_a

    .line 351
    const/16 v11, 0x8

    .line 352
    .restart local v11    # "p":I
    invoke-static {v11}, Lcom/uploader/implement/a;->a(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 353
    const-string v16, "UploaderSession"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/d/c;->h:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " readFromEntity, file has been modified, origin:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->b:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " current:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_7
    const-wide/16 v16, 0x0

    cmp-long v16, v16, v8

    if-nez v16, :cond_9

    .line 357
    new-instance v16, Lcom/uploader/implement/c/a;

    const-string v17, "200"

    const-string v18, "10"

    const-string v19, "file.lastModified()==0"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 349
    .end local v10    # "modified":Z
    .end local v11    # "p":I
    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    .line 360
    .restart local v10    # "modified":Z
    .restart local v11    # "p":I
    :cond_9
    new-instance v16, Lcom/uploader/implement/c/a;

    const-string v17, "200"

    const-string v18, "6"

    const-string v19, "file has been modified"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 365
    .end local v11    # "p":I
    :cond_a
    const/4 v6, 0x0

    .line 367
    .local v6, "input":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .end local v6    # "input":Ljava/io/FileInputStream;
    .local v7, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->c:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/uploader/implement/d/c$b;->g:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v12

    .line 369
    .local v12, "readSize":I
    if-gez v12, :cond_b

    .line 370
    new-instance v16, Lcom/uploader/implement/c/a;

    const-string v17, "200"

    const-string v18, "3"

    const-string v19, "file read failed"

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    if-eqz v7, :cond_1

    .line 386
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Ljava/io/IOException;
    const/16 v11, 0x8

    .line 390
    .restart local v11    # "p":I
    invoke-static {v11}, Lcom/uploader/implement/a;->a(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 391
    const-string v17, "UploaderSession"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/d/c;->h:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " readFromEntity:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 373
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "p":I
    :cond_b
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/uploader/implement/d/c$b;->g:I

    move/from16 v16, v0

    add-int v16, v16, v12

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/uploader/implement/a/h;->d:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 374
    .local v13, "redundant":I
    if-lez v13, :cond_c

    .line 375
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    sub-int v16, v16, v13

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 376
    sub-int/2addr v12, v13

    .line 378
    :cond_c
    if-lez v12, :cond_d

    .line 379
    move-object/from16 v0, p1

    iget v0, v0, Lcom/uploader/implement/d/c$b;->g:I

    move/from16 v16, v0

    add-int v16, v16, v12

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/uploader/implement/d/c$b;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    :cond_d
    if-eqz v7, :cond_e

    .line 386
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 395
    :cond_e
    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 388
    :catch_1
    move-exception v4

    .line 389
    .restart local v4    # "e":Ljava/io/IOException;
    const/16 v11, 0x8

    .line 390
    .restart local v11    # "p":I
    invoke-static {v11}, Lcom/uploader/implement/a;->a(I)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 391
    const-string v16, "UploaderSession"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/d/c;->h:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " readFromEntity:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 381
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v11    # "p":I
    .end local v12    # "readSize":I
    .end local v13    # "redundant":I
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 382
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    new-instance v16, Lcom/uploader/implement/c/a;

    const-string v17, "200"

    const-string v18, "3"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 385
    if-eqz v6, :cond_1

    .line 386
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 388
    :catch_3
    move-exception v4

    .line 389
    .local v4, "e":Ljava/io/IOException;
    const/16 v11, 0x8

    .line 390
    .restart local v11    # "p":I
    invoke-static {v11}, Lcom/uploader/implement/a;->a(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 391
    const-string v17, "UploaderSession"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/d/c;->h:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " readFromEntity:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 384
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "p":I
    :catchall_0
    move-exception v16

    .line 385
    :goto_4
    if-eqz v6, :cond_f

    .line 386
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 393
    :cond_f
    :goto_5
    throw v16

    .line 388
    :catch_4
    move-exception v4

    .line 389
    .restart local v4    # "e":Ljava/io/IOException;
    const/16 v11, 0x8

    .line 390
    .restart local v11    # "p":I
    invoke-static {v11}, Lcom/uploader/implement/a;->a(I)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 391
    const-string v17, "UploaderSession"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uploader/implement/d/c;->h:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " readFromEntity:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 384
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "p":I
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_4

    .line 381
    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private a(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 414
    iget-object v10, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uploader/implement/d/c$b;

    .line 416
    .local v9, "wrapper":Lcom/uploader/implement/d/c$b;
    const/4 v0, 0x0

    .line 417
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const v1, 0x4b000

    .line 418
    .local v1, "capacity":I
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v10}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v10

    iget-boolean v10, v10, Lcom/uploader/implement/b/a;->e:Z

    if-nez v10, :cond_3

    .line 419
    const/4 v5, 0x0

    .line 421
    .local v5, "oneWayCapacity":I
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v2, v10, Lcom/uploader/implement/a/h;->f:[B

    .line 422
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 423
    array-length v10, v2

    add-int/2addr v5, v10

    .line 426
    :cond_0
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v10, v10, Lcom/uploader/implement/a/h;->a:Ljava/io/File;

    if-eqz v10, :cond_1

    .line 427
    int-to-long v10, v5

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-wide v12, v12, Lcom/uploader/implement/a/h;->d:J

    add-long/2addr v10, v12

    long-to-int v5, v10

    .line 430
    :cond_1
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v2, v10, Lcom/uploader/implement/a/h;->g:[B

    .line 431
    if-eqz v2, :cond_2

    .line 432
    array-length v10, v2

    add-int/2addr v5, v10

    .line 435
    :cond_2
    if-lez v5, :cond_3

    .line 436
    move v1, v5

    .line 440
    .end local v2    # "data":[B
    .end local v5    # "oneWayCapacity":I
    :cond_3
    const/4 v4, 0x0

    .line 441
    .local v4, "error":Lcom/uploader/implement/c/a;
    iget-object v0, v9, Lcom/uploader/implement/d/c$b;->m:Ljava/nio/ByteBuffer;

    .line 442
    if-eqz v0, :cond_4

    .line 443
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 445
    :cond_4
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v10, v10, Lcom/uploader/implement/a/h;->f:[B

    if-eqz v10, :cond_6

    iget v10, v9, Lcom/uploader/implement/d/c$b;->f:I

    iget-object v11, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v11, v11, Lcom/uploader/implement/a/h;->f:[B

    array-length v11, v11

    if-ge v10, v11, :cond_6

    .line 446
    if-nez v0, :cond_5

    .line 448
    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 453
    :goto_0
    iput-object v0, v9, Lcom/uploader/implement/d/c$b;->m:Ljava/nio/ByteBuffer;

    .line 456
    :cond_5
    invoke-direct {p0, v9, v0}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/d/c$b;Ljava/nio/ByteBuffer;)Lcom/uploader/implement/c/a;

    move-result-object v4

    .line 459
    :cond_6
    if-nez v4, :cond_8

    iget v10, v9, Lcom/uploader/implement/d/c$b;->g:I

    int-to-long v10, v10

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-wide v12, v12, Lcom/uploader/implement/a/h;->d:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    .line 460
    if-nez v0, :cond_7

    .line 462
    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 467
    :goto_1
    iput-object v0, v9, Lcom/uploader/implement/d/c$b;->m:Ljava/nio/ByteBuffer;

    .line 469
    :cond_7
    invoke-direct {p0, v9, v0}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/d/c$b;Ljava/nio/ByteBuffer;)Lcom/uploader/implement/c/a;

    move-result-object v4

    .line 472
    :cond_8
    if-eqz v4, :cond_9

    .line 473
    invoke-direct {p0, p1, v4}, Lcom/uploader/implement/d/c;->a(ILcom/uploader/implement/c/a;)V

    .line 527
    :goto_2
    return-void

    .line 449
    :catch_0
    move-exception v3

    .line 450
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    shr-int/lit8 v1, v1, 0x1

    .line 451
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 463
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 464
    .restart local v3    # "e":Ljava/lang/OutOfMemoryError;
    shr-int/lit8 v1, v1, 0x1

    .line 465
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 477
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :cond_9
    sget-object v10, Lcom/uploader/implement/d/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    iput v10, v9, Lcom/uploader/implement/d/c$b;->h:I

    .line 482
    iget-boolean v10, v9, Lcom/uploader/implement/d/c$b;->e:Z

    if-nez v10, :cond_b

    iget v10, v9, Lcom/uploader/implement/d/c$b;->g:I

    int-to-long v10, v10

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-wide v12, v12, Lcom/uploader/implement/a/h;->d:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    .line 483
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v8, v10, Lcom/uploader/implement/a/h;->g:[B

    .line 484
    .local v8, "tail":[B
    if-nez v0, :cond_a

    .line 485
    array-length v10, v8

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 487
    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    array-length v11, v8

    if-lt v10, v11, :cond_b

    .line 488
    const/4 v10, 0x0

    array-length v11, v8

    invoke-virtual {v0, v8, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 489
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/uploader/implement/d/c$b;->e:Z

    .line 493
    .end local v8    # "tail":[B
    :cond_b
    iget-object v7, v9, Lcom/uploader/implement/d/c$b;->l:Lcom/uploader/implement/b/f;

    .line 494
    .local v7, "requestData":Lcom/uploader/implement/b/f;
    if-nez v7, :cond_c

    .line 495
    new-instance v7, Lcom/uploader/implement/b/f;

    .end local v7    # "requestData":Lcom/uploader/implement/b/f;
    invoke-direct {v7}, Lcom/uploader/implement/b/f;-><init>()V

    .line 496
    .restart local v7    # "requestData":Lcom/uploader/implement/b/f;
    iput-object v7, v9, Lcom/uploader/implement/d/c$b;->l:Lcom/uploader/implement/b/f;

    .line 498
    :cond_c
    const/4 v10, 0x0

    iput v10, v7, Lcom/uploader/implement/b/f;->c:I

    .line 499
    const/4 v10, 0x0

    iput v10, v7, Lcom/uploader/implement/b/f;->d:I

    .line 500
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    .line 501
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/uploader/implement/b/f;->b:[B

    .line 503
    iget-boolean v10, v9, Lcom/uploader/implement/d/c$b;->d:Z

    if-nez v10, :cond_d

    .line 504
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v10, v10, Lcom/uploader/implement/a/h;->e:Ljava/util/Map;

    iput-object v10, v7, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    .line 505
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/uploader/implement/d/c$b;->d:Z

    .line 508
    :cond_d
    if-eqz v0, :cond_e

    .line 509
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    iput v10, v9, Lcom/uploader/implement/d/c$b;->i:I

    .line 510
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    iput-object v10, v7, Lcom/uploader/implement/b/f;->b:[B

    .line 511
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    iput v10, v7, Lcom/uploader/implement/b/f;->c:I

    .line 512
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    iput v10, v7, Lcom/uploader/implement/b/f;->d:I

    .line 515
    :cond_e
    const/4 v6, 0x4

    .line 516
    .local v6, "p":I
    invoke-static {v6}, Lcom/uploader/implement/a;->a(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 517
    const-string v10, "UploaderSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sendRequest, request:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " connection:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " requestData:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/uploader/implement/b/f;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " currentSendSequence:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/uploader/implement/d/c$b;->h:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tailFinish:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v9, Lcom/uploader/implement/d/c$b;->e:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " headerFinish:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v9, Lcom/uploader/implement/d/c$b;->d:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entitySizeSent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/uploader/implement/d/c$b;->g:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytesSizeSent:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/uploader/implement/d/c$b;->f:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " offset:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-wide v12, v12, Lcom/uploader/implement/a/h;->c:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-wide v12, v12, Lcom/uploader/implement/a/h;->d:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " requestData length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/uploader/implement/b/f;->d:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v10, v11}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_f
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    iget v11, v9, Lcom/uploader/implement/d/c$b;->h:I

    invoke-interface {v10, v7, v11}, Lcom/uploader/implement/b/e;->a(Lcom/uploader/implement/b/f;I)V

    .line 526
    iget-object v10, v9, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    iget v11, v9, Lcom/uploader/implement/d/c$b;->i:I

    invoke-direct {p0, v10, v11}, Lcom/uploader/implement/d/c;->c(Lcom/uploader/implement/b/e;I)V

    goto/16 :goto_2
.end method

.method private a(ILcom/uploader/implement/c/a;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 630
    iget-object v2, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uploader/implement/d/c$b;

    .line 632
    .local v1, "wrapper":Lcom/uploader/implement/d/c$b;
    const/4 v0, 0x2

    .line 633
    .local v0, "p":I
    invoke-static {v0}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notifyError, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v3, v1, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v2, p0, v3, p2}, Lcom/uploader/implement/d/a;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/c/a;)V

    .line 640
    :cond_1
    return-void
.end method

.method private static a(Lcom/uploader/implement/d/c$b;Lcom/uploader/implement/b/f;)V
    .locals 3
    .param p0, "wrapper"    # Lcom/uploader/implement/d/c$b;
    .param p1, "data"    # Lcom/uploader/implement/b/f;

    .prologue
    .line 712
    iget-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 713
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    .line 714
    iget-object v1, p1, Lcom/uploader/implement/b/f;->a:Ljava/util/Map;

    iput-object v1, p0, Lcom/uploader/implement/d/c$b;->k:Ljava/util/Map;

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p1, Lcom/uploader/implement/b/f;->b:[B

    array-length v2, v2

    add-int v0, v1, v2

    .line 717
    .local v0, "dataSize":I
    iget-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 718
    iget-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 719
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/uploader/implement/b/f;->b:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 722
    return-void
.end method

.method private static b(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I
    .locals 4
    .param p0, "connection"    # Lcom/uploader/implement/b/e;
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/d/c$a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 782
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 783
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$a;

    iget-object v2, v2, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 782
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(Lcom/uploader/implement/d/c$b;Ljava/nio/ByteBuffer;)Lcom/uploader/implement/c/a;
    .locals 7
    .param p1, "wrapper"    # Lcom/uploader/implement/d/c$b;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 399
    iget-object v2, p1, Lcom/uploader/implement/d/c$b;->b:Lcom/uploader/implement/a/h;

    iget-object v1, v2, Lcom/uploader/implement/a/h;->f:[B

    .line 400
    .local v1, "smallData":[B
    array-length v2, v1

    iget v3, p1, Lcom/uploader/implement/d/c$b;->f:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 401
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 402
    new-instance v2, Lcom/uploader/implement/c/a;

    const-string v3, "200"

    const-string v4, "1"

    const-string v5, "readFromBytes"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 409
    :goto_0
    return-object v2

    .line 405
    :cond_0
    iget v2, p1, Lcom/uploader/implement/d/c$b;->f:I

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 407
    iget v2, p1, Lcom/uploader/implement/d/c$b;->f:I

    add-int/2addr v2, v0

    iput v2, p1, Lcom/uploader/implement/d/c$b;->f:I

    .line 409
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private c(Lcom/uploader/implement/b/e;I)V
    .locals 6
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "currentSendSize"    # I

    .prologue
    .line 731
    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 733
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 734
    new-instance v1, Lcom/uploader/implement/d/c$a;

    const/16 v2, 0x8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, p0, v3}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    .line 735
    .local v1, "runnable":Lcom/uploader/implement/d/c$a;
    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :goto_0
    iget-object v2, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    const v3, 0x19000

    div-int v3, p2, v3

    add-int/lit16 v3, v3, 0x7530

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 742
    return-void

    .line 737
    .end local v1    # "runnable":Lcom/uploader/implement/d/c$a;
    :cond_0
    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uploader/implement/d/c$a;

    .line 738
    .restart local v1    # "runnable":Lcom/uploader/implement/d/c$a;
    iget-object v2, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private e(Lcom/uploader/implement/b/e;)V
    .locals 5
    .param p1, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 745
    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 746
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 747
    const/16 v1, 0x8

    .line 748
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clearTimeout, NO_POSITION, connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 753
    .end local v1    # "p":I
    :cond_1
    iget-object v3, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    const/4 v1, 0x2

    .line 755
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clearTimeout, connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 536
    iget-object v2, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 537
    iget-object v2, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 538
    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 539
    iget-object v3, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 538
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v2, p0}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;)Z

    .line 544
    const/4 v1, 0x2

    .line 545
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " release"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    return-void
.end method

.method public a(Lcom/uploader/implement/a/e;)V
    .locals 5
    .param p1, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v2, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v2, p0, p1, p0}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)Z

    move-result v0

    .line 239
    .local v0, "done":Z
    const/4 v1, 0x2

    .line 240
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " send, request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " register:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    return-void
.end method

.method public a(Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Z)V
    .locals 11
    .param p1, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newRequest"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "keepAlive"    # Z

    .prologue
    const/4 v10, -0x1

    .line 248
    iget-object v0, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 249
    .local v7, "index":I
    if-eq v7, v10, :cond_2

    .line 250
    iget-object v0, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;Z)Z

    move-result v6

    .line 252
    .local v6, "done":Z
    if-nez v6, :cond_0

    .line 253
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v0, p0, p1, p3}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Z

    .line 254
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v0, p0, p2, p0}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)Z

    .line 256
    :cond_0
    const/4 v8, 0x2

    .line 257
    .local v8, "p":I
    invoke-static {v8}, Lcom/uploader/implement/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "UploaderSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " replace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waiting request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 263
    .end local v6    # "done":Z
    .end local v8    # "p":I
    :cond_2
    iget-object v0, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v7

    .line 264
    if-ne v7, v10, :cond_4

    .line 265
    iget-object v0, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;Z)Z

    move-result v6

    .line 267
    .restart local v6    # "done":Z
    if-nez v6, :cond_3

    .line 268
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v0, p0, p1, p3}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Z

    .line 269
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v0, p0, p2, p0}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)Z

    .line 271
    :cond_3
    const/4 v8, 0x2

    .line 272
    .restart local v8    # "p":I
    invoke-static {v8}, Lcom/uploader/implement/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "UploaderSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " replace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v6    # "done":Z
    .end local v8    # "p":I
    :cond_4
    iget-object v0, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uploader/implement/d/c$b;

    .line 281
    .local v9, "wrapper":Lcom/uploader/implement/d/c$b;
    iget-object v0, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;Z)Z

    move-result v6

    .line 283
    .restart local v6    # "done":Z
    if-nez v6, :cond_5

    .line 284
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v0, p0, p1, p3}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Z

    .line 285
    iget-object v0, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v0, p0, p2, p0}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)Z

    .line 288
    :cond_5
    iget-object v0, v9, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    iget-object v1, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v7

    .line 289
    if-eq v7, v10, :cond_6

    .line 290
    iget-object v1, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    :cond_6
    const/4 v8, 0x2

    .line 294
    .restart local v8    # "p":I
    invoke-static {v8}, Lcom/uploader/implement/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, "UploaderSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " replace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Lcom/uploader/implement/a/e;Z)V
    .locals 8
    .param p1, "request"    # Lcom/uploader/implement/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keepAlive"    # Z

    .prologue
    const/4 v7, -0x1

    .line 201
    iget-object v4, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    const/4 v2, 0x2

    .line 203
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const-string v4, "UploaderSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cancel, waiting request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 209
    .end local v2    # "p":I
    :cond_1
    iget-object v4, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/a/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 210
    .local v1, "index":I
    if-ne v1, v7, :cond_2

    .line 211
    const/4 v2, 0x2

    .line 212
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    const-string v4, "UploaderSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cancel, no sending request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v2    # "p":I
    :cond_2
    iget-object v4, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uploader/implement/d/c$b;

    .line 219
    .local v3, "wrapper":Lcom/uploader/implement/d/c$b;
    iget-object v4, p0, Lcom/uploader/implement/d/c;->e:Lcom/uploader/implement/b/c;

    invoke-interface {v4, p0, p1, p2}, Lcom/uploader/implement/b/c;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Z)Z

    move-result v0

    .line 221
    .local v0, "done":Z
    iget-object v4, v3, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    iget-object v5, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 222
    if-eq v1, v7, :cond_3

    .line 223
    iget-object v5, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    iget-object v4, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    :cond_3
    const/4 v2, 0x2

    .line 227
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    const-string v5, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cancel, sendingList request"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " remove timeout:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eq v1, v7, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " unregister:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public a(Lcom/uploader/implement/b/e;)V
    .locals 5
    .param p1, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    const/4 v4, 0x1

    .line 552
    iget-object v0, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/uploader/implement/d/c$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v4, p0, v2}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method public a(Lcom/uploader/implement/b/e;I)V
    .locals 6
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "sendSequence"    # I

    .prologue
    .line 726
    iget-object v2, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    new-instance v3, Lcom/uploader/implement/d/c$a;

    const/4 v0, 0x6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {v3, v0, p0, v1}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uploader/implement/d/c;->i:Lcom/uploader/implement/c;

    iget-object v0, v0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-virtual {v0}, Lcom/uploader/export/UploaderEnvironment;->enableFlowControl()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    return-void

    .line 726
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/uploader/implement/b/e;IZ)V
    .locals 7
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "sendSequence"    # I
    .param p3, "begin"    # Z

    .prologue
    .line 796
    iget-object v4, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 797
    .local v0, "index":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 798
    const/16 v2, 0x8

    .line 799
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 800
    const-string v4, "UploaderSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doSend, NO_POSITION, connection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 805
    .end local v2    # "p":I
    :cond_1
    iget-object v4, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uploader/implement/d/c$b;

    .line 807
    .local v3, "wrapper":Lcom/uploader/implement/d/c$b;
    invoke-virtual {v3}, Lcom/uploader/implement/d/c$b;->b()Z

    move-result v1

    .line 809
    .local v1, "isFinished":Z
    const/4 v2, 0x2

    .line 810
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 811
    const-string v4, "UploaderSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doSend, begin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sendSequence:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isFinished:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_2
    if-eqz p3, :cond_4

    .line 816
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v4, :cond_3

    .line 817
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v5, v3, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    iget v6, v3, Lcom/uploader/implement/d/c$b;->g:I

    invoke-interface {v4, p0, v5, v6}, Lcom/uploader/implement/d/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;I)V

    .line 829
    :cond_3
    :goto_1
    iget-object v4, v3, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    iget v5, v3, Lcom/uploader/implement/d/c$b;->i:I

    invoke-direct {p0, v4, v5}, Lcom/uploader/implement/d/c;->c(Lcom/uploader/implement/b/e;I)V

    goto :goto_0

    .line 820
    :cond_4
    if-nez v1, :cond_5

    .line 821
    invoke-direct {p0, v0}, Lcom/uploader/implement/d/c;->a(I)V

    goto :goto_0

    .line 824
    :cond_5
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v4, :cond_3

    .line 825
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v5, v3, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v4, p0, v5}, Lcom/uploader/implement/d/a;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V

    goto :goto_1
.end method

.method public a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/b/f;)V
    .locals 5
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "data"    # Lcom/uploader/implement/b/f;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/uploader/implement/d/c$a;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, p0, v3}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method public a(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V
    .locals 5
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/uploader/implement/d/c$a;

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, p0, v3}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    return-void
.end method

.method public a(Lcom/uploader/implement/d/a;)V
    .locals 0
    .param p1, "listener"    # Lcom/uploader/implement/d/a;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    .line 532
    return-void
.end method

.method public a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V
    .locals 5
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/uploader/implement/d/c$a;

    const/4 v2, 0x7

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-direct {v1, v2, p0, v3}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method b(Lcom/uploader/implement/b/e;)V
    .locals 7
    .param p1, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 301
    iget-object v3, p0, Lcom/uploader/implement/d/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object v3, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v1

    .line 304
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 305
    const/16 v2, 0x8

    .line 306
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const-string v3, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeout, NO_POSITION, connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 312
    .end local v2    # "p":I
    :cond_1
    const/4 v2, 0x2

    .line 313
    .restart local v2    # "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    const-string v3, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeout, connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    new-instance v0, Lcom/uploader/implement/c/a;

    const-string v3, "100"

    const-string v4, "2"

    const-string v5, "data send or receive timeout"

    const/4 v6, 0x1

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    .local v0, "error":Lcom/uploader/implement/c/a;
    invoke-direct {p0, v1, v0}, Lcom/uploader/implement/d/c;->a(ILcom/uploader/implement/c/a;)V

    goto :goto_0
.end method

.method public b(Lcom/uploader/implement/b/e;I)V
    .locals 6
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "sendSequence"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/uploader/implement/d/c;->f:Landroid/os/Handler;

    new-instance v1, Lcom/uploader/implement/d/c$a;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, p0, v3}, Lcom/uploader/implement/d/c$a;-><init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method

.method b(Lcom/uploader/implement/b/e;Lcom/uploader/implement/b/f;)V
    .locals 13
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "data"    # Lcom/uploader/implement/b/f;

    .prologue
    .line 648
    iget-object v8, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v8}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v3

    .line 649
    .local v3, "index":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 650
    const/16 v4, 0x8

    .line 651
    .local v4, "p":I
    invoke-static {v4}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 652
    const-string v8, "UploaderSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doReceive, NO_POSITION, connection:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 656
    .end local v4    # "p":I
    :cond_1
    const/4 v4, 0x2

    .line 657
    .restart local v4    # "p":I
    invoke-static {v4}, Lcom/uploader/implement/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 658
    const-string v8, "UploaderSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doReceive, sendingList.size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " connection:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/uploader/implement/b/f;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2
    iget-object v8, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uploader/implement/d/c$b;

    .line 664
    .local v7, "wrapper":Lcom/uploader/implement/d/c$b;
    iget-object v8, v7, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    iget v9, v7, Lcom/uploader/implement/d/c$b;->i:I

    invoke-direct {p0, v8, v9}, Lcom/uploader/implement/d/c;->c(Lcom/uploader/implement/b/e;I)V

    .line 666
    invoke-static {v7, p2}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/d/c$b;Lcom/uploader/implement/b/f;)V

    .line 668
    const/4 v6, 0x0

    .line 670
    .local v6, "results":Ljava/util/ArrayList;
    :cond_3
    iget-object v8, v7, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    iget-object v9, v7, Lcom/uploader/implement/d/c$b;->k:Ljava/util/Map;

    iget-object v10, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    iget-object v11, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    iget-object v12, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/uploader/implement/a/e;->a(Ljava/util/Map;[BII)Landroid/util/Pair;

    move-result-object v5

    .line 672
    .local v5, "result":Landroid/util/Pair;
    if-nez v6, :cond_4

    .line 673
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "results":Ljava/util/ArrayList;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .restart local v6    # "results":Ljava/util/ArrayList;
    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v8, :cond_6

    .line 692
    :goto_1
    if-eqz v6, :cond_0

    .line 695
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":Landroid/util/Pair;
    check-cast v5, Landroid/util/Pair;

    .line 696
    .restart local v5    # "result":Landroid/util/Pair;
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v8, :cond_7

    .line 697
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_0

    .line 698
    new-instance v1, Lcom/uploader/implement/c/a;

    const-string v8, "400"

    const-string v9, "2"

    const-string v10, "response == null && divide < 0"

    const/4 v11, 0x1

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/uploader/implement/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 700
    .local v1, "error":Lcom/uploader/implement/c/a;
    invoke-direct {p0, v3, v1}, Lcom/uploader/implement/d/c;->a(ILcom/uploader/implement/c/a;)V

    goto/16 :goto_0

    .line 682
    .end local v1    # "error":Lcom/uploader/implement/c/a;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-array v0, v8, [B

    .line 683
    .local v0, "buffer":[B
    iget-object v8, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 684
    iget-object v9, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v0, v10, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 685
    iget-object v8, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 687
    iget-object v8, v7, Lcom/uploader/implement/d/c$b;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_3

    goto :goto_1

    .line 704
    .end local v0    # "buffer":[B
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v8, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v8, :cond_5

    .line 705
    iget-object v9, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v10, v7, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/uploader/implement/a/f;

    invoke-interface {v9, p0, v10, v8}, Lcom/uploader/implement/d/a;->a(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/a/f;)V

    goto :goto_2
.end method

.method b(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V
    .locals 6
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "error"    # Lcom/uploader/implement/c/a;

    .prologue
    .line 608
    iget-object v3, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 609
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 610
    const/16 v1, 0x8

    .line 611
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    const-string v3, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doError, NO_POSITION, connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 616
    .end local v1    # "p":I
    :cond_1
    const/4 v1, 0x2

    .line 617
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 618
    const-string v3, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doError, connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/uploader/implement/c/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendingList.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_2
    iget-object v3, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$b;

    .line 623
    .local v2, "wrapper":Lcom/uploader/implement/d/c$b;
    invoke-virtual {v2}, Lcom/uploader/implement/d/c$b;->a()V

    .line 624
    iget-object v3, v2, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    invoke-direct {p0, v3}, Lcom/uploader/implement/d/c;->e(Lcom/uploader/implement/b/e;)V

    .line 626
    invoke-direct {p0, v0, p2}, Lcom/uploader/implement/d/c;->a(ILcom/uploader/implement/c/a;)V

    goto :goto_0
.end method

.method b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V
    .locals 7
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 840
    iget-object v4, p0, Lcom/uploader/implement/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 841
    .local v1, "noWaitingRequest":Z
    :goto_0
    invoke-interface {p3}, Lcom/uploader/implement/b/e;->d()Z

    move-result v0

    .line 842
    .local v0, "needConnect":Z
    const/4 v2, 0x4

    .line 843
    .local v2, "p":I
    invoke-static {v2}, Lcom/uploader/implement/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    const-string v4, "UploaderSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onAvailable.session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " noWaitingRequest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " needConnect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/uploader/implement/a/e;->a()Lcom/uploader/implement/b/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    if-eqz v1, :cond_2

    .line 869
    :goto_1
    return-void

    .line 840
    .end local v0    # "needConnect":Z
    .end local v1    # "noWaitingRequest":Z
    .end local v2    # "p":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 852
    .restart local v0    # "needConnect":Z
    .restart local v1    # "noWaitingRequest":Z
    .restart local v2    # "p":I
    :cond_2
    invoke-interface {p3, p0}, Lcom/uploader/implement/b/e;->a(Lcom/uploader/implement/b/b;)V

    .line 853
    new-instance v3, Lcom/uploader/implement/d/c$b;

    invoke-direct {v3, p2, p3}, Lcom/uploader/implement/d/c$b;-><init>(Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V

    .line 854
    .local v3, "wrapper":Lcom/uploader/implement/d/c$b;
    iget-object v4, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    if-eqz v0, :cond_4

    .line 858
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v4, :cond_3

    .line 859
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v5, v3, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v4, p0, v5}, Lcom/uploader/implement/d/a;->c(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V

    .line 861
    :cond_3
    invoke-interface {p3}, Lcom/uploader/implement/b/e;->b()Z

    goto :goto_1

    .line 865
    :cond_4
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v4, :cond_5

    .line 866
    iget-object v4, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v5, v3, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v4, p0, v5}, Lcom/uploader/implement/d/a;->e(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V

    .line 868
    :cond_5
    iget-object v4, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/uploader/implement/d/c;->a(I)V

    goto :goto_1
.end method

.method c(Lcom/uploader/implement/b/e;)V
    .locals 5
    .param p1, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 556
    iget-object v2, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 557
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 558
    const/16 v1, 0x8

    .line 559
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doConnect, NO_POSITION, connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 564
    .end local v1    # "p":I
    :cond_1
    const/4 v1, 0x2

    .line 565
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    const-string v2, "UploaderSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doConnect, connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_2
    iget-object v2, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v2, :cond_3

    .line 570
    iget-object v3, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v2, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$b;

    iget-object v2, v2, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v3, p0, v2}, Lcom/uploader/implement/d/a;->d(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V

    .line 572
    :cond_3
    iget-object v2, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    if-eqz v2, :cond_4

    .line 573
    iget-object v3, p0, Lcom/uploader/implement/d/c;->a:Lcom/uploader/implement/d/a;

    iget-object v2, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$b;

    iget-object v2, v2, Lcom/uploader/implement/d/c$b;->a:Lcom/uploader/implement/a/e;

    invoke-interface {v3, p0, v2}, Lcom/uploader/implement/d/a;->e(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;)V

    .line 575
    :cond_4
    invoke-direct {p0, v0}, Lcom/uploader/implement/d/c;->a(I)V

    goto :goto_0
.end method

.method d(Lcom/uploader/implement/b/e;)V
    .locals 6
    .param p1, "connection"    # Lcom/uploader/implement/b/e;

    .prologue
    .line 584
    iget-object v3, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;)I

    move-result v0

    .line 585
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 586
    const/16 v1, 0x8

    .line 587
    .local v1, "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    const-string v3, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doClose, NO_POSITION, connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 592
    .end local v1    # "p":I
    :cond_1
    const/4 v1, 0x2

    .line 593
    .restart local v1    # "p":I
    invoke-static {v1}, Lcom/uploader/implement/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    const-string v3, "UploaderSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/uploader/implement/d/c;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doClose, connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/uploader/implement/b/e;->a(Lcom/uploader/implement/b/b;)V

    .line 597
    iget-object v3, p0, Lcom/uploader/implement/d/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uploader/implement/d/c$b;

    .line 598
    .local v2, "wrapper":Lcom/uploader/implement/d/c$b;
    invoke-virtual {v2}, Lcom/uploader/implement/d/c$b;->a()V

    .line 599
    iget-object v3, v2, Lcom/uploader/implement/d/c$b;->c:Lcom/uploader/implement/b/e;

    invoke-direct {p0, v3}, Lcom/uploader/implement/d/c;->e(Lcom/uploader/implement/b/e;)V

    goto :goto_0
.end method
