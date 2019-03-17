.class public Lcom/miui/gallery/cloud/CloudTableUtils;
.super Ljava/lang/Object;
.source "CloudTableUtils.java"


# static fields
.field public static final IS_VALID_GROUP:Ljava/lang/String;

.field private static final sIdsForGroupWithoutRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final sItemIsNotGroup:Ljava/lang/String;

.field public static sPhotoLocalFlag_Create_ForceCreate_Move_Copy:Ljava/lang/String;

.field public static final sPhotoLocalFlag_Synced:Ljava/lang/String;

.field private static final sSystemAlbumGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d AND %s = \"%s\")"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "localFlag"

    aput-object v3, v2, v5

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "serverStatus"

    aput-object v3, v2, v7

    const-string v3, "custom"

    aput-object v3, v2, v8

    .line 11
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sPhotoLocalFlag_Synced:Ljava/lang/String;

    .line 15
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d OR %s = %d OR %s = %d OR %s = %d)"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "localFlag"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "localFlag"

    aput-object v3, v2, v7

    const/4 v3, 0x5

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/4 v4, 0x6

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x9

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 16
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sPhotoLocalFlag_Create_ForceCreate_Move_Copy:Ljava/lang/String;

    .line 22
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d OR %s = %d)"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "serverType"

    aput-object v3, v2, v5

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "serverType"

    aput-object v3, v2, v7

    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 22
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sItemIsNotGroup:Ljava/lang/String;

    .line 29
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = %d AND (%s = %d OR %s = %d OR (%s = %d AND %s = \"%s\")))"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "serverType"

    aput-object v3, v2, v5

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "localFlag"

    aput-object v3, v2, v7

    const/16 v3, 0x8

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/16 v4, 0xa

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "serverStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "custom"

    aput-object v4, v2, v3

    .line 29
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->IS_VALID_GROUP:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    .line 40
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3e9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3e9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public static getCloudIdForGroupWithoutRecord(J)J
    .locals 2
    .param p0, "groupServerId"    # J

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CloudTableUtils;->isGroupWithoutRecord(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-wide/16 v0, -0x1

    mul-long/2addr v0, p0

    .line 104
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getServerIdForGroupWithoutRecord(J)J
    .locals 2
    .param p0, "cloudId"    # J

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CloudTableUtils;->isGroupWithoutRecordByCloudId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-wide/16 v0, -0x1

    mul-long/2addr v0, p0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraGroup(Ljava/lang/String;)Z
    .locals 2
    .param p0, "groupServerId"    # Ljava/lang/String;

    .prologue
    .line 116
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isGroupWithoutRecord(J)Z
    .locals 2
    .param p0, "groupServerId"    # J

    .prologue
    .line 108
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isGroupWithoutRecordByCloudId(J)Z
    .locals 4
    .param p0, "cloudId"    # J

    .prologue
    .line 112
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sIdsForGroupWithoutRecord:Ljava/util/ArrayList;

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isScreenshotGroup(Ljava/lang/String;)Z
    .locals 2
    .param p0, "groupServerId"    # Ljava/lang/String;

    .prologue
    .line 121
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSecretAlbum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "groupServerId"    # Ljava/lang/String;
    .param p1, "groupLocalId"    # Ljava/lang/String;

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    .line 127
    .local v0, "serverId":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 134
    :cond_0
    :goto_0
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 130
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudTableUtils;->getServerIdForGroupWithoutRecord(J)J

    move-result-wide v0

    goto :goto_0

    .line 134
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSystemAlbum(J)Z
    .locals 2
    .param p0, "groupServerId"    # J

    .prologue
    .line 138
    sget-object v0, Lcom/miui/gallery/cloud/CloudTableUtils;->sSystemAlbumGroupIds:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static sGetWhereClauseAll(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "localFlag"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%d = %d OR %d = %d)"

    new-array v4, v11, [Ljava/lang/Object;

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0xa

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 70
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "groupLocalFlag_Synced_Rename":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(%d = %d OR %d = %d OR %d = %d)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0x8

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const/16 v5, 0xa

    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x5

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 77
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "groupLocalFlag_Synced_Create_Rename":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "( (%s) AND ((%s AND (+%s = %s AND %s)) OR (%s AND (%s = %s AND %s))) )"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/miui/gallery/cloud/CloudTableUtils;->sItemIsNotGroup:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Lcom/miui/gallery/cloud/CloudTableUtils;->sPhotoLocalFlag_Synced:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "groupId"

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    aput-object v1, v4, v11

    const/4 v5, 0x5

    sget-object v6, Lcom/miui/gallery/cloud/CloudTableUtils;->sPhotoLocalFlag_Create_ForceCreate_Move_Copy:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "localGroupId"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p0, v4, v5

    const/16 v5, 0x8

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
