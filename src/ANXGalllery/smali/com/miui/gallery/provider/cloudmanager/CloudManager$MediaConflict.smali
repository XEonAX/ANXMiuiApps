.class Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaConflict"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mFileName:Ljava/lang/String;

.field private mMediaId:J

.field private mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "albumId"    # J
    .param p5, "mediaId"    # J
    .param p7, "sha1"    # Ljava/lang/String;

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 902
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mFileName:Ljava/lang/String;

    .line 903
    iput-wide p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mAlbumId:J

    .line 904
    iput-wide p5, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mMediaId:J

    .line 905
    iput-object p7, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mSha1:Ljava/lang/String;

    .line 906
    return-void
.end method


# virtual methods
.method protected execute(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "manager"    # Lcom/miui/gallery/provider/cache/MediaManager;

    .prologue
    .line 945
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mMediaId:J

    .line 946
    .local v0, "mediaId":J
    iget-wide v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mMediaId:J

    invoke-static {v4, v5}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 947
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v0

    .line 950
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_1

    .line 951
    const-wide/16 v4, -0x67

    .line 958
    :goto_0
    return-wide v4

    .line 953
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "sha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mSha1:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 955
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 956
    const-wide/16 v4, -0x68

    goto :goto_0

    .line 958
    :cond_2
    const-wide/16 v4, -0x69

    goto :goto_0
.end method

.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 911
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mAlbumId:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mAlbumId:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v8

    .line 913
    .local v8, "orginAlbumId":J
    const-string/jumbo v1, "shareImage"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "sha1"

    aput-object v0, v2, v10

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND fileName = ? AND localGroupId=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mFileName:Ljava/lang/String;

    aput-object v0, v4, v6

    .line 917
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 913
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 921
    .end local v8    # "orginAlbumId":J
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "cloud"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "sha1"

    aput-object v0, v2, v10

    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\')) AND fileName = ? AND localGroupId=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mFileName:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-wide v6, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mAlbumId:J

    .line 925
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 921
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Conflict{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v2, -0x1

    .line 932
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;->verify(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 933
    .local v0, "result":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 939
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .line 935
    .restart local v0    # "result":J
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 936
    const-string v2, "CloudManager"

    const-string v3, "%s\'s fileName is empty, so no conflict"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$MediaConflict;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    const-wide/16 v0, -0x66

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 939
    goto :goto_0
.end method
