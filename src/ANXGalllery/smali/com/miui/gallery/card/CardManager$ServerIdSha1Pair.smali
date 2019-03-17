.class public Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerIdSha1Pair"
.end annotation


# instance fields
.field final serverId:J

.field final sha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # J
    .param p3, "sha1"    # Ljava/lang/String;

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-wide p1, p0, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->serverId:J

    .line 1049
    iput-object p3, p0, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->sha1:Ljava/lang/String;

    .line 1050
    return-void
.end method

.method public static getServerIds(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, "serverIdSha1Pairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1055
    .local v1, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;

    .line 1056
    .local v0, "serverIdSha1Pair":Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;
    iget-wide v4, v0, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->serverId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1060
    .end local v0    # "serverIdSha1Pair":Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;
    .end local v1    # "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static getServerIdsOfCover(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, "serverIdSha1Pairs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    .local p1, "covers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1077
    .local v2, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 1078
    .local v0, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;

    .line 1079
    .local v1, "serverIdSha1Pair":Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->sha1:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1080
    iget-wide v6, v1, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;->serverId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1086
    .end local v0    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .end local v1    # "serverIdSha1Pair":Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;
    .end local v2    # "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method
