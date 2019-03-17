.class public abstract Lcom/miui/gallery/model/BaseDataSet;
.super Ljava/lang/Object;
.source "BaseDataSet.java"


# instance fields
.field private mBaseDataCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/model/BaseDataItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/model/BaseDataSet;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initPosition"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/model/BaseDataSet;->mBaseDataCache:Landroid/util/SparseArray;

    .line 37
    iput p1, p0, Lcom/miui/gallery/model/BaseDataSet;->mInitPosition:I

    .line 38
    return-void
.end method

.method private getIndexOfItem(JII)I
    .locals 5
    .param p1, "key"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    .line 171
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    invoke-static {p3, v3, v2}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result p3

    .line 172
    invoke-static {p4, v3, v0}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result p4

    .line 173
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 174
    invoke-virtual {p0, v1}, Lcom/miui/gallery/model/BaseDataSet;->getItemKey(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 178
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 173
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;II)I
    .locals 6
    .param p1, "tar"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    .line 97
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    invoke-static {p2, v3, v2}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result p2

    .line 98
    invoke-static {p3, v3, v0}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result p3

    .line 99
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/model/BaseDataSet;->getItemKey(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 104
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 99
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getIndexOfItem(Ljava/lang/String;II)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    .line 136
    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    invoke-static {p2, v4, v3}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result p2

    .line 137
    invoke-static {p3, v4, v0}, Lcom/miui/gallery/util/MiscUtil;->clamp(III)I

    move-result p3

    .line 138
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 139
    invoke-virtual {p0, v1}, Lcom/miui/gallery/model/BaseDataSet;->getItemPath(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "itemPath":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    .end local v1    # "i":I
    .end local v2    # "itemPath":Ljava/lang/String;
    :goto_1
    return v1

    .line 138
    .restart local v1    # "i":I
    .restart local v2    # "itemPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "itemPath":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addNewFile(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataSet;->mBaseDataCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public abstract addToAlbum(Landroid/app/Activity;IZZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)Z
.end method

.method public addToFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V
.end method

.method protected abstract createItem(I)Lcom/miui/gallery/model/BaseDataItem;
.end method

.method public delete(Landroid/app/Activity;ILcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v7

    .line 190
    .local v7, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v7, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0149

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v7, p1}, Lcom/miui/gallery/model/BaseDataSet;->getDeleteDialogMessage(Lcom/miui/gallery/model/BaseDataItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "message":Ljava/lang/String;
    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/model/BaseDataSet$1;

    invoke-direct {v5, p0, v7, p3, p1}, Lcom/miui/gallery/model/BaseDataSet$1;-><init>(Lcom/miui/gallery/model/BaseDataSet;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;Landroid/app/Activity;)V

    new-instance v6, Lcom/miui/gallery/model/BaseDataSet$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/model/BaseDataSet$2;-><init>(Lcom/miui/gallery/model/BaseDataSet;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 222
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract doDelete(Lcom/miui/gallery/model/BaseDataItem;)I
.end method

.method public abstract getCount()I
.end method

.method protected getDeleteDialogMessage(Lcom/miui/gallery/model/BaseDataItem;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c015c

    .line 226
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 225
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0c015b

    goto :goto_0
.end method

.method public getIndexOfItem(JI)I
    .locals 5
    .param p1, "key"    # J
    .param p3, "possiblePos"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 148
    if-ltz p3, :cond_2

    .line 150
    add-int/lit8 v1, p3, -0x14

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(JII)I

    move-result v0

    .line 151
    .local v0, "pos":I
    if-eq v0, v2, :cond_1

    .line 165
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    return v0

    .line 155
    .restart local v0    # "pos":I
    :cond_1
    add-int/lit8 v1, p3, 0x14

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(JII)I

    move-result v0

    .line 156
    if-ne v0, v2, :cond_0

    .line 159
    add-int/lit8 v1, p3, -0x14

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(JII)I

    move-result v0

    .line 160
    if-ne v0, v2, :cond_0

    .line 163
    add-int/lit8 v1, p3, 0x14

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(JII)I

    move-result v0

    goto :goto_0

    .line 165
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v1

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(JII)I

    move-result v0

    goto :goto_0
.end method

.method public getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;I)I
    .locals 5
    .param p1, "tar"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "possiblePos"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 70
    if-nez p1, :cond_1

    move v1, v2

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v0

    .line 74
    .local v0, "count":I
    if-ltz p2, :cond_2

    .line 76
    add-int/lit8 v3, p2, 0x14

    invoke-direct {p0, p1, p2, v3}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;II)I

    move-result v1

    .line 77
    .local v1, "pos":I
    if-ne v1, v2, :cond_0

    .line 81
    add-int/lit8 v3, p2, -0x14

    invoke-direct {p0, p1, v3, p2}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;II)I

    move-result v1

    .line 82
    if-ne v1, v2, :cond_0

    .line 85
    add-int/lit8 v3, p2, -0x14

    invoke-direct {p0, p1, v4, v3}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;II)I

    move-result v1

    .line 86
    if-ne v1, v2, :cond_0

    .line 89
    add-int/lit8 v2, p2, 0x14

    invoke-direct {p0, p1, v2, v0}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;II)I

    move-result v1

    goto :goto_0

    .line 92
    .end local v1    # "pos":I
    :cond_2
    invoke-direct {p0, p1, v4, v0}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Lcom/miui/gallery/model/BaseDataItem;II)I

    move-result v1

    goto :goto_0
.end method

.method public getIndexOfItem(Ljava/lang/String;I)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "possiblePos"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    if-ltz p2, :cond_2

    .line 113
    add-int/lit8 v2, p2, -0x14

    invoke-direct {p0, p1, v2, p2}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Ljava/lang/String;II)I

    move-result v0

    .line 114
    .local v0, "pos":I
    if-eq v0, v1, :cond_1

    .line 131
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    return v0

    .line 118
    .restart local v0    # "pos":I
    :cond_1
    add-int/lit8 v2, p2, 0x14

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Ljava/lang/String;II)I

    move-result v0

    .line 119
    if-ne v0, v1, :cond_0

    .line 122
    add-int/lit8 v2, p2, -0x14

    invoke-direct {p0, p1, v3, v2}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Ljava/lang/String;II)I

    move-result v0

    .line 123
    if-ne v0, v1, :cond_0

    .line 126
    add-int/lit8 v1, p2, 0x14

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 128
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->getCount()I

    move-result v1

    invoke-direct {p0, p1, v3, v1}, Lcom/miui/gallery/model/BaseDataSet;->getIndexOfItem(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public getInitPosition()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/gallery/model/BaseDataSet;->mInitPosition:I

    return v0
.end method

.method public getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "position"    # I

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataSet;->mBaseDataCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    check-cast p1, Lcom/miui/gallery/model/BaseDataItem;

    .line 43
    .restart local p1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Lcom/miui/gallery/model/BaseDataSet;->createItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataSet;->mBaseDataCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_0
    :goto_0
    return-object p1

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/model/BaseDataSet;->bindItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    goto :goto_0
.end method

.method public abstract getItemKey(I)J
.end method

.method protected abstract getItemPath(I)Ljava/lang/String;
.end method

.method public abstract onRelease()V
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataSet;->mBaseDataCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 183
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataSet;->onRelease()V

    .line 184
    return-void
.end method

.method public removeFromFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public removeFromSecret(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public setInitPosition(I)V
    .locals 0
    .param p1, "initPos"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/miui/gallery/model/BaseDataSet;->mInitPosition:I

    .line 65
    return-void
.end method
