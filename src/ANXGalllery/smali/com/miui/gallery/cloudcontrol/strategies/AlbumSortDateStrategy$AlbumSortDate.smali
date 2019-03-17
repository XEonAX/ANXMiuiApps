.class public Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;
.super Ljava/lang/Object;
.source "AlbumSortDateStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSortDate"
.end annotation


# instance fields
.field private mAlbumPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_path"
    .end annotation
.end field

.field private mSortDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort_date"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->mAlbumPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->mSortDate:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->mSortDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumSortDateStrategy$AlbumSortDate;->mAlbumPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
