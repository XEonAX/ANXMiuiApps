.class public Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GeoFenceDatabaseHelper.java"


# static fields
.field private static final GEOFENCING_Columns:[Ljava/lang/String;

.field private static final GEOFENCING_MESSAGE_Columns:[Ljava/lang/String;

.field private static sInstance:Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public final mDatabaseLock:Ljava/lang/Object;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v4

    const-string v1, "appId"

    aput-object v1, v0, v5

    const-string v1, "INTEGER NOT NULL"

    aput-object v1, v0, v6

    const-string v1, "package_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "center_longtitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "center_lantitude"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "circle_radius"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "polygon_point"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "coordinate_provider"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "current_status"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_Columns:[Ljava/lang/String;

    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "message_id"

    aput-object v1, v0, v3

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v4

    const-string v1, "geo_id"

    aput-object v1, v0, v5

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BLOB NOT NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deadline"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_MESSAGE_Columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, "geofencing.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    const-string v0, "GeoFenceDatabaseHelper."

    iput-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mDatabaseLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    return-void
.end method

.method private createGeoFencingTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE geofence(id TEXT PRIMARY KEY ,"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_Columns:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 86
    if-eqz v2, :cond_0

    .line 87
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    sget-object v3, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_Columns:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_Columns:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 91
    :cond_1
    const-string v3, ");"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createGeoMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE geoMessage("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_MESSAGE_Columns:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 112
    if-eqz v2, :cond_0

    .line 113
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    sget-object v3, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_MESSAGE_Columns:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->GEOFENCING_Columns:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 117
    :cond_1
    const-string v3, ",PRIMARY KEY(message_id,geo_id));"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->sInstance:Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->sInstance:Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->sInstance:Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->sInstance:Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mDatabaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->createGeoFencingTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->createGeoMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    const-string v1, "GeoFenceDatabaseHelper. create tables"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 63
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 126
    return-void
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/GeoFenceDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
