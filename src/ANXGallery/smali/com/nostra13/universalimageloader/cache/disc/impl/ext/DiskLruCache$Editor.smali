.class public final Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .param p2, "entry"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    .line 774
    invoke-static {p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    .line 775
    return-void

    .line 774
    :cond_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$1900(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    .param p2, "x1"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;

    .prologue
    .line 766
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2402(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 766
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$2300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    .line 870
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 855
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$2300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    .line 857
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 861
    :goto_0
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->committed:Z

    .line 862
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$2300(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v5

    .line 815
    :try_start_0
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 816
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 836
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 818
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 819
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 821
    :cond_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 824
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 825
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-static {v4}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$2000(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 829
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 830
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 832
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->access$2100()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
