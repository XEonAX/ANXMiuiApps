.class public Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;
.super Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;
.source "BabyShareAlbumOwnerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;
    }
.end annotation


# static fields
.field private static final sDefaultRelationEntries:[Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const-string v3, "father"

    const v4, 0x7f0c0400

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const-string v3, "mother"

    const v4, 0x7f0c0405

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const-string v3, "grandfather"

    const v4, 0x7f0c0401

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const-string v3, "grandmother"

    const v4, 0x7f0c0402

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const-string v3, "maternalGrandfather"

    const v4, 0x7f0c0403

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    const-string v3, "maternalGrandmother"

    const v4, 0x7f0c0404

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->sDefaultRelationEntries:[Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected createShareUserAdapter()Lcom/miui/gallery/share/ShareUserAdapterBase;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;

    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/share/baby/BabyAlbumShareUserAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f040030

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "album_baby_share_owner_info"

    return-object v0
.end method

.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f070001

    return v0
.end method

.method protected getShareUsers()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-super/range {p0 .. p0}, Lcom/miui/gallery/share/ShareAlbumOwnerBaseActivity;->getShareUsers()Ljava/util/List;

    move-result-object v15

    .line 63
    .local v15, "users":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->getOwnerEntry(Ljava/lang/String;)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v12

    .line 64
    .local v12, "ownerEntry":Lcom/miui/gallery/share/CloudUserCacheEntry;
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v17, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->sDefaultRelationEntries:[Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v13, v17, v16

    .line 67
    .local v13, "relationEntry":Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;
    const/4 v2, 0x0

    .line 68
    .local v2, "exists":Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/gallery/share/CloudUserCacheEntry;

    .line 69
    .local v14, "user":Lcom/miui/gallery/share/CloudUserCacheEntry;
    iget-object v4, v13, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;->relation:Ljava/lang/String;

    iget-object v5, v14, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const/4 v2, 0x1

    .line 74
    .end local v14    # "user":Lcom/miui/gallery/share/CloudUserCacheEntry;
    :cond_1
    if-nez v2, :cond_2

    .line 75
    new-instance v3, Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->mAlbumId:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, v13, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;->relation:Ljava/lang/String;

    iget v9, v13, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;->relationTextId:I

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/miui/gallery/share/CloudUserCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_0

    .line 81
    .end local v2    # "exists":Z
    .end local v13    # "relationEntry":Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;
    :cond_3
    new-instance v3, Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->mAlbumId:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "family"

    const v9, 0x7f0c01ef

    .line 83
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/miui/gallery/share/CloudUserCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v15
.end method

.method protected requestInvitation(Lcom/miui/gallery/share/CloudUserCacheEntry;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 7
    .param p1, "entry"    # Lcom/miui/gallery/share/CloudUserCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "urlRequestListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Lcom/miui/gallery/share/AlbumShareOperations$OutgoingInvitation;>;"
    if-eqz p1, :cond_1

    .line 98
    iget-object v2, p1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelationText:Ljava/lang/String;

    .line 99
    .local v2, "relationText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    const-string v1, "family"

    .line 100
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const v0, 0x7f0c03ff

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->getOwnerEntry(Ljava/lang/String;)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v6

    .line 104
    .local v6, "ownerEntry":Lcom/miui/gallery/share/CloudUserCacheEntry;
    iget-object v1, p1, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    iget-object v3, v6, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    iget-object v4, v6, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelationText:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;->requestInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 107
    .end local v2    # "relationText":Ljava/lang/String;
    .end local v6    # "ownerEntry":Lcom/miui/gallery/share/CloudUserCacheEntry;
    :cond_1
    return-void
.end method
