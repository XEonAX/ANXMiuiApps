.class Lcom/miui/gallery/data/CityDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CityDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;,
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;,
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;,
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;,
        Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field public static final sCityBoundaryColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/CityDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/CityDatabaseHelper;->sCityBoundaryColumns:Ljava/util/ArrayList;

    .line 60
    sget-object v0, Lcom/miui/gallery/data/CityDatabaseHelper;->sCityBoundaryColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;

    const-string v2, "cityid"

    const-string/jumbo v3, "text"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/miui/gallery/data/CityDatabaseHelper;->sCityBoundaryColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;

    const-string v2, "boundary"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/gallery/data/CityDatabaseHelper;->sCityBoundaryColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;

    const-string v2, "rect"

    const-string v3, "blob"

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryColumn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 207
    invoke-direct {p0}, Lcom/miui/gallery/data/CityDatabaseHelper;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    return-void
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/CityDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDbOpened()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadCityBoundRects()Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/miui/gallery/data/CityDatabaseHelper;->isDbOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-object v3

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cityBoundary"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cityid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "rect"

    aput-object v5, v2, v4

    new-instance v6, Lcom/miui/gallery/data/CityDatabaseHelper$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/data/CityDatabaseHelper$1;-><init>(Lcom/miui/gallery/data/CityDatabaseHelper;)V

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    .local v7, "list":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    move-object v3, v7

    .line 271
    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 213
    const-string v0, "CityDatabaseHelper"

    const-string/jumbo v1, "should not create: city.db is a readonly database"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 224
    const-string v0, "CityDatabaseHelper"

    const-string/jumbo v1, "should not downgrade: city.db is a readonly database"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 218
    const-string v0, "CityDatabaseHelper"

    const-string/jumbo v1, "should not upgrade: city.db is a readonly database"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public queryCityBoundary(Ljava/util/ArrayList;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;"
        }
    .end annotation

    .prologue
    .local p1, "cityIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/miui/gallery/data/CityDatabaseHelper;->isDbOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v7, v4

    .line 320
    :goto_0
    return-object v7

    .line 289
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v9, "where":Ljava/lang/StringBuilder;
    const-string v0, "cityid IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 292
    if-lez v8, :cond_2

    .line 293
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 297
    :cond_3
    const/16 v0, 0x29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/data/CityDatabaseHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cityBoundary"

    sget-object v2, Lcom/miui/gallery/data/CityDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    .line 300
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/data/CityDatabaseHelper$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/data/CityDatabaseHelper$2;-><init>(Lcom/miui/gallery/data/CityDatabaseHelper;)V

    move-object v5, v4

    .line 299
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    .line 320
    .local v7, "boundaryList":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    goto :goto_0
.end method
