.class public Lcom/miui/gallery/picker/PickAlbumDetailFragment;
.super Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
.source "PickAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;,
        Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;,
        Lcom/miui/gallery/picker/PickAlbumDetailFragment$OnSortByClickListener;,
        Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;
    }
.end annotation


# static fields
.field private static final SELECTION_ONLY_LOCAL:Ljava/lang/String;


# instance fields
.field private mAlbumDetailLoaderCallback:Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;

.field private mAlbumDetailSimpleAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

.field private mAlbumDetailTimeLineAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

.field private mAlbumId:J

.field private mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

.field private mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

.field private mIsOtherSharedAlbum:Z

.field private mIsPanoAlbum:Z

.field private mOnSortByClickListener:Lcom/miui/gallery/picker/PickAlbumDetailFragment$OnSortByClickListener;

.field private mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

.field private mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/InternalContract$Cloud;->ALIAS_LOCAL_MEDIA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->SELECTION_ONLY_LOCAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "album"

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v0, " DESC "

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;->NONE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;
    .param p1, "x1"    # Landroid/content/CursorLoader;
    .param p2, "x2"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->configLoader(Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader$SortBy;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailTimeLineAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getSortByIndicatorResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/widget/SortByHeader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/picker/PickAlbumDetailFragment;)Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    return-object v0
.end method

.method private configLoader(Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V
    .locals 1
    .param p1, "cursorLoader"    # Landroid/content/CursorLoader;
    .param p2, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 158
    invoke-direct {p0, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 159
    sget-object v0, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->configOrderBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private configOrderBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;
    .locals 3
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getSortByString(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "orderBy":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne v1, p1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    const-string v2, " DESC "

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " ASC "

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    .line 294
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->onSortByChanged()V

    .line 296
    return-object v0

    .line 289
    :cond_0
    const-string v1, " DESC "

    goto :goto_0

    .line 291
    :cond_1
    const-string v1, " DESC "

    iput-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    goto :goto_1
.end method

.method private getSelection()Ljava/lang/String;
    .locals 6

    .prologue
    .line 212
    iget-boolean v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsOtherSharedAlbum:Z

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 241
    :goto_0
    return-object v1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 218
    const-string v1, "serverType = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, "alias_hidden = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->isOnlyShowLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    sget-object v1, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->SELECTION_ONLY_LOCAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_3
    iget-boolean v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsPanoAlbum:Z

    if-eqz v1, :cond_4

    .line 221
    const-string/jumbo v1, "title LIKE ?  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "alias_hidden = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    :cond_4
    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    const-wide/32 v4, 0x7ffffffa

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 224
    const-string v1, "alias_is_favorite = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "alias_hidden = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, "localGroupId != ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v1, v2, :cond_1

    .line 228
    const-string v1, " AND serverType = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 231
    :cond_5
    const-string v1, "localGroupId = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v1, v2, :cond_1

    .line 233
    const-string v1, " AND serverType=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getSelectionArgs()[Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, -0x3e8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 246
    new-array v1, v8, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 247
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 278
    :goto_0
    return-object v1

    .line 248
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsPanoAlbum:Z

    if-eqz v1, :cond_1

    .line 249
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "PANO_.*"

    aput-object v2, v1, v6

    .line 250
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    goto :goto_0

    .line 251
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsOtherSharedAlbum:Z

    if-eqz v1, :cond_2

    .line 252
    const/4 v1, 0x0

    goto :goto_0

    .line 253
    :cond_2
    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    const-wide/32 v4, 0x7ffffffa

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    .line 255
    .local v0, "type":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v0, v1, :cond_3

    .line 256
    new-array v1, v9, [Ljava/lang/String;

    .line 257
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 258
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 259
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    goto :goto_0

    .line 262
    :cond_3
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    .line 263
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 264
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 265
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v0, v1, :cond_4

    .line 267
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    :goto_1
    aput-object v1, v2, v9

    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 273
    .end local v0    # "type":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v1, v2, :cond_6

    .line 274
    new-array v1, v8, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    goto/16 :goto_0

    .line 275
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v1, v2, :cond_7

    .line 276
    new-array v1, v8, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    goto/16 :goto_0

    .line 278
    :cond_7
    new-array v1, v7, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto/16 :goto_0
.end method

.method private getSortByIndicatorResource()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortOrder:Ljava/lang/String;

    const-string v1, " ASC "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02027c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020279

    goto :goto_0
.end method

.method private getSortByString(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Ljava/lang/String;
    .locals 2
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    .line 300
    sget-object v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$1;->$SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SortByHeader$SortBy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    const-string v0, "alias_sort_time"

    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    const-string/jumbo v0, "title"

    goto :goto_0

    .line 304
    :pswitch_1
    const-string/jumbo v0, "size"

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;
    .locals 5
    .param p1, "sortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;

    .prologue
    const/4 v4, 0x1

    .line 166
    iget-boolean v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsOtherSharedAlbum:Z

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    .line 170
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 172
    .local v0, "uri":Landroid/net/Uri;
    iget-wide v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 174
    :cond_0
    sget-object v1, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    if-ne p1, v1, :cond_1

    .line 175
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    .line 176
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "generate_headers"

    .line 179
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    .line 183
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_processing_items"

    .line 187
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_1
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    .line 192
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_items"

    .line 195
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_processing_items"

    .line 199
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private isOnlyShowLocal()Z
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    return v0
.end method

.method private onSortByChanged()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mCurrentSortBy:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;->setCurrentSortBy(Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 283
    return-void
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "picker_album_detail"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$SortBy;->NONE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getUri(Lcom/miui/gallery/widget/SortByHeader$SortBy;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    new-instance v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Lcom/miui/gallery/picker/PickAlbumDetailFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailLoaderCallback:Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailLoaderCallback:Lcom/miui/gallery/picker/PickAlbumDetailFragment$AlbumDetailLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailTimeLineAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    .line 59
    new-instance v0, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailSimpleAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailSimpleAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailTimeLineAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailTimeLineAdapter:Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$PickAlbumDetailTimeLineAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 319
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->onDestroy()V

    .line 320
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f12008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    new-instance v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumItemCheckListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;

    .line 69
    new-instance v1, Lcom/miui/gallery/picker/PickAlbumDetailFragment$OnSortByClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragment$OnSortByClickListener;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragment;Lcom/miui/gallery/picker/PickAlbumDetailFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mOnSortByClickListener:Lcom/miui/gallery/picker/PickAlbumDetailFragment$OnSortByClickListener;

    .line 71
    const v1, 0x7f12008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/SortByHeader;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mSortByHeader:Lcom/miui/gallery/widget/SortByHeader;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mOnSortByClickListener:Lcom/miui/gallery/picker/PickAlbumDetailFragment$OnSortByClickListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/SortByHeader;->setOnSortByClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->intialSelections()V

    .line 75
    return-object v0
.end method

.method public setAlbumId(J)V
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mAlbumId:J

    .line 127
    return-void
.end method

.method public setIsOtherSharedAlbum(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsOtherSharedAlbum:Z

    .line 131
    return-void
.end method

.method public setIsPanoAlbum(Z)V
    .locals 0
    .param p1, "isPanoAlbum"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragment;->mIsPanoAlbum:Z

    .line 135
    return-void
.end method
