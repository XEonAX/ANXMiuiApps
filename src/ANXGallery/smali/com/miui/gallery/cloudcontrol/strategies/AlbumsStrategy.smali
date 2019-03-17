.class public Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "AlbumsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;,
        Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;,
        Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;
    }
.end annotation


# instance fields
.field private mAlbumPatterns:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "patterns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbums:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albums"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;",
            ">;"
        }
    .end annotation
.end field

.field private transient mAlbumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;",
            ">;"
        }
    .end annotation
.end field

.field private transient mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient mWhiteListPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 282
    return-void
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 7

    .prologue
    .line 39
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteList:Ljava/util/ArrayList;

    .line 51
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    .line 52
    .local v0, "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isInWhiteList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    .end local v0    # "album":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumPatterns:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteListPatterns:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteListPatterns:Ljava/util/ArrayList;

    .line 69
    :goto_3
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumPatterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;

    .line 70
    .local v2, "pattern":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;
    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 73
    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getAttributes()Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Attributes;->isInWhiteList()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteListPatterns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;->getPattern()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v4, "AlbumsStrategy"

    invoke-static {v4, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 66
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v2    # "pattern":Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteListPatterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 82
    :cond_6
    return-void
.end method

.method public getAlbumByPath(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$Album;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy$AlbumPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumPatterns:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumsInWhiteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWhiteListPatterns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mWhiteListPatterns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumsStrategy{mAlbums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumPatterns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/AlbumsStrategy;->mAlbumPatterns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
