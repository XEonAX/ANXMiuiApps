.class public Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "AddToAlbumDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;,
        Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatePlaceHolder:[Ljava/lang/Object;

.field private mDialog:Lmiui/app/AlertDialog;

.field private mListAdapter:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

.field private mListener:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

.field private mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

.field private mSecretPlaceHolder:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cover_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cover_sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cover_sync_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "media_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "1 AS TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "baby_info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "sortBy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_ALBUM_CLASSIFICATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "classification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cover_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 147
    new-instance v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$1;-><init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 559
    new-instance v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$3;-><init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    .line 569
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getLoadUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->onAlbumSelected(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showCopyOrMove()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mCreatePlaceHolder:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showSecretAlbum()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mSecretPlaceHolder:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListAdapter:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListener:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->recordCopyMoveAction(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mOnAlbumCreatedListener:Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    return-object v0
.end method

.method private getLoadUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_share"

    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "show_share_album"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 8

    .prologue
    .line 202
    const/4 v5, 0x1

    .line 203
    .local v5, "showSystemAlbum":Z
    const/4 v4, 0x0

    .line 204
    .local v4, "showImmutableAlbum":Z
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 206
    const-string/jumbo v6, "show_system_album"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    const-string/jumbo v6, "show_system_album"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 209
    :cond_0
    const-string/jumbo v6, "show_immutable_album"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 211
    :cond_1
    sget-object v2, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_NON_SYSTEM_ALBUM:Ljava/lang/String;

    .line 212
    .local v2, "notShowSystemAlbumClause":Ljava/lang/String;
    const-string v1, "immutable = 0"

    .line 213
    .local v1, "notShowImmutableAlbumClause":Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->isOnlyShowLocal()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, " AND (media_count>0)"

    .line 214
    .local v3, "onlyShowLocalAlbumClause":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    :goto_1
    return-object v6

    .line 213
    .end local v3    # "onlyShowLocalAlbumClause":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 216
    .restart local v3    # "onlyShowLocalAlbumClause":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_4

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 218
    :cond_4
    if-nez v4, :cond_5

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 221
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isOnlyShowLocal()Z
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    return v0
.end method

.method private onAlbumSelected(JZ)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "showCopyOrMove"    # Z

    .prologue
    .line 230
    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "AddToAlbumDialogFragment"

    const-string v1, "Is other shared album, do copy operation for default"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 p3, 0x0

    .line 234
    :cond_0
    if-eqz p3, :cond_2

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->showCopyOrMoveDialog(J)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->dismissSafely()V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListener:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListener:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;->onAlbumSelected(JZ)V

    goto :goto_0
.end method

.method private recordCopyMoveAction(Z)V
    .locals 3
    .param p1, "deleteOrigin"    # Z

    .prologue
    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "move"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "from"

    const-string v2, "AddToAlbumDialogFragment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "organize_photos"

    const-string v2, "move_or_copy"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 278
    return-void
.end method

.method private showCopyOrMove()Z
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_copy_or_move"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCopyOrMoveDialog(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 245
    new-instance v0, Lcom/miui/gallery/ui/CopyOrMoveDialog;

    invoke-direct {v0}, Lcom/miui/gallery/ui/CopyOrMoveDialog;-><init>()V

    .line 246
    .local v0, "dialog":Lcom/miui/gallery/ui/CopyOrMoveDialog;
    new-instance v1, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$2;-><init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;J)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->setOnOperationSelectedListener(Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;)V

    .line 269
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CopyOrMoveDialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->dismissSafely()V

    .line 271
    return-void
.end method

.method private showSecretAlbum()Z
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_add_secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    aput-object v5, v0, v7

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0c013b

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mCreatePlaceHolder:[Ljava/lang/Object;

    .line 107
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v2, -0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    aput-object v5, v0, v7

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0c0465

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    const/16 v1, 0x9

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mSecretPlaceHolder:[Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;-><init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListAdapter:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    .line 111
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 115
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListAdapter:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    invoke-virtual {v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c000c

    .line 117
    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 118
    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListAdapter:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListAdapter:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDestroy()V

    .line 145
    return-void
.end method

.method public setOnAlbumSelectedListener(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->mListener:Lcom/miui/gallery/ui/AddToAlbumDialogFragment$OnAlbumSelectedListener;

    .line 227
    return-void
.end method
