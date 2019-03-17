.class public Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
.super Ljava/lang/Object;
.source "AlbumConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/AlbumConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareAlbum"
.end annotation


# instance fields
.field public mAlbumId:Ljava/lang/String;

.field public mCreatorId:Ljava/lang/String;

.field public mOwnerNickName:Ljava/lang/String;

.field public mUserCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mCreatorId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    goto :goto_0
.end method
