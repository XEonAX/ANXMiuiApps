.class public Lcom/miui/gallery/movie/entity/MovieInfo;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/movie/entity/MovieInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audio:Ljava/lang/String;

.field private extraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public isFromStory:Z

.field public isShortVideo:Z

.field public subTitle:Ljava/lang/String;

.field public template:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/miui/gallery/movie/entity/MovieInfo$1;

    invoke-direct {v0}, Lcom/miui/gallery/movie/entity/MovieInfo$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/movie/entity/MovieInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "default"

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    const-class v3, Lcom/miui/gallery/movie/entity/ImageEntity;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->title:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->subTitle:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    const-class v1, Lcom/miui/gallery/movie/entity/ImageEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 118
    return-void

    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/ImageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "default"

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backToLongVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 61
    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 64
    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method

.method public changeToShortVideo()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 42
    iput-boolean v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 43
    iget-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 44
    iget-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "newImageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    iget-object v3, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 47
    iget-object v2, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    .line 52
    .end local v0    # "newImageList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/movie/entity/ImageEntity;>;"
    :goto_0
    return v1

    .line 51
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    move v1, v2

    .line 52
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public discardToLongVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 76
    const/4 v0, 0x1

    .line 78
    :cond_0
    return v0
.end method

.method public discardToShortVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->template:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isFromStory:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->isShortVideo:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieInfo;->extraList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 105
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1
.end method
