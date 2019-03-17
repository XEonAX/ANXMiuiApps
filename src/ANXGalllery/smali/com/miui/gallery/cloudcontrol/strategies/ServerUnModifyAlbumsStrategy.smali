.class public Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "ServerUnModifyAlbumsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
    }
.end annotation


# instance fields
.field private mAlbums:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albums"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 67
    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
    .locals 6

    .prologue
    .line 22
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;-><init>()V

    .line 23
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    .line 24
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    const-wide/16 v4, 0x1

    const-string/jumbo v3, "untitled"

    invoke-direct {v2, v4, v5, v3}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    const-wide/16 v4, 0x2

    const-string/jumbo v3, "snapshot"

    invoke-direct {v2, v4, v5, v3}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-object v0
.end method


# virtual methods
.method public containsName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return v1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    .line 47
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 52
    .end local v0    # "album":Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    return-object v0
.end method

.method public getServerAlbumName(J)Ljava/lang/String;
    .locals 5
    .param p1, "serverId"    # J

    .prologue
    .line 31
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    .line 33
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->getServerId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    .line 38
    .end local v0    # "album":Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerUnModifyAlbumsStrategy{mAlbums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
