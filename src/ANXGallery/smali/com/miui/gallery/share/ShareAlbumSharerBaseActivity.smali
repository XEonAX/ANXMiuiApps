.class public abstract Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;
.super Lcom/miui/gallery/share/ShareAlbumBaseActivity;
.source "ShareAlbumSharerBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mViewExitShare:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;-><init>()V

    return-void
.end method

.method public static exitShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "albumName"    # Ljava/lang/String;
    .param p3, "runOnExitShareSuccessfully"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 120
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 141
    .local v0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/Void;>;"
    const v2, 0x7f0c01ca

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {p0, v5, v2, v4}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v1

    .line 146
    .local v1, "msg":Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c004c

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01c6

    new-instance v4, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;

    invoke-direct {v4, p1, v0, v1}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$3;-><init>(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;)V

    .line 148
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 155
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    return-void
.end method


# virtual methods
.method protected doSyncFromServer(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->getUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/share/CloudUserCache;->syncFromServer(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 162
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f040143

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
    .line 87
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 88
    .local v15, "sharers":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->getUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/share/CloudUserCache;->getCloudUserListByAlbumId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    new-instance v3, Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;

    invoke-direct {v3}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;-><init>()V

    invoke-static {v15, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mCreatorId:Ljava/lang/String;

    .line 92
    .local v12, "creatorId":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "selfId":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 94
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    const/4 v14, 0x0

    .line 95
    .local v14, "self":Lcom/miui/gallery/share/CloudUserCacheEntry;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/gallery/share/CloudUserCacheEntry;

    .line 97
    .local v16, "user":Lcom/miui/gallery/share/CloudUserCacheEntry;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 98
    .local v17, "userId":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 100
    :cond_1
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    move-object/from16 v14, v16

    .line 102
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 106
    .end local v16    # "user":Lcom/miui/gallery/share/CloudUserCacheEntry;
    .end local v17    # "userId":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_3

    .line 107
    const/4 v3, 0x0

    invoke-interface {v15, v3, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->getOwnerEntry(Ljava/lang/String;)Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-result-object v2

    .line 113
    .local v2, "creator":Lcom/miui/gallery/share/CloudUserCacheEntry;
    const/4 v3, 0x0

    invoke-interface {v15, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    return-object v15

    .line 109
    .end local v2    # "creator":Lcom/miui/gallery/share/CloudUserCacheEntry;
    :cond_3
    const/16 v18, 0x0

    new-instance v3, Lcom/miui/gallery/share/CloudUserCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mAlbumId:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/miui/gallery/share/CloudUserCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-interface {v15, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method protected getUserCache()Lcom/miui/gallery/share/CloudUserCache;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/miui/gallery/share/CloudUserCache;->getSharerUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f120295

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mAlbumName:Ljava/lang/String;

    new-instance v2, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity$1;-><init>(Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->exitShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view id, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->finish()V

    goto :goto_0

    .line 45
    :cond_1
    const v0, 0x7f120295

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mViewExitShare:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mViewExitShare:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->syncFromServer()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->mHandler:Landroid/os/Handler;

    .line 51
    invoke-static {}, Lcom/miui/gallery/share/CloudShareAlbumMediator;->getInstance()Lcom/miui/gallery/share/CloudShareAlbumMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/share/CloudShareAlbumMediator;->addListener(Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->onDestroy()V

    .line 58
    invoke-static {}, Lcom/miui/gallery/share/CloudShareAlbumMediator;->getInstance()Lcom/miui/gallery/share/CloudShareAlbumMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/share/CloudShareAlbumMediator;->removeListener(Lcom/miui/gallery/share/CloudShareAlbumMediator$OnShareAlbumExitedListener;)V

    .line 59
    return-void
.end method
