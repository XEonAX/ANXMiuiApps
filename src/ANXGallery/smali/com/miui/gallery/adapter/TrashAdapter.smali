.class public Lcom/miui/gallery/adapter/TrashAdapter;
.super Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
.source "TrashAdapter.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias_micro_thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "alias_sync_state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alias_clear_thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alias_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "alias_create_time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "specialTypeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/adapter/TrashAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/ui/TrashGridItem;

    .line 89
    .local v0, "item":Lcom/miui/gallery/ui/TrashGridItem;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 91
    .local v6, "position":I
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/TrashAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/TrashAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 92
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/TrashAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    .line 90
    invoke-virtual {v0, v7, v8, v9}, Lcom/miui/gallery/ui/TrashGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 94
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "type":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 96
    .local v2, "duration":J
    const/16 v7, 0xa

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 97
    .local v4, "specialTypeFlags":J
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/TrashGridItem;->bindIndicator(Ljava/lang/String;JJ)V

    .line 98
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/TrashAdapter;->isFavorite(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/TrashGridItem;->bindFavoriteIndicator(Z)V

    .line 99
    const/16 v7, 0x8

    .line 100
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v7, 0x9

    .line 101
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-static {p2, v8, v9, v7, v1}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/TrashGridItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public getClearThumbFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/TrashAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/TrashAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 65
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
    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/adapter/TrashAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSha1(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isFavorite(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/TrashAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

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

    const v1, 0x7f040160

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
