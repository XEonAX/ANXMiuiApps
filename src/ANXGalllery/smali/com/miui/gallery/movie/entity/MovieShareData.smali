.class public Lcom/miui/gallery/movie/entity/MovieShareData;
.super Ljava/lang/Object;
.source "MovieShareData.java"


# instance fields
.field private mIsShortVideo:Z

.field private mLongVideoPath:Ljava/lang/String;

.field private mShortVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mIsShortVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mShortVideoPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mLongVideoPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "shortVideo"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mIsShortVideo:Z

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mShortVideoPath:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mLongVideoPath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setShortVideo(Z)V
    .locals 0
    .param p1, "shortVideo"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mIsShortVideo:Z

    .line 11
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isShortVideo"    # Z

    .prologue
    .line 14
    iput-boolean p2, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mIsShortVideo:Z

    .line 15
    if-eqz p2, :cond_0

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mShortVideoPath:Ljava/lang/String;

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/MovieShareData;->mLongVideoPath:Ljava/lang/String;

    goto :goto_0
.end method
