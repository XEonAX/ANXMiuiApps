.class public Lcom/miui/gallery/movie/entity/AudioResource;
.super Lcom/miui/gallery/movie/entity/MovieResource;
.source "AudioResource.java"


# instance fields
.field private resType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/movie/entity/MovieResource;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "resType"    # I
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "imageId"    # I
    .param p4, "stringId"    # I

    .prologue
    .line 15
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/gallery/movie/entity/MovieResource;-><init>(Ljava/lang/String;II)V

    .line 16
    iput p1, p0, Lcom/miui/gallery/movie/entity/AudioResource;->resType:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->isPackageAssets:Z

    .line 18
    const/16 v0, 0x11

    iput v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->downloadState:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/movie/entity/MovieResource;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/AudioResource;->srcPath:Ljava/lang/String;

    .line 28
    const-string v0, "local"

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->nameKey:Ljava/lang/String;

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->resType:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->isPackageAssets:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getDownloadSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->isPackageAssets:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->srcPath:Ljava/lang/String;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->pathKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/factory/AudioFactory;->getAudioDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/gallery/movie/entity/AudioResource;->resType:I

    return v0
.end method

.method public getStatNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/entity/AudioResource;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "audio"

    return-object v0
.end method
