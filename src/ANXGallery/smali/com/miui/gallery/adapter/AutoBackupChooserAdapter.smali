.class public Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;
.super Lcom/miui/gallery/adapter/AlbumListAdapterBase;
.source "AutoBackupChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_ALBUM_SIZE:I

.field private static final PROJECTION_WITH_SIZE:[Ljava/lang/String;


# instance fields
.field private final mListener:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    sget-object v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION_WITH_SIZE:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    sget-object v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION_WITH_SIZE:[Ljava/lang/String;

    sget-object v2, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    sput v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->COLUMN_INDEX_ALBUM_SIZE:I

    .line 33
    sget-object v1, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION_WITH_SIZE:[Ljava/lang/String;

    sget v2, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->COLUMN_INDEX_ALBUM_SIZE:I

    const-string/jumbo v3, "size"

    aput-object v3, v1, v2

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumListAdapterBase;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->mListener:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;)Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->mListener:Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$OnAutoBackupStateChangedListener;

    return-object v0
.end method

.method private getAlbumSize(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 78
    sget v0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->COLUMN_INDEX_ALBUM_SIZE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 54
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .local v6, "position":I
    move-object v5, p1

    .line 56
    check-cast v5, Lcom/miui/gallery/ui/AutoBackupChooserItem;

    .line 58
    .local v5, "item":Lcom/miui/gallery/ui/AutoBackupChooserItem;
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getAlbumCount(Landroid/database/Cursor;)I

    move-result v8

    invoke-direct {p0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getAlbumSize(Landroid/database/Cursor;)J

    move-result-wide v10

    invoke-virtual {v5, v7, v8, v10, v11}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->bindCommonInfo(Ljava/lang/String;IJ)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->mDisplayImageOption:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v7, v8, v9}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 62
    invoke-static {p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v2

    .line 63
    .local v2, "isBabyAlbum":Z
    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isOwnerShareAlbum(Landroid/database/Cursor;)Z

    move-result v4

    .line 64
    .local v4, "isOwnerShareAlbum":Z
    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isCameraAlbum(Landroid/database/Cursor;)Z

    move-result v3

    .line 65
    .local v3, "isCameraAlbum":Z
    invoke-static {p3}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->isAutoUploadedAlbum(Landroid/database/Cursor;)Z

    move-result v0

    .line 66
    .local v0, "autoBackup":Z
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 67
    .local v1, "enabled":Z
    :goto_0
    new-instance v7, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;

    invoke-direct {v7, p0, v6}, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter$1;-><init>(Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;I)V

    invoke-virtual {v5, v7, v1, v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->bindCheckBox(Landroid/widget/CompoundButton$OnCheckedChangeListener;ZZ)V

    .line 75
    return-void

    .line 66
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoBackupUiState(Landroid/view/View;)Z
    .locals 2
    .param p1, "listItemView"    # Landroid/view/View;

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/ui/AutoBackupChooserItem;

    .line 88
    .local v0, "item":Lcom/miui/gallery/ui/AutoBackupChooserItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->getCheckBoxCheckedState()Z

    move-result v1

    return v1
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/miui/gallery/adapter/AutoBackupChooserAdapter;->PROJECTION_WITH_SIZE:[Ljava/lang/String;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reverseAutoBackupUiState(Landroid/view/View;I)V
    .locals 1
    .param p1, "listItemView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 82
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/ui/AutoBackupChooserItem;

    .line 83
    .local v0, "item":Lcom/miui/gallery/ui/AutoBackupChooserItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AutoBackupChooserItem;->reverseCheckBoxCheckedState()V

    .line 84
    return-void
.end method
