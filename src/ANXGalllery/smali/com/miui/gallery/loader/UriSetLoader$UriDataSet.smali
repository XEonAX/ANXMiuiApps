.class Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;
.super Lcom/miui/gallery/model/BaseDataSet;
.source "UriSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/UriSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriDataSet"
.end annotation


# instance fields
.field private mItem:Lcom/miui/gallery/model/UriItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/model/UriItem;)V
    .locals 0
    .param p1, "item"    # Lcom/miui/gallery/model/UriItem;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/model/BaseDataSet;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;->mItem:Lcom/miui/gallery/model/UriItem;

    .line 64
    return-void
.end method


# virtual methods
.method public addToAlbum(Landroid/app/Activity;IZZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "operateSync"    # Z
    .param p4, "showSecret"    # Z
    .param p5, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V
    .locals 0
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    .line 74
    return-void
.end method

.method protected createItem(I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;->mItem:Lcom/miui/gallery/model/UriItem;

    return-object v0
.end method

.method protected doDelete(Lcom/miui/gallery/model/BaseDataItem;)I
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public getItemKey(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;->mItem:Lcom/miui/gallery/model/UriItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;->mItem:Lcom/miui/gallery/model/UriItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/UriItem;->getKey()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getItemPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;->mItem:Lcom/miui/gallery/model/UriItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;->mItem:Lcom/miui/gallery/model/UriItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/UriItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
