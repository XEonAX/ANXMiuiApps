.class public Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;
.super Lcom/miui/gallery/adapter/PreloadMediaAdapter;
.source "StoryMoviePickAdapter.java"

# interfaces
.implements Lcom/miui/gallery/adapter/CheckableAdapter;
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mPicker:Lcom/miui/gallery/picker/helper/Picker;

.field private mPickerItemCheckedListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/adapter/PreloadMediaAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/picker/helper/Picker;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "picker"    # Lcom/miui/gallery/picker/helper/Picker;

    .prologue
    .line 36
    sget-object v0, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 37
    iput-object p2, p0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 38
    new-instance v0, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {v0, v1}, Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;-><init>(Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->mPickerItemCheckedListener:Lcom/miui/gallery/picker/helper/PickerItemCheckedListener;

    .line 39
    return-void
.end method

.method private getSyncState(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 60
    .local v0, "syncState":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getSyncStateInternal(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method protected doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 47
    move-object v2, p1

    check-cast v2, Lcom/miui/gallery/ui/HomePageGridItem;

    .line 48
    .local v2, "item":Lcom/miui/gallery/ui/HomePageGridItem;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 49
    .local v5, "uri":Landroid/net/Uri;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getClearThumbFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->mDefaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v4, v5, v6}, Lcom/miui/gallery/ui/HomePageGridItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 51
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->isFavorite(I)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/miui/gallery/ui/HomePageGridItem;->bindFavoriteIndicator(Z)V

    .line 52
    invoke-direct {p0, p3}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getSyncState(Landroid/database/Cursor;)I

    move-result v3

    .line 53
    .local v3, "newSyncState":I
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 54
    .local v0, "id":J
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->mShowScene:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    invoke-virtual {v2, v0, v1, v3, v6}, Lcom/miui/gallery/ui/HomePageGridItem;->bindSyncIndicator(JILcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V

    .line 55
    return-void
.end method

.method public getCheckableView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 158
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
    .line 127
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x11

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemKey(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 71
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
    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0x11

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 134
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
    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isFavorite(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 153
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
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
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
    .line 111
    const/4 v0, 0x0

    return v0
.end method
