.class final Lcom/miui/gallery/share/AlbumShareOperations$8;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/AlbumShareOperations;->updateInvitation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)Lcom/miui/gallery/share/AsyncResult;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$longUrlIn:Ljava/lang/String;

.field final synthetic val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$longUrlIn:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$resolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/share/AsyncResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/share/AsyncResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$url:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->supportShare()Z

    move-result v5

    if-nez v5, :cond_2

    .line 684
    :cond_0
    const/16 v5, -0x3e8

    invoke-static {v5}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    .line 720
    :cond_1
    :goto_0
    return-object v3

    .line 687
    :cond_2
    const/4 v2, 0x0

    .line 688
    .local v2, "longUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$longUrlIn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 689
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$longUrlIn:Ljava/lang/String;

    .line 695
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 696
    const/4 v5, -0x7

    invoke-static {v5}, Lcom/miui/gallery/share/AsyncResult;->create(I)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    goto :goto_0

    .line 692
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$url:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/share/AlbumShareOperations;->access$600(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 693
    .local v0, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v0}, Lcom/miui/gallery/share/AlbumShareOperations;->access$700(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 699
    .end local v0    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    const/4 v3, 0x0

    .line 700
    .local v3, "result":Lcom/miui/gallery/share/AsyncResult;, "Lcom/miui/gallery/share/AsyncResult<Ljava/lang/String;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 701
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "shareUrlLong"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {v2}, Lcom/miui/gallery/share/AlbumShareOperations;->parseInvitation(Ljava/lang/String;)Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;

    move-result-object v1

    .line 703
    .local v1, "invitation":Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->hasSharerInfo()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 704
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$resolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$url:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/miui/gallery/share/AlbumShareOperations;->requestSharerInfo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    .line 705
    iget v5, v3, Lcom/miui/gallery/share/AsyncResult;->mError:I

    if-nez v5, :cond_1

    .line 706
    const-string/jumbo v6, "sharerInfo"

    iget-object v5, v3, Lcom/miui/gallery/share/AsyncResult;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget v5, v3, Lcom/miui/gallery/share/AsyncResult;->mError:I

    invoke-static {v5, v2}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    .line 716
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 717
    const-string v5, "fileName"

    invoke-virtual {v1}, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_5
    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$resolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$url:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/gallery/share/AlbumShareOperations$8;->val$mediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-static {v5, v6, v4, v7}, Lcom/miui/gallery/share/AlbumShareOperations;->access$800(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    goto :goto_0

    .line 714
    :cond_6
    const/4 v5, 0x0

    invoke-static {v5, v2}, Lcom/miui/gallery/share/AsyncResult;->create(ILjava/lang/Object;)Lcom/miui/gallery/share/AsyncResult;

    move-result-object v3

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/miui/gallery/share/AlbumShareOperations$8;->call()Lcom/miui/gallery/share/AsyncResult;

    move-result-object v0

    return-object v0
.end method
