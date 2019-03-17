.class public interface abstract Lcom/miui/gallery/model/AlbumConstants;
.super Ljava/lang/Object;
.source "AlbumConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/model/AlbumConstants$ShareAlbum;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SHARED_ALBUM_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "cover_id"

    aput-object v1, v0, v6

    const-string v1, "cover_path"

    aput-object v1, v0, v7

    const-string v1, "cover_sha1"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "cover_sync_state"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "media_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "face_people_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "baby_info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "thumbnail_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "attributes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "immutable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "top_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "sortBy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "baby_sharer_info"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "local_path"

    aput-object v2, v0, v1

    const/16 v1, 0x11

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

    const/16 v1, 0x12

    const-string v2, "cover_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/model/AlbumConstants;->PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "creatorId"

    aput-object v1, v0, v5

    const-string v1, "count"

    aput-object v1, v0, v6

    const-string v1, "nickname"

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/gallery/model/AlbumConstants;->SHARED_ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method
