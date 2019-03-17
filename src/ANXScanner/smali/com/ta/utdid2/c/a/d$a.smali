.class final Lcom/ta/utdid2/c/a/d$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/c/a/d$a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/ta/utdid2/c/a/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/io/File;

.field private final c:I

.field private final c:Ljava/io/File;

.field private c:Ljava/util/Map;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/c/a/d$a;->d:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a;->k:Z

    .line 153
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    .line 154
    invoke-static {p1}, Lcom/ta/utdid2/c/a/d;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    .line 155
    iput p2, p0, Lcom/ta/utdid2/c/a/d$a;->c:I

    .line 156
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->a:Ljava/util/WeakHashMap;

    .line 158
    return-void

    .line 156
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    .line 371
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 375
    goto :goto_0

    .line 378
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->a:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/ta/utdid2/c/a/d$a;)Z
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/d$a;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 388
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 404
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/ta/utdid2/c/a/d$a;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 405
    if-eqz v1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/ta/utdid2/c/a/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 409
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 412
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 418
    :goto_1
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 414
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/ta/utdid2/c/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/c/a/d$a$a;-><init>(Lcom/ta/utdid2/c/a/d$a;)V

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    .line 184
    monitor-exit p0

    .line 188
    :cond_0
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iput-boolean p1, p0, Lcom/ta/utdid2/c/a/d$a;->k:Z

    .line 171
    monitor-exit p0

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a;->k:Z

    monitor-exit p0

    return v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 205
    monitor-enter p0

    .line 207
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 228
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    monitor-exit p0

    return-wide p2

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
