.class public Lcom/android/internal/storage/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# instance fields
.field private isMounted:Z

.field private isPrimary:Z

.field private isSd:Z

.field private isUsb:Z

.field private isVisible:Z

.field private isXspace:Z

.field private mDescription:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mWrapped:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/internal/storage/StorageInfo;->mPath:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createAccessIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Lcom/android/internal/storage/StorageInfo;->mWrapped:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/internal/storage/StorageInfo;->mWrapped:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 101
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_1
    return-object v1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/internal/storage/StorageInfo;->mWrapped:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/storage/StorageInfo;->mWrapped:Ljava/lang/Object;

    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    check-cast v0, Landroid/os/storage/StorageVolume;

    .restart local v0    # "volume":Landroid/os/storage/StorageVolume;
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 101
    goto :goto_1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/storage/StorageInfo;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/storage/StorageInfo;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/storage/StorageInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isMounted()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/storage/StorageInfo;->isMounted:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/storage/StorageInfo;->isPrimary:Z

    return v0
.end method

.method public isSd()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/storage/StorageInfo;->isSd:Z

    return v0
.end method

.method public isUsb()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/storage/StorageInfo;->isUsb:Z

    return v0
.end method

.method public isXspace()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/storage/StorageInfo;->isXspace:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/internal/storage/StorageInfo;->mDescription:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMounted(Z)V
    .locals 0
    .param p1, "mounted"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/internal/storage/StorageInfo;->isMounted:Z

    .line 30
    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/storage/StorageInfo;->mPath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method setPrimary(Z)V
    .locals 0
    .param p1, "primary"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/internal/storage/StorageInfo;->isPrimary:Z

    .line 38
    return-void
.end method

.method setSd(Z)V
    .locals 0
    .param p1, "sd"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/storage/StorageInfo;->isSd:Z

    .line 42
    return-void
.end method

.method setUsb(Z)V
    .locals 0
    .param p1, "usb"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/storage/StorageInfo;->isUsb:Z

    .line 46
    return-void
.end method

.method setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/storage/StorageInfo;->isVisible:Z

    .line 54
    return-void
.end method

.method setWrapped(Ljava/lang/Object;)V
    .locals 0
    .param p1, "wrapped"    # Ljava/lang/Object;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/storage/StorageInfo;->mWrapped:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public setXspace(Z)V
    .locals 0
    .param p1, "xspace"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/storage/StorageInfo;->isXspace:Z

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Storage{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/storage/StorageInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/storage/StorageInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "isMounted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/storage/StorageInfo;->isMounted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "isPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/storage/StorageInfo;->isPrimary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "isSD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/storage/StorageInfo;->isSd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "isUsb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/storage/StorageInfo;->isUsb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "isXspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/storage/StorageInfo;->isXspace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
