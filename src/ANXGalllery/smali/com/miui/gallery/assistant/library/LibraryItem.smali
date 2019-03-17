.class public Lcom/miui/gallery/assistant/library/LibraryItem;
.super Ljava/lang/Object;
.source "LibraryItem.java"


# instance fields
.field private mExtraInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extraInfo"
    .end annotation
.end field

.field private mId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private transient mIsLoaded:Z

.field private transient mIsLocal:Z

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private mParentId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parentId"
    .end annotation
.end field

.field private mSha1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sha1Base16"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mIsLocal:Z

    .line 42
    iput-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mIsLoaded:Z

    .line 43
    return-void
.end method

.method private isLibraryExist(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryItem;->getTargetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "destFile":Ljava/io/File;
    new-instance v1, Lcom/miui/gallery/net/download/Verifier$Sha1;

    iget-object v2, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mSha1:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/miui/gallery/net/download/Verifier$Sha1;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "sha1":Lcom/miui/gallery/net/download/Verifier$Sha1;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getFileSha1(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/net/download/Verifier$Sha1;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string v1, "libs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mParentId:J

    return-wide v0
.end method

.method public getSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string v1, "libs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/library/LibraryItem;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/library/LibraryItem;->isLibraryExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mIsLoaded:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mIsLocal:Z

    return v0
.end method

.method public isTypeSo()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mType:Ljava/lang/String;

    const-string/jumbo v1, "so"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setLoaded(Z)V
    .locals 0
    .param p1, "isLoaded"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/miui/gallery/assistant/library/LibraryItem;->mIsLoaded:Z

    .line 121
    return-void
.end method
