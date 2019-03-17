.class public Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;
.super Lcom/miui/gallery/util/baby/ProgressDialogTask;
.source "CopyFaceAlbumItemsToBabyAlbumTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mFolderItem:Lcom/miui/gallery/model/SendToCloudFolderItem;

.field private mListener:Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

.field private mProgress:I

.field private mSourceItems:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/miui/gallery/model/SendToCloudFolderItem;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sourceItems"    # Landroid/database/Cursor;
    .param p3, "folderItem"    # Lcom/miui/gallery/model/SendToCloudFolderItem;
    .param p4, "dialogTitleStringId"    # I

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/util/baby/ProgressDialogTask;-><init>(Landroid/content/Context;IIIZZ)V

    .line 160
    iput-object p2, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mSourceItems:Landroid/database/Cursor;

    .line 161
    iput-object p3, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mFolderItem:Lcom/miui/gallery/model/SendToCloudFolderItem;

    .line 162
    iput-object p1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mActivity:Landroid/app/Activity;

    .line 163
    return-void
.end method

.method private handleOneFile(Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "oneItemResult":I
    invoke-static {}, Lcom/miui/gallery/cloud/SpaceFullHandler;->isOwnerSpaceFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x2

    .line 202
    :goto_0
    if-eqz v0, :cond_1

    .line 205
    .end local v0    # "oneItemResult":I
    :goto_1
    return v0

    .line 200
    .restart local v0    # "oneItemResult":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mFolderItem:Lcom/miui/gallery/model/SendToCloudFolderItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/SendToCloudFolderItem;->isShareAlbum()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/gallery/provider/FaceManager;->localCopyFaceImages2BabyAlbum(Landroid/content/ContentValues;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static instance(Landroid/app/Activity;Landroid/database/Cursor;Lcom/miui/gallery/model/SendToCloudFolderItem;II)Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sourceItems"    # Landroid/database/Cursor;
    .param p2, "folderItem"    # Lcom/miui/gallery/model/SendToCloudFolderItem;
    .param p3, "prepareFailedCount"    # I
    .param p4, "dialogTitleStringId"    # I

    .prologue
    .line 239
    new-instance v0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/miui/gallery/model/SendToCloudFolderItem;I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic dismissDialog()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->dismissDialog()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 171
    iput v4, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mProgress:I

    .line 172
    iget-object v1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mSourceItems:Landroid/database/Cursor;

    .line 173
    .local v1, "sourceItems":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-object v5

    .line 176
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mFolderItem:Lcom/miui/gallery/model/SendToCloudFolderItem;

    .line 179
    invoke-virtual {v2}, Lcom/miui/gallery/model/SendToCloudFolderItem;->getLocalGroupId()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v1, v2}, Lcom/miui/gallery/provider/FaceManager;->changeCursorData2ContentValuesOfCloudTable(Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 177
    invoke-direct {p0, v2}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->handleOneFile(Landroid/content/ContentValues;)I

    move-result v0

    .line 180
    .local v0, "oneItemResult":I
    if-nez v0, :cond_0

    .line 183
    iget v2, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mProgress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mProgress:I

    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->isDialogShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    iget v3, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->publishProgress([Ljava/lang/Object;)V

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    .end local v0    # "oneItemResult":I
    :cond_2
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->onCancelled()V

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mListener:Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mListener:Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

    iget v1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mProgress:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;->onProgressEnd(I)V

    .line 234
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    invoke-super {p0, p1}, Lcom/miui/gallery/util/baby/ProgressDialogTask;->onPostExecute(Ljava/lang/Void;)V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mListener:Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mListener:Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

    iget v1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mProgress:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;->onProgressEnd(I)V

    .line 226
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c00c0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mFolderItem:Lcom/miui/gallery/model/SendToCloudFolderItem;

    .line 218
    invoke-virtual {v4}, Lcom/miui/gallery/model/SendToCloudFolderItem;->getFolderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 217
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/share/Path;

    iget-object v2, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mFolderItem:Lcom/miui/gallery/model/SendToCloudFolderItem;

    .line 221
    invoke-virtual {v2}, Lcom/miui/gallery/model/SendToCloudFolderItem;->getLocalGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/miui/gallery/share/Path;-><init>(JZZ)V

    .line 219
    invoke-static {v0, v1, v5}, Lcom/miui/gallery/share/UIHelper;->showAlbumShareInfo(Landroid/app/Activity;Lcom/miui/gallery/share/Path;I)V

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setProgressFinishListener(Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->mListener:Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;

    .line 167
    return-void
.end method
