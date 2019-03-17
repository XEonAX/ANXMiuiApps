.class public Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumPageHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;,
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;,
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;,
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;,
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;,
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;,
        Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    }
.end annotation


# instance fields
.field private mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

.field private mContext:Landroid/content/Context;

.field private mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mFaceDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f0c0040

    const v9, 0x7f0c003d

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->initDisplayImageOptions()V

    .line 64
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    iput-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    new-instance v2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;

    const v3, 0x7f0c003e

    const v4, 0x7f020034

    sget-object v5, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_PEOPLE_LIST_PAGE:Landroid/net/Uri;

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;-><init>(IIILandroid/net/Uri;)V

    aput-object v2, v1, v6

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    new-instance v2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;

    const v3, 0x7f020032

    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_LOCATION_LIST_PAGE:Landroid/net/Uri;

    .line 72
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "title"

    .line 73
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v7, v9, v3, v4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;-><init>(IIILandroid/net/Uri;)V

    aput-object v2, v1, v7

    .line 76
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    new-instance v2, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;

    const v3, 0x7f020033

    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_TAG_LIST_PAGE:Landroid/net/Uri;

    .line 79
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "title"

    .line 80
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v8, v10, v3, v4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;-><init>(IIILandroid/net/Uri;)V

    aput-object v2, v1, v8

    .line 83
    return-void
.end method

.method private initDisplayImageOptions()V
    .locals 3

    .prologue
    const v2, 0x7f0201aa

    .line 86
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 87
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 92
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 93
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mFaceDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 98
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    aget-object v0, v0, p1

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->getItem(I)Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->getItem(I)Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    move-result-object v0

    .line 121
    .local v0, "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    if-eqz v0, :cond_0

    .line 122
    iget v1, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mIndex:I

    int-to-long v2, v1

    .line 124
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 109
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040015

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->getItemViewType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 148
    new-instance v1, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;

    invoke-direct {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    .local v1, "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    .end local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;

    .line 155
    .restart local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->getItem(I)Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    move-result-object v0

    .line 156
    .local v0, "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->getItemId(I)J

    move-result-wide v2

    .line 158
    .local v2, "index":J
    iget-object v5, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mFaceDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    :goto_1
    invoke-virtual {v1, v5, v0, v4}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->bindView(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 162
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;->bindClickListener(Landroid/content/Context;Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;)V

    .line 163
    return-object p2

    .line 139
    .end local v0    # "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .end local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    .end local v2    # "index":J
    :pswitch_0
    new-instance v1, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;

    invoke-direct {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbumViewHolder;-><init>(Landroid/view/View;)V

    .line 140
    .restart local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    goto :goto_0

    .line 142
    .end local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    :pswitch_1
    new-instance v1, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;

    invoke-direct {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$PeopleAlbumViewHolder;-><init>(Landroid/view/View;)V

    .line 143
    .restart local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    goto :goto_0

    .line 145
    .end local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    :pswitch_2
    new-instance v1, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;

    invoke-direct {v1, p2}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbumViewHolder;-><init>(Landroid/view/View;)V

    .line 146
    .restart local v1    # "viewHolder":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$BaseViewHolder;
    goto :goto_0

    .line 158
    .restart local v0    # "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    .restart local v2    # "index":J
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mDisplayImageOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public setAlbumCover(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "covers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->mAlbums:[Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;

    aget-object v0, v4, p1

    .line 192
    .local v0, "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;->mIsCoverDataValid:Z

    .line 193
    instance-of v4, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;

    if-eqz v4, :cond_5

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "coverUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "coverUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .restart local v3    # "coverUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "cover":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v2, Ljava/lang/String;

    .end local v2    # "cover":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_3
    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;

    .end local v0    # "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    iput-object v3, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$SearchAlbum;->mCoverUris:Ljava/util/ArrayList;

    .line 212
    .end local v3    # "coverUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 202
    .restart local v0    # "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    :cond_5
    instance-of v4, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;

    if-eqz v4, :cond_4

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "albumCovers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    invoke-static {p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "albumCovers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .restart local v1    # "albumCovers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/BaseAlbumCover;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 207
    .restart local v2    # "cover":Ljava/lang/Object;
    if-eqz v2, :cond_6

    instance-of v5, v2, Lcom/miui/gallery/model/BaseAlbumCover;

    if-eqz v5, :cond_6

    check-cast v2, Lcom/miui/gallery/model/BaseAlbumCover;

    .end local v2    # "cover":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    :cond_7
    check-cast v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;

    .end local v0    # "album":Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$Album;
    iput-object v1, v0, Lcom/miui/gallery/adapter/AlbumPageHeaderAdapter$LocalAlbum;->mAlbumCovers:Ljava/util/ArrayList;

    goto :goto_2
.end method
