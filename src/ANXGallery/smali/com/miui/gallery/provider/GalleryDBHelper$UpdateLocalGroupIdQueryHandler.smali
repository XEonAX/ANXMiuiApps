.class Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateLocalGroupIdQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlbumIdColumnName:Ljava/lang/String;

.field private final mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private final mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "albumIdColumnName"    # Ljava/lang/String;

    .prologue
    .line 2562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2563
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 2564
    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->mTable:Ljava/lang/String;

    .line 2565
    iput-object p3, p0, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->mAlbumIdColumnName:Ljava/lang/String;

    .line 2566
    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2557
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2570
    if-eqz p1, :cond_1

    .line 2571
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2572
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2573
    .local v0, "localId":I
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2575
    .local v1, "serverId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2576
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2577
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "localGroupId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2579
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->mTable:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=?"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/gallery/provider/GalleryDBHelper$UpdateLocalGroupIdQueryHandler;->mAlbumIdColumnName:Ljava/lang/String;

    aput-object v8, v7, v9

    .line 2581
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/String;

    aput-object v1, v6, v9

    .line 2579
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2586
    .end local v0    # "localId":I
    .end local v1    # "serverId":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
