.class public Lcom/miui/gallery/picker/PickerHomePageAdapter;
.super Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.source "PickerHomePageAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mGroupItemCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupStartLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupStartPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_micro_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alias_create_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "serverType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "thumbnailFile"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "alias_sort_time"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 78
    return-void
.end method

.method private getSyncState(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 106
    .local v0, "syncState":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getSyncStateInternal(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    move-object/from16 v2, p1

    check-cast v2, Lcom/miui/gallery/ui/HomePageGridItem;

    .line 88
    .local v2, "item":Lcom/miui/gallery/ui/HomePageGridItem;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 89
    .local v11, "position":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v14

    invoke-virtual {v2, v12, v13, v14}, Lcom/miui/gallery/ui/HomePageGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 90
    const/16 v12, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "type":Ljava/lang/String;
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 92
    .local v4, "duration":J
    const/16 v12, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 93
    .local v6, "specialTypeFlags":J
    invoke-virtual/range {v2 .. v7}, Lcom/miui/gallery/ui/HomePageGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->isFavorite(I)Z

    move-result v12

    invoke-virtual {v2, v12}, Lcom/miui/gallery/ui/HomePageGridItem;->bindFavoriteIndicator(Z)V

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getSyncState(Landroid/database/Cursor;)I

    move-result v10

    .line 96
    .local v10, "newSyncState":I
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 97
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mShowScene:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-virtual {v2, v8, v9, v10, v12}, Lcom/miui/gallery/ui/HomePageGridItem;->bindSyncIndicator(JILcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 98
    const/4 v12, 0x3

    .line 99
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x4

    .line 100
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 98
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v14, v15}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/miui/gallery/ui/HomePageGridItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v9, v13}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v12

    invoke-virtual {v2, v12}, Lcom/miui/gallery/ui/HomePageGridItem;->setIsSimilarBestImage(Z)V

    .line 102
    return-void
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 223
    check-cast p1, Lcom/miui/gallery/ui/HomePageGridItem;

    .end local p1    # "itemView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/miui/gallery/ui/HomePageGridItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xc

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 210
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    if-nez p2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04008d

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "location":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, "cursor":Landroid/database/Cursor;
    move-object v2, p2

    .line 130
    check-cast v2, Lcom/miui/gallery/ui/HomePageGridHeaderItem;

    const/16 v3, 0xf

    .line 131
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/util/GalleryDateUtils;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/ui/HomePageGridHeaderItem;->bindData(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object p2
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMicroThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 197
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isFavorite(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerHomePageAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 203
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 204
    .local v1, "isFavorite":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_timeline_item_count_in_group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    .line 230
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_timeline_group_start_pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    .line 231
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_timeline_group_start_locations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickerHomePageAdapter;->mGroupStartLocations:Ljava/util/ArrayList;

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
