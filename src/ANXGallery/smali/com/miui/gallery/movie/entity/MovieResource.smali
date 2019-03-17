.class public abstract Lcom/miui/gallery/movie/entity/MovieResource;
.super Lcom/miui/gallery/net/resource/Resource;
.source "MovieResource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/net/resource/Resource;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/movie/entity/MovieResource;",
        ">;"
    }
.end annotation


# static fields
.field private static resourcesNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public downloadState:I

.field public enName:Ljava/lang/String;

.field public imageId:I

.field public index:I

.field public isPackageAssets:Z

.field public nameKey:Ljava/lang/String;

.field public pathKey:Ljava/lang/String;

.field public srcPath:Ljava/lang/String;

.field public stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/miui/gallery/movie/entity/MovieResource$1;

    invoke-direct {v0}, Lcom/miui/gallery/movie/entity/MovieResource$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/movie/entity/MovieResource;->resourcesNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/miui/gallery/net/resource/Resource;-><init>()V

    .line 41
    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "imageId"    # I
    .param p3, "stringId"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/net/resource/Resource;-><init>()V

    .line 41
    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    .line 66
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/MovieResource;->srcPath:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/miui/gallery/movie/entity/MovieResource;->imageId:I

    .line 68
    iput p3, p0, Lcom/miui/gallery/movie/entity/MovieResource;->stringId:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->isPackageAssets:Z

    .line 70
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/movie/entity/MovieResource;)I
    .locals 2
    .param p1, "o"    # Lcom/miui/gallery/movie/entity/MovieResource;

    .prologue
    .line 122
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->index:I

    iget v1, p1, Lcom/miui/gallery/movie/entity/MovieResource;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/miui/gallery/movie/entity/MovieResource;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/entity/MovieResource;->compareTo(Lcom/miui/gallery/movie/entity/MovieResource;)I

    move-result v0

    return v0
.end method

.method public getDownloadFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDownloadSrcPath()Ljava/lang/String;
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/16 v0, 0x11

    .line 106
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    goto :goto_0
.end method

.method public getNameId()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->stringId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->nameKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/movie/entity/MovieResource;->resourcesNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieResource;->nameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/miui/gallery/movie/entity/MovieResource;->resourcesNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieResource;->nameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->stringId:I

    .line 113
    :cond_0
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->stringId:I

    return v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->isPackageAssets:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->nameKey:Ljava/lang/String;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getStatNameString()Ljava/lang/String;
.end method

.method public abstract getStatTypeString()Ljava/lang/String;
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/movie/entity/MovieResource;->downloadState:I

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
