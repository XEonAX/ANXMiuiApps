.class public Lcom/miui/gallery/editor/photo/utils/MemoryFileUtils;
.super Ljava/lang/Object;
.source "MemoryFileUtils.java"


# direct methods
.method public static createMemoryFile(Ljava/lang/String;I)Landroid/os/MemoryFile;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    invoke-direct {v1, p0, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 4
    .param p0, "memoryFile"    # Landroid/os/MemoryFile;

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "memoryFile can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    const-string v1, "android.os.MemoryFile"

    const-string v2, "getFileDescriptor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v3}, Lcom/miui/gallery/util/ReflectUtils;->invoke(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 109
    .local v0, "fd":Ljava/io/FileDescriptor;
    return-object v0
.end method

.method public static getInputStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/FileInputStream;
    .locals 2
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParcelFileDescriptor can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static getParcelFileDescriptor(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p0, "memoryFile"    # Landroid/os/MemoryFile;

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "memoryFile can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/utils/MemoryFileUtils;->getFileDescriptor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 93
    .local v0, "fd":Ljava/io/FileDescriptor;
    const-string v2, "android.os.ParcelFileDescriptor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/miui/gallery/util/ReflectUtils;->getInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 94
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    return-object v1
.end method
