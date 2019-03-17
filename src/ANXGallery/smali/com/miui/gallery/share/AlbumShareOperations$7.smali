.class final Lcom/miui/gallery/share/AlbumShareOperations$7;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->deleteSharers(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Lcom/miui/gallery/share/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/share/AsyncResult",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$r:Landroid/content/ContentResolver;

.field final synthetic val$serverId:Ljava/lang/String;

.field final synthetic val$sharerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$sharerIds:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$r:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$serverId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v8

    if-nez v8, :cond_0

    .line 643
    const/16 v8, -0xb

    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    .line 669
    :goto_0
    return-object v8

    .line 646
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 647
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 648
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 649
    const/4 v8, -0x4

    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 651
    :cond_1
    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/CloudUtils;->getExtToken(Landroid/content/Context;Landroid/accounts/Account;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    move-result-object v7

    .line 652
    .local v7, "token":Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    if-nez v7, :cond_2

    .line 653
    const/4 v8, -0x3

    invoke-static {v8}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0

    .line 656
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 657
    .local v6, "succIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 658
    .local v3, "failIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$sharerIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 659
    iget-object v8, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$sharerIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v9, v4, 0x32

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 660
    .local v2, "end":I
    iget-object v8, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$r:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$serverId:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/gallery/share/AlbumShareOperations$7;->val$sharerIds:Ljava/util/List;

    .line 661
    invoke-interface {v10, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v9, v10, v0, v7}, Lcom/miui/gallery/share/AlbumShareOperations;->access$500(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)Landroid/util/Pair;

    move-result-object v5

    .line 663
    .local v5, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_3

    .line 664
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 658
    :cond_3
    add-int/lit8 v4, v4, 0x32

    goto :goto_1

    .line 669
    .end local v2    # "end":I
    .end local v5    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    const/4 v8, 0x0

    invoke-static {v6, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v8

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$7;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
