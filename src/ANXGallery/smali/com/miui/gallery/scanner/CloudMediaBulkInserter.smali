.class public Lcom/miui/gallery/scanner/CloudMediaBulkInserter;
.super Lcom/miui/gallery/scanner/MediaBulkInserter;
.source "CloudMediaBulkInserter.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mWhereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "localFile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dateModified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "triggerSync"    # Z

    .prologue
    .line 37
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "URI_PARAM_REQUEST_SYNC"

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/miui/gallery/scanner/MediaBulkInserter;-><init>(Landroid/net/Uri;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereClause:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mBulkCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereArgs:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public flush(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Lcom/miui/gallery/scanner/MediaBulkInserter;->flush(Landroid/content/Context;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 72
    .local v19, "size":I
    if-lez v19, :cond_2

    .line 73
    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    .line 74
    .local v6, "foo":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "foo":[Ljava/lang/String;
    check-cast v6, [Ljava/lang/String;

    .line 75
    .restart local v6    # "foo":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 77
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localFile IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereClause:Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "dateModified DESC "

    .line 77
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 83
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 84
    const/16 v18, 0x0

    .line 85
    .local v18, "index":I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    move-object/from16 v17, v0

    .line 86
    .local v17, "entries":[Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v7, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;

    const/4 v2, 0x1

    .line 88
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x0

    .line 89
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x2

    .line 90
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x3

    .line 91
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-direct/range {v7 .. v14}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;-><init>(JJLjava/lang/String;J)V

    aput-object v7, v17, v18

    .line 86
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 94
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->insertToRecentDB(Landroid/content/Context;[Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v17    # "entries":[Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$RecentMediaEntry;
    .end local v18    # "index":I
    :cond_1
    invoke-static {v15}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 102
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereClause:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 105
    .end local v6    # "foo":[Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 96
    .restart local v6    # "foo":[Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 97
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CloudMediaBulkInserter"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-static {v15}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v15}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public insert(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    if-eqz p2, :cond_1

    .line 56
    const-string v1, "localFile"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/scanner/CloudMediaBulkInserter;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/scanner/MediaBulkInserter;->insert(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 66
    return-void
.end method
