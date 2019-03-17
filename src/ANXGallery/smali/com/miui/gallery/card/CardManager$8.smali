.class Lcom/miui/gallery/card/CardManager$8;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/CardManager;->getServerIdSha1PairBySha1s(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/CardManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/CardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/miui/gallery/card/CardManager$8;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/CardManager$8;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 834
    new-instance v1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    :goto_0
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 835
    .local v1, "serverIdList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    if-eqz p1, :cond_1

    .line 836
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 837
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 838
    .local v0, "serverId":Ljava/lang/Long;
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 839
    .local v2, "sha1":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7, v2}, Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "serverId":Ljava/lang/Long;
    .end local v1    # "serverIdList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    .end local v2    # "sha1":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 834
    goto :goto_0

    .line 842
    .restart local v1    # "serverIdList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/CardManager$ServerIdSha1Pair;>;"
    :cond_1
    return-object v1
.end method
