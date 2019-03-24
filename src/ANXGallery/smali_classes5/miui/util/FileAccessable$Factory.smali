.class public Lmiui/util/FileAccessable$Factory;
.super Ljava/lang/Object;
.source "FileAccessable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static sZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/zip/ZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .line 55
    sget-object v0, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/FileAccessable;
    .locals 5
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "subpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lmiui/util/FileAccessable$DeskFile;

    invoke-direct {v0, p0, p1}, Lmiui/util/FileAccessable$DeskFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 44
    .local v1, "zipFileRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/zip/ZipFile;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    .line 45
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    :goto_0
    if-nez v2, :cond_2

    .line 46
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 47
    sget-object v3, Lmiui/util/FileAccessable$Factory;->sZipFiles:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v1    # "zipFileRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/zip/ZipFile;>;"
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 50
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    new-instance v1, Lmiui/util/FileAccessable$ZipInnerFile;

    invoke-direct {v1, v0, p1}, Lmiui/util/FileAccessable$ZipInnerFile;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object v1

    .line 49
    .end local v0    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
