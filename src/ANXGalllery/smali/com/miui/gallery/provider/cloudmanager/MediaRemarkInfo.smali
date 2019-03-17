.class public Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;
.super Lcom/miui/gallery/dao/base/Entity;
.source "MediaRemarkInfo.java"


# instance fields
.field private mCloudId:J

.field private mOperationType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/dao/base/Entity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mOperationType:I

    return-void
.end method


# virtual methods
.method public getCloudId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mCloudId:J

    return-wide v0
.end method

.method protected final getTableColumns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/dao/base/TableColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/dao/base/TableColumn;>;"
    const-string v1, "mediaId"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "operationType"

    const-string v2, "INTEGER"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->addColumn(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method protected final onConvertToContents(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 67
    const-string v0, "mediaId"

    iget-wide v2, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mCloudId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string v0, "operationType"

    iget v1, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mOperationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    return-void
.end method

.method protected final onInitFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mCloudId:J

    .line 62
    const-string v0, "operationType"

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mOperationType:I

    .line 63
    return-void
.end method

.method public setCloudId(J)V
    .locals 1
    .param p1, "cloudId"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mCloudId:J

    .line 49
    return-void
.end method

.method public setOperationType(I)V
    .locals 0
    .param p1, "operationType"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/miui/gallery/provider/cloudmanager/MediaRemarkInfo;->mOperationType:I

    .line 41
    return-void
.end method
