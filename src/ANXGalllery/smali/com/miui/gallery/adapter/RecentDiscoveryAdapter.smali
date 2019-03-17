.class public Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
.super Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
.source "RecentDiscoveryAdapter.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# static fields
.field private static final COLUMN_INDEX_ALBUM_ID:I

.field private static final COLUMN_INDEX_DATE_MODIFIED:I

.field public static PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

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

.field private mGroupStartTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInPickMode:Z

.field private mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    sget-object v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_ALBUM_ID:I

    .line 29
    sget v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_ALBUM_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_DATE_MODIFIED:I

    .line 37
    sget-object v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION:[Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    sget-object v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION:[Ljava/lang/String;

    sget v1, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_ALBUM_ID:I

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    .line 40
    sget-object v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->PROJECTION:[Ljava/lang/String;

    sget v1, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_DATE_MODIFIED:I

    const-string v2, "dateModified"

    aput-object v2, v0, v1

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .param p3, "isInPickMode"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 57
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;->RECENT:Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->setAlbumType(Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter$AlbumType;)V

    .line 58
    new-instance v0, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    .line 59
    new-instance v0, Lcom/miui/gallery/util/AlbumsCursorHelper;

    iget-object v1, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/AlbumsCursorHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    .line 60
    iput-boolean p3, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mIsInPickMode:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;)Lcom/miui/gallery/util/AlbumsCursorHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;)Lcom/miui/gallery/util/ShareAlbumsCursorHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;J)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->newAlbumFromClickedIntent(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->recordAlbumClick(Ljava/lang/String;)V

    return-void
.end method

.method private newAlbumFromClickedIntent(J)Landroid/content/Intent;
    .locals 21
    .param p1, "albumId"    # J

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAttributes(J)J

    move-result-wide v6

    .line 131
    .local v6, "attributes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getServerId(J)Ljava/lang/String;

    move-result-object v15

    .line 132
    .local v15, "serverId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(J)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "albumName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumLocalPath(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "albumLocalPath":Ljava/lang/String;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    .line 136
    .local v16, "unwriteable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isBabyAlbum(J)Z

    move-result v9

    .line 137
    .local v9, "isBabyAlbum":Z
    invoke-static/range {p1 .. p2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isFaceAlbum(J)Z

    move-result v10

    .line 139
    .local v10, "isFaceAlbum":Z
    if-eqz v10, :cond_0

    .line 140
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.miui.gallery.action.VIEW_PEOPLE"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v8, "intent":Landroid/content/Intent;
    :goto_0
    return-object v8

    .line 142
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz v9, :cond_1

    .line 143
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-class v18, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v17, "people_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v18, v0

    .line 145
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyAlbumPeopleId(J)Ljava/lang/String;

    move-result-object v18

    .line 144
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v17, "baby_info"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v18, v0

    .line 147
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabyInfo(J)Ljava/lang/String;

    move-result-object v18

    .line 146
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v17, "thumbnail_info_of_baby"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v18, v0

    .line 149
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getThumbnailInfoOfBaby(J)Ljava/lang/String;

    move-result-object v18

    .line 148
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v17, "baby_sharer_info"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v18, v0

    .line 151
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getBabySharerInfo(J)Ljava/lang/String;

    move-result-object v18

    .line 150
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :goto_1
    const-wide/16 v18, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 157
    .local v14, "isScreenshotAlbum":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isOtherShareAlbum(J)Z

    move-result v12

    .line 158
    .local v12, "isOtherShareAlbum":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->isOwnerShareAlbum(J)Z

    move-result v13

    .line 159
    .local v13, "isOwnerShareAlbum":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isLocalAlbum(J)Z

    move-result v11

    .line 161
    .local v11, "isLocalAlbum":Z
    const-string v17, "other_share_album"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v17, "owner_share_album"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v17, "is_local_album"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    const-string v17, "screenshot_album"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    const-string v17, "pano_album"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v17, "album_id"

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    const-string v17, "album_name"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v17, "album_server_id"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v17, "attributes"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    const-string v17, "album_unwriteable"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v17, "album_local_path"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 153
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "isLocalAlbum":Z
    .end local v12    # "isOtherShareAlbum":Z
    .end local v13    # "isOwnerShareAlbum":Z
    .end local v14    # "isScreenshotAlbum":Z
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.miui.gallery.action.VIEW_ALBUM_DETAIL"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v8    # "intent":Landroid/content/Intent;
    goto/16 :goto_1
.end method

.method private recordAlbumClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "album_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "recent_album"

    const-string v2, "recent_album_click_album_name"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDateModified(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    .local v0, "cursor":Landroid/database/Cursor;
    sget v1, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_DATE_MODIFIED:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 198
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 199
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    .line 200
    const-string v2, "last_divider"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 214
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_1
    return-object v0

    .line 198
    .end local v0    # "convertView":Landroid/view/View;
    .end local v1    # "tag":Ljava/lang/String;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 203
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040111

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 204
    const-string v2, "last_divider"

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v0, p2

    .line 214
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 207
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    const-string v2, "normal_divider"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p2

    .line 208
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 210
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040112

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 211
    const-string v2, "normal_divider"

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040114

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 87
    .local v4, "fileCount":I
    :cond_1
    const/4 v5, 0x0

    .line 88
    .local v5, "timeLabel":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartTimeLabels:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 89
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "timeLabel":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 92
    .restart local v5    # "timeLabel":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 93
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 96
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 97
    .local v3, "cursor":Landroid/database/Cursor;
    sget v6, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->COLUMN_INDEX_ALBUM_ID:I

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 99
    .local v0, "albumId":J
    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v6, v0, v1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->isAlbumDataValid(J)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v6, v0, v1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->getAlbumName(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "albumName":Ljava/lang/String;
    :goto_0
    move-object v6, p2

    .line 100
    check-cast v6, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;

    iget-boolean v7, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mIsInPickMode:Z

    invoke-virtual {v6, v5, v4, v2, v7}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->bindData(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 101
    iget-boolean v6, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mIsInPickMode:Z

    if-nez v6, :cond_4

    move-object v6, p2

    .line 102
    check-cast v6, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;

    new-instance v7, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;

    invoke-direct {v7, p0, v0, v1, v2}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter$1;-><init>(Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;JLjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->setAlbumFromClickedListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_4
    return-object p2

    .line 99
    .end local v2    # "albumName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public resetShareAlbums()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->reset()V

    .line 65
    return-void
.end method

.method public setAllAlbums(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mAlbumsCursorHelper:Lcom/miui/gallery/util/AlbumsCursorHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/AlbumsCursorHelper;->setAlbumsData(Landroid/database/Cursor;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->notifyDataSetChanged()V

    .line 76
    :cond_0
    return-void
.end method

.method public setShareAlbums(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mShareAlbumsCursorHelper:Lcom/miui/gallery/util/ShareAlbumsCursorHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/ShareAlbumsCursorHelper;->setSharedAlbums(Landroid/database/Cursor;)V

    .line 69
    return-void
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "countInGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 221
    .local v2, "groupStartPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 222
    .local v3, "groupTimeLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 223
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 224
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "extra_timeline_item_count_in_group"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    const-string v4, "extra_timeline_group_start_pos"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 226
    const-string v4, "extra_timeline_group_time_labels"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 228
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    .line 230
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    .line 231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartTimeLabels:Ljava/util/ArrayList;

    .line 237
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupItemCount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 234
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartPos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 235
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartTimeLabels:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->mGroupStartTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
