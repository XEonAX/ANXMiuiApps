.class public interface abstract Lcom/miui/gallery/provider/GalleryContract$Album;
.super Ljava/lang/Object;
.source "GalleryContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Album"
.end annotation


# static fields
.field public static final ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

.field public static final ALL_VIRTUAL_ALBUM_IDS:[I

.field public static final URI:Landroid/net/Uri;

.field public static final URI_ALL:Landroid/net/Uri;

.field public static final URI_ALL_EXCEPT_DELETED:Landroid/net/Uri;

.field public static final URI_NO_COVERS:Landroid/net/Uri;

.field public static final URI_SHARE_ALL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 120
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    .line 140
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_face"

    const-string/jumbo v2, "true"

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_video"

    const-string/jumbo v2, "true"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_share"

    const-string/jumbo v2, "true"

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_recent"

    const-string/jumbo v2, "true"

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_favorites"

    const-string/jumbo v2, "true"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL:Landroid/net/Uri;

    .line 148
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fill_covers"

    const-string v2, "false"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_NO_COVERS:Landroid/net/Uri;

    .line 154
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "all_except_deleted"

    const-string/jumbo v2, "true"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_pano"

    const-string/jumbo v2, "true"

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_ALL_EXCEPT_DELETED:Landroid/net/Uri;

    .line 159
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "owner_and_other_album"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    .line 233
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    const-wide/32 v2, -0x7fffffff

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, -0x7ffffffd

    .line 235
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, -0x7ffffffc

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-wide/32 v2, -0x7ffffffe

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-wide/16 v2, 0x1

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-wide/16 v2, 0x2

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-wide/32 v2, -0x7ffffffa

    .line 240
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-wide/32 v2, -0x7ffffffb

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-wide/16 v2, 0x3e8

    .line 242
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-wide/16 v2, 0x4

    .line 243
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    .line 246
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_VIRTUAL_ALBUM_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7ffffffe
        0x7ffffffd
        0x7ffffffc
        0x7ffffffb
        0x7ffffffa
    .end array-data
.end method
