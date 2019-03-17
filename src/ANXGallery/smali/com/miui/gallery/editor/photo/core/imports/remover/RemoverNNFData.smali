.class public Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;
.super Ljava/lang/Object;
.source "RemoverNNFData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field count:I

.field fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field height:I

.field index:I

.field length:I

.field memoryFile:Landroid/os/MemoryFile;

.field nnf:[B

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->height:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->width:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->index:I

    .line 32
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->length:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->count:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->getDataFromParcel()V

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method getDataFromParcel()V
    .locals 5

    .prologue
    .line 58
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/utils/MemoryFileUtils;->getInputStream(Landroid/os/ParcelFileDescriptor;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 60
    .local v1, "memoryFileInputSteam":Ljava/io/FileInputStream;
    :try_start_0
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->count:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->nnf:[B

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->nnf:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 69
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public releaseMemoryFile()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->memoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->memoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 75
    :cond_0
    return-void
.end method

.method saveDataForParcel()V
    .locals 6

    .prologue
    .line 45
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->nnf:[B

    array-length v1, v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->count:I

    .line 46
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->count:I

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->length:I

    .line 47
    const-string v1, "remove"

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->length:I

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/utils/MemoryFileUtils;->createMemoryFile(Ljava/lang/String;I)Landroid/os/MemoryFile;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->memoryFile:Landroid/os/MemoryFile;

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->memoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->nnf:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->nnf:[B

    array-length v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->memoryFile:Landroid/os/MemoryFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->memoryFile:Landroid/os/MemoryFile;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/utils/MemoryFileUtils;->getParcelFileDescriptor(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->saveDataForParcel()V

    .line 80
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
