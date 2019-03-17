.class public Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;
.super Landroid/content/ContentProvider;
.source "GalleryCloudProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;,
        Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    }
.end annotation


# static fields
.field private static final SAFE_INSERT_PROJECTION:[Ljava/lang/String;

.field public static final SYNC_SETTINGS_URI:Landroid/net/Uri;

.field public static final UPLOAD_STATE_URI:Landroid/net/Uri;

.field protected static sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

.field private mHasPendingItem:I

.field private mIsUploading:I

.field protected mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 61
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "uploadState"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->UPLOAD_STATE_URI:Landroid/net/Uri;

    .line 65
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncSettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SYNC_SETTINGS_URI:Landroid/net/Uri;

    .line 122
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 123
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudSetting"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudSetting/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareAlbum"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareAlbum/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareUser"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareUser/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareImage"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareImage/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudUser"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudUser/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudCache"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudCache/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "newFlagCache"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "newFlagCache/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "userInfo"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "userInfo/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "ownerSubUbifocus"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "ownerSubUbifocus/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareSubUbifocus"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "shareSubUbifocus/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFace"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFace/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "faceToImages"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "faceToImages/#"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFaceJoinFaceToImagesJoinCloud"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFaceJoinFaceToImagesJoinCloud/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFaceJoinFaceToImages"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFaceJoinFaceToImages/#"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "uploadState"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleRecommend"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleRecommend/#"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "event"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "event/#"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "eventPhoto"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "eventPhoto/#"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "albumCoverKey"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 194
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "albumCoverKey/#"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "syncInfo"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "syncSettings"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "fileName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SAFE_INSERT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 59
    iput v0, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mIsUploading:I

    .line 60
    iput v0, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mHasPendingItem:I

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    .line 988
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendIdSelection(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "idSelection":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 267
    .end local v0    # "idSelection":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 258
    .restart local v0    # "idSelection":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 262
    goto :goto_0

    .line 264
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 267
    goto :goto_0
.end method

.method private deleteNonDBData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 765
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 766
    const/4 v0, 0x1

    .line 768
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSyncInfo(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 859
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 860
    const-string v0, "GalleryCloudProvider"

    const-string v1, "operation is not supported!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIdFromString(Ljava/lang/String;)J
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 272
    if-eqz p0, :cond_0

    .line 273
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 277
    :goto_0
    return-wide v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private final getIdsSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 884
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    const-string v1, "cloud"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 889
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 891
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v10, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 897
    .end local v10    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v10    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 900
    .end local v10    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    return-object v10

    :cond_1
    move-object v10, v5

    goto :goto_1
.end method

.method private getMediaCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 830
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v10

    .line 833
    .local v2, "PROJECTION":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 835
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 837
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 843
    if-eqz v9, :cond_0

    .line 844
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    if-eqz v9, :cond_2

    .line 844
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 844
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private insertNonDBData(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 982
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 983
    const/4 v0, 0x1

    .line 985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertSyncInfo(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 867
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 868
    const-string v0, "GalleryCloudProvider"

    const-string v1, "operation is not supported!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v0, 0x1

    .line 871
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 604
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static matchTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "tableName":Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 710
    const-string v1, "GalleryCloudProvider"

    const-string v2, "match table name, uri is not cloud"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_0
    return-object v0

    .line 612
    :pswitch_0
    const-string v0, "cloud"

    .line 613
    goto :goto_0

    .line 617
    :pswitch_1
    const-string v0, "cloudSetting"

    .line 618
    goto :goto_0

    .line 622
    :pswitch_2
    const-string/jumbo v0, "shareAlbum"

    .line 623
    goto :goto_0

    .line 627
    :pswitch_3
    const-string/jumbo v0, "shareUser"

    .line 628
    goto :goto_0

    .line 632
    :pswitch_4
    const-string/jumbo v0, "shareImage"

    .line 633
    goto :goto_0

    .line 637
    :pswitch_5
    const-string v0, "cloudUser"

    .line 638
    goto :goto_0

    .line 642
    :pswitch_6
    const-string v0, "cloudCache"

    .line 643
    goto :goto_0

    .line 647
    :pswitch_7
    const-string v0, "newFlagCache"

    .line 648
    goto :goto_0

    .line 652
    :pswitch_8
    const-string/jumbo v0, "userInfo"

    .line 653
    goto :goto_0

    .line 657
    :pswitch_9
    const-string v0, "ownerSubUbifocus"

    .line 658
    goto :goto_0

    .line 662
    :pswitch_a
    const-string/jumbo v0, "shareSubUbifocus"

    .line 663
    goto :goto_0

    .line 667
    :pswitch_b
    const-string v0, "peopleFace"

    .line 668
    goto :goto_0

    .line 672
    :pswitch_c
    const-string v0, "faceToImages"

    .line 673
    goto :goto_0

    .line 677
    :pswitch_d
    const-string v0, "peopleFace join FaceToImages join cloud"

    .line 678
    goto :goto_0

    .line 682
    :pswitch_e
    const-string v0, "peopleRecommend"

    .line 683
    goto :goto_0

    .line 687
    :pswitch_f
    const-string v0, "event"

    .line 688
    goto :goto_0

    .line 692
    :pswitch_10
    const-string v0, "eventPhoto"

    .line 693
    goto :goto_0

    .line 697
    :pswitch_11
    const-string v0, "albumCoverKey"

    .line 698
    goto :goto_0

    .line 702
    :pswitch_12
    const-string v0, "peopleFace join faceToImages"

    .line 703
    goto :goto_0

    .line 706
    :pswitch_13
    const-string/jumbo v0, "uploadState"

    .line 707
    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_13
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private queryNonDBData(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 718
    sget-object v5, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 719
    .local v2, "matchResult":I
    const/16 v5, 0x17

    if-ne v2, v5, :cond_0

    .line 720
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "is_upload"

    aput-object v6, v5, v4

    const-string v6, "has_pending_item"

    aput-object v6, v5, v3

    invoke-direct {v1, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 724
    .local v1, "c":Landroid/database/MatrixCursor;
    const-string v5, "GalleryCloudProvider"

    const-string v6, "query upload state isUploading[%d], hasPendingItem[%d]"

    iget v7, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mIsUploading:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mHasPendingItem:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 725
    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mIsUploading:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mHasPendingItem:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 736
    .end local v1    # "c":Landroid/database/MatrixCursor;
    :goto_0
    return-object v1

    .line 727
    :cond_0
    const/16 v5, 0x29

    if-ne v2, v5, :cond_2

    .line 728
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "backupOnlyInWifi"

    aput-object v6, v5, v4

    invoke-direct {v1, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 731
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getBackupOnlyInWifi()Z

    move-result v0

    .line 732
    .local v0, "backupOnlyWifi":Z
    const-string v5, "GalleryCloudProvider"

    const-string v6, "query backup only wifi [%s]"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 736
    .end local v0    # "backupOnlyWifi":Z
    .end local v1    # "c":Landroid/database/MatrixCursor;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private querySyncInfo(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 773
    sget-object v10, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    const/16 v11, 0x28

    if-ne v10, v11, :cond_6

    .line 774
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "(%s) AND (%s = %s OR %s = %s) AND (%s = %s OR %s = %s) AND ((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))"

    const/16 v12, 0xb

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget-object v14, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "serverType"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    .line 777
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "serverType"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x2

    .line 778
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string v14, "localFlag"

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const/4 v14, 0x7

    .line 779
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const-string v14, "localFlag"

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const/16 v14, 0x8

    .line 780
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x9

    .line 781
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxImageSizeLimit()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xa

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxVideoSizeLimit()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 774
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "OWNER_DIRTY_SELECTION":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "(%s = %d OR %s = %d) AND (%s = %s OR %s = %s) AND ((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))"

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "localFlag"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x7

    .line 784
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "localFlag"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x8

    .line 785
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "serverType"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 786
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "serverType"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x2

    .line 787
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x8

    .line 788
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxImageSizeLimit()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x9

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxVideoSizeLimit()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 782
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "SHARER_DIRTY_SELECTION":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s = \'%s\' AND %s = %d AND (%s = %s OR %s = %s) "

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "serverStatus"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "custom"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "localFlag"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 792
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "serverType"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 793
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string v14, "serverType"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x2

    .line 794
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 789
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, "SYNCED_SELECTION":Ljava/lang/String;
    const/4 v8, -0x1

    .line 796
    .local v8, "syncableCount":I
    const/4 v9, -0x1

    .line 799
    .local v9, "syncedCount":I
    if-nez p2, :cond_0

    .line 800
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "syncableCount"

    aput-object v11, p2, v10

    .line 803
    .restart local p2    # "projection":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    array-length v10, v0

    new-array v6, v10, [Ljava/lang/Integer;

    .line 804
    .local v6, "columnValues":[Ljava/lang/Integer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v7, v10, :cond_5

    .line 805
    aget-object v10, p2, v7

    const-string/jumbo v11, "syncableCount"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 806
    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    .line 807
    const-string v10, "cloud"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getMediaCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "shareImage"

    .line 808
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getMediaCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    add-int v8, v10, v11

    .line 810
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    .line 804
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 811
    :cond_2
    aget-object v10, p2, v7

    const-string/jumbo v11, "syncedCount"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 812
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 813
    const-string v10, "cloud"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getMediaCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "shareImage"

    .line 814
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getMediaCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    add-int v9, v10, v11

    .line 816
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    goto :goto_1

    .line 818
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unsupported argument: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p2, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 821
    :cond_5
    const-string v10, "GalleryCloudProvider"

    const-string v11, "query syncInfo syncableCount[%d], syncedCount[%d]"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 823
    .local v5, "c":Landroid/database/MatrixCursor;
    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 826
    .end local v2    # "OWNER_DIRTY_SELECTION":Ljava/lang/String;
    .end local v3    # "SHARER_DIRTY_SELECTION":Ljava/lang/String;
    .end local v4    # "SYNCED_SELECTION":Ljava/lang/String;
    .end local v5    # "c":Landroid/database/MatrixCursor;
    .end local v6    # "columnValues":[Ljava/lang/Integer;
    .end local v7    # "i":I
    .end local v8    # "syncableCount":I
    .end local v9    # "syncedCount":I
    :goto_2
    return-object v5

    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 577
    sget-object v1, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    if-nez v1, :cond_0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private static shouldRequestSync(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x0

    .line 553
    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 554
    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 562
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    const-string v1, "localFlag"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "localFlag"

    .line 558
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 557
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateNonDBData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 741
    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_4

    .line 742
    const-string v4, "is_upload"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 743
    .local v1, "isUploading":Ljava/lang/Boolean;
    const-string v4, "has_pending_item"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 744
    .local v0, "hasPendingItem":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 746
    iput v3, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mIsUploading:I

    .line 751
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 753
    iput v2, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mHasPendingItem:I

    .line 758
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 761
    .end local v0    # "hasPendingItem":Ljava/lang/Boolean;
    .end local v1    # "isUploading":Ljava/lang/Boolean;
    :goto_2
    return v2

    .line 748
    .restart local v0    # "hasPendingItem":Ljava/lang/Boolean;
    .restart local v1    # "isUploading":Ljava/lang/Boolean;
    :cond_2
    iput v2, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mIsUploading:I

    goto :goto_0

    .line 755
    :cond_3
    iput v3, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mHasPendingItem:I

    goto :goto_1

    .end local v0    # "hasPendingItem":Ljava/lang/Boolean;
    .end local v1    # "isUploading":Ljava/lang/Boolean;
    :cond_4
    move v2, v3

    .line 761
    goto :goto_2
.end method

.method private updateSyncInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 851
    sget-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 852
    const-string v0, "GalleryCloudProvider"

    const-string v1, "operation is not supported!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x1

    .line 855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateInsertValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 536
    const-string/jumbo v0, "userInfo"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "date_modified"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const-string v0, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    :cond_0
    return-void
.end method

.method private static validateUpdateValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 544
    const-string/jumbo v0, "userInfo"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const-string v0, "date_modified"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    const-string v0, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "isInsert"    # Z

    .prologue
    .line 513
    const-string v2, "fileName"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/gallery/util/FileUtils;->getPackageNameFromScreenshotFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 517
    const-string v2, "location"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    :goto_0
    return-object p1

    .line 518
    :cond_1
    if-eqz p2, :cond_0

    const-string v2, "location"

    .line 519
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/gallery/data/LocationManager;->appendDefaultLocationValues(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 404
    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    if-nez v4, :cond_1

    move v0, v3

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->deleteNonDBData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->deleteSyncInfo(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v3

    .line 409
    goto :goto_0

    .line 412
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "table":Ljava/lang/String;
    const/4 v1, 0x0

    .line 415
    .local v1, "selectById":Ljava/lang/String;
    const-string v4, "cloud"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->genIDSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    :cond_4
    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v4, v2, p2, p3}, Lcom/miui/gallery/provider/GalleryDBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, "result":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 423
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v4, v1, v5}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->deleteAttributes(Ljava/lang/String;)V

    .line 427
    :cond_5
    if-lez v0, :cond_0

    .line 428
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    invoke-virtual {v4, p1, v5, v3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method

.method protected final deleteAttributes(Ljava/lang/String;)V
    .locals 8
    .param p1, "selectById"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->genSelectedAlbums(Ljava/lang/String;)[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;

    move-result-object v1

    .line 974
    .local v1, "infos":[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 975
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 976
    .local v0, "info":Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-wide v6, v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->mAlbumId:J

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/provider/cache/MediaManager;->deleteAttributes(J)V

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    .end local v0    # "info":Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    :cond_0
    return-void
.end method

.method protected final genIDSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v1, ","

    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getIdsSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final genSelectedAlbums(Ljava/lang/String;)[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    .locals 17
    .param p1, "selectById"    # Ljava/lang/String;

    .prologue
    .line 922
    sget-object v2, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    const-string v3, "cloud"

    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "serverType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 926
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 922
    invoke-virtual/range {v2 .. v10}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 928
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-array v0, v2, [Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;

    move-object/from16 v16, v0

    .line 929
    .local v16, "infos":[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    if-eqz v11, :cond_2

    .line 931
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 932
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 933
    .local v14, "id":J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 934
    .local v12, "attributes":J
    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    new-instance v3, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;

    invoke-direct {v3, v14, v15, v12, v13}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;-><init>(JJ)V

    aput-object v3, v16, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 937
    .end local v12    # "attributes":J
    .end local v14    # "id":J
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 928
    .end local v16    # "infos":[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    .line 937
    .restart local v16    # "infos":[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 940
    :cond_2
    return-object v16
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 348
    sget-object v6, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    if-nez v6, :cond_0

    .line 349
    const/4 v2, 0x0

    .line 398
    :goto_0
    return-object v2

    .line 352
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->insertNonDBData(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->insertSyncInfo(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "table":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 358
    .local v4, "rowId":J
    sget-object v6, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 359
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 361
    :try_start_0
    invoke-virtual {p0, v1, v3, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->onPreInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 362
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_8

    .line 363
    invoke-static {v3, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->validateInsertValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 364
    const-string v6, "cloud"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "shareImage"

    .line 365
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 366
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p0, p2, v6}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    .line 368
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 369
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    .line 370
    const/4 v2, 0x0

    .line 386
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 372
    :cond_5
    :try_start_1
    const-string v6, "cloud"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 373
    iget-object v6, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v6, v4, v5, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 374
    const-string v6, "serverType"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "serverType"

    .line 375
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 376
    const-string v6, "attributes"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 377
    .local v0, "attr":Ljava/lang/Long;
    iget-object v8, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    if-nez v0, :cond_7

    const-wide/16 v6, 0x0

    :goto_1
    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/miui/gallery/provider/cache/MediaManager;->insertAttributes(JJ)V

    .line 384
    .end local v0    # "attr":Ljava/lang/Long;
    :cond_6
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 389
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_9

    .line 390
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 377
    .restart local v0    # "attr":Ljava/lang/Long;
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    .line 382
    .end local v0    # "attr":Ljava/lang/Long;
    :cond_8
    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 386
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 392
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 393
    .local v2, "result":Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->shouldRequestSync(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 394
    iget-object v6, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v2, v7, v8}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 396
    :cond_a
    iget-object v6, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0
.end method

.method protected isMediaItem(Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    if-eqz p1, :cond_2

    .line 435
    const-string v3, "serverType"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 436
    .local v0, "type":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    .end local v0    # "type":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "type":Ljava/lang/Integer;
    :cond_1
    move v1, v2

    .line 436
    goto :goto_0

    .end local v0    # "type":Ljava/lang/Integer;
    :cond_2
    move v1, v2

    .line 438
    goto :goto_0
.end method

.method protected needNotifyUpdate(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    .line 490
    if-eqz p1, :cond_2

    .line 491
    const-string v1, "localFlag"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    const-string v1, "serverStatus"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    const-string/jumbo v1, "specialTypeFlags"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    .line 206
    new-instance v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;-><init>(Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$1;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected onPreInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 304
    const-wide/16 v12, -0x1

    .line 305
    .local v12, "id":J
    const/16 v17, 0x0

    .line 307
    .local v17, "queryCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "cloud"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    const-string v2, "serverType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 309
    .local v20, "type":Ljava/lang/Integer;
    if-eqz v20, :cond_2

    .line 310
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 311
    :cond_0
    const-string/jumbo v2, "sha1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 312
    .local v18, "sha1":Ljava/lang/String;
    const-string v2, "localGroupId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, "localGroupId":Ljava/lang/String;
    const-string/jumbo v2, "thumbnailFile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 314
    .local v19, "thumbnail":Ljava/lang/String;
    const-string v2, "fileName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, "fileName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 316
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    :cond_1
    const-string v3, "cloud"

    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SAFE_INSERT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "sha1=? AND localGroupId=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v18, v6, v2

    const/4 v2, 0x1

    aput-object v14, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 331
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v14    # "localGroupId":Ljava/lang/String;
    .end local v18    # "sha1":Ljava/lang/String;
    .end local v19    # "thumbnail":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 333
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 334
    .local v15, "name":Ljava/lang/String;
    const-string v2, "GalleryCloudProvider"

    const-string v3, "item conflict in onPreInsert %s"

    invoke-static {v2, v3, v15}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v16

    .line 336
    .local v16, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v2, "Sync"

    const-string/jumbo v3, "sync_insert_transaction"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "type":Ljava/lang/Integer;
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 343
    return-wide v12

    .line 321
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v14    # "localGroupId":Ljava/lang/String;
    .restart local v18    # "sha1":Ljava/lang/String;
    .restart local v19    # "thumbnail":Ljava/lang/String;
    .restart local v20    # "type":Ljava/lang/Integer;
    :cond_4
    :try_start_1
    const-string v3, "cloud"

    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SAFE_INSERT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "sha1=? AND localGroupId=? AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND fileName=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v18, v6, v2

    const/4 v2, 0x1

    aput-object v14, v6, v2

    const/4 v2, 0x2

    aput-object v10, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_0

    .line 324
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v14    # "localGroupId":Ljava/lang/String;
    .end local v18    # "sha1":Ljava/lang/String;
    .end local v19    # "thumbnail":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 325
    const-string v2, "localFile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 326
    .local v11, "localFile":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 327
    const-string v3, "cloud"

    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->SAFE_INSERT_PROJECTION:[Ljava/lang/String;

    const-string v5, "localFile like ? AND (serverType=0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    goto/16 :goto_0

    .line 341
    .end local v11    # "localFile":Ljava/lang/String;
    .end local v20    # "type":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v12, 0x0

    .line 214
    .local v12, "c":Landroid/database/Cursor;
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->queryNonDBData(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object v13, v12

    .line 236
    .end local v12    # "c":Landroid/database/Cursor;
    .local v13, "c":Landroid/database/Cursor;
    :goto_0
    return-object v13

    .line 218
    .end local v13    # "c":Landroid/database/Cursor;
    .restart local v12    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->querySyncInfo(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object v13, v12

    .line 219
    .end local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "c":Landroid/database/Cursor;
    goto :goto_0

    .line 222
    .end local v13    # "c":Landroid/database/Cursor;
    .restart local v12    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getIdFromString(Ljava/lang/String;)J

    move-result-wide v14

    .line 224
    .local v14, "id":J
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "limit":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "groupBy":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "having":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "tables":Ljava/lang/String;
    const-string v2, "peopleFace join FaceToImages join cloud"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as master"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    :cond_2
    sget-object v2, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v3

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v14, v15}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->appendIdSelection(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    .line 232
    invoke-virtual/range {v2 .. v11}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v13, v12

    .line 236
    .end local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "c":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 444
    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    if-nez v4, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v1

    .line 448
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->updateNonDBData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->updateSyncInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    invoke-static {p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "table":Ljava/lang/String;
    const/4 v2, 0x0

    .line 456
    .local v2, "selectById":Ljava/lang/String;
    const-string v4, "cloud"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    invoke-virtual {p0, p3, p4}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->genIDSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    const-string v4, "attributes"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v4}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v2, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->updateAttributes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 463
    :cond_2
    invoke-static {v3, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->validateUpdateValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 464
    const-string v4, "cloud"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "shareImage"

    .line 465
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 466
    :cond_3
    invoke-virtual {p0, p2, v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    .line 468
    :cond_4
    sget-object v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v4, v3, p2, p3, p4}, Lcom/miui/gallery/provider/GalleryDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 470
    .local v1, "result":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 471
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v4, v2, v6, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 477
    .local v0, "count":I
    if-eq v0, v1, :cond_5

    invoke-virtual {p0, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->isMediaItem(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v4, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->isItemDeleted(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 478
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    sget-object v5, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5, p3, p4}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    .line 483
    .end local v0    # "count":I
    :cond_5
    if-lez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->needNotifyUpdate(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mContentResolver:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;

    invoke-static {p1, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->shouldRequestSync(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    invoke-virtual {v4, p1, v6, v5}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0
.end method

.method protected final updateAttributes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "selectById"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->genSelectedAlbums(Ljava/lang/String;)[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;

    move-result-object v5

    .line 945
    .local v5, "infos":[Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    if-eqz v5, :cond_4

    array-length v8, v5

    if-lez v8, :cond_4

    .line 946
    const-string v8, "attributes"

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 947
    .local v2, "attr":Ljava/lang/Long;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v6, "needUpdateEditedColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v11, v5

    const/4 v8, 0x0

    move v10, v8

    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v4, v5, v10

    .line 949
    .local v4, "info":Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-wide v14, v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->mAlbumId:J

    if-nez v2, :cond_2

    const-wide/16 v8, 0x0

    :goto_1
    invoke-virtual {v12, v14, v15, v8, v9}, Lcom/miui/gallery/provider/cache/MediaManager;->updateAttributes(JJ)V

    .line 950
    const-string v8, "editedColumns"

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 951
    invoke-static {}, Lcom/miui/gallery/provider/AlbumManager;->getAlbumSyncAttributes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 952
    .local v7, "syncAttr":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    and-long/2addr v12, v14

    iget-wide v14, v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->mAttributes:J

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    and-long v14, v14, v16

    cmp-long v9, v12, v14

    if-eqz v9, :cond_0

    .line 954
    iget-wide v8, v4, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;->mAlbumId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    .end local v7    # "syncAttr":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_0

    .line 949
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    .line 960
    .end local v4    # "info":Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$AlbumInfo;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 961
    const/4 v8, 0x6

    invoke-static {v8}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "editedColumnsElement":Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "UPDATE %s SET %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') WHERE %s IN (%s)"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const/4 v11, 0x1

    const-string v12, "editedColumns"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "editedColumns"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    aput-object v3, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    const/4 v11, 0x6

    const-string v12, "_id"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, ","

    .line 967
    invoke-static {v12, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 962
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 970
    .end local v2    # "attr":Ljava/lang/Long;
    .end local v3    # "editedColumnsElement":Ljava/lang/String;
    .end local v6    # "needUpdateEditedColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    return-void
.end method
