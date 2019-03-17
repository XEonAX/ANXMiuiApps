.class public Lcom/miui/gallery/model/FavoriteInfo;
.super Ljava/lang/Object;
.source "FavoriteInfo.java"


# instance fields
.field private mIsFavorite:Z

.field private mIsFavoriteUsable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFavorite()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/miui/gallery/model/FavoriteInfo;->mIsFavorite:Z

    return v0
.end method

.method public isFavoriteUsable()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/miui/gallery/model/FavoriteInfo;->mIsFavoriteUsable:Z

    return v0
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "favorite"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miui/gallery/model/FavoriteInfo;->mIsFavorite:Z

    .line 22
    return-void
.end method

.method public setFavoriteUsable(Z)V
    .locals 0
    .param p1, "favoriteUsable"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/miui/gallery/model/FavoriteInfo;->mIsFavoriteUsable:Z

    .line 14
    return-void
.end method
