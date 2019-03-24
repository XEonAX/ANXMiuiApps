.class Lcom/miui/internal/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsDatabaseHelper"

.field private static final VERSION:I = 0x2

.field private static final i:Ljava/lang/String; = "analytics.db"

.field private static final j:Ljava/lang/String; = "analytics"

.field private static final k:Ljava/lang/String; = "create table analytics (_id integer primary key autoincrement,_time datetime,_status integer,package text,type integer,event_id text,param text,time text,value text)"

.field private static final l:Ljava/lang/String; = "insert into analytics values (null, datetime(\'now\'), 0, ?, ?, ?, ?, ?, ?)"

.field private static final m:Ljava/lang/String; = "delete from analytics where _time < datetime(\'now\', \'-7 days\')"

.field private static final n:Ljava/lang/String; = "update analytics set _status = 0"

.field private static final o:Ljava/lang/String; = "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\'))))"

.field private static final p:Ljava/lang/String; = "delete from analytics where _status = 1"

.field private static final q:Ljava/lang/String; = "select * from analytics where _status = 1"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/analytics/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private r:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/miui/internal/analytics/DatabaseHelper$2;

    invoke-direct {v0}, Lcom/miui/internal/analytics/DatabaseHelper$2;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/a;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v6, Lcom/miui/internal/analytics/DatabaseHelper$1;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "analytics.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/DatabaseHelper$1;-><init>(Lcom/miui/internal/analytics/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v6, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/DatabaseHelper$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/internal/analytics/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/miui/internal/analytics/a;
    .locals 1

    .line 73
    sget-object v0, Lcom/miui/internal/analytics/a;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 89
    nop

    .line 91
    nop

    .line 93
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 96
    const-string v2, "delete from analytics where _time < datetime(\'now\', \'-7 days\')"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v2, "update analytics set _status = 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v2, "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\'))))"

    .line 100
    if-eqz p1, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\')))) and ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_0
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string p1, "select * from analytics where _status = 1"

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    move-object v7, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 108
    :catch_1
    move-exception p1

    move-object v7, v1

    move-object v1, v0

    :goto_0
    move-object v0, v7

    goto :goto_1

    .line 112
    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_3

    .line 108
    :catch_2
    move-exception p1

    move-object v1, v0

    .line 110
    :goto_1
    :try_start_3
    const-string v2, "AnalyticsDatabaseHelper"

    const-string v3, "can\'t read database:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    :cond_1
    move-object p1, v1

    :cond_2
    :goto_2
    return-object p1

    .line 112
    :goto_3
    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    const-string v3, "insert into analytics values (null, datetime(\'now\'), 0, ?, ?, ?, ?, ?, ?)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const/4 p1, 0x3

    aput-object p4, v4, p1

    const/4 p1, 0x4

    aput-object p5, v4, p1

    const/4 p1, 0x5

    aput-object p6, v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 84
    const-string p2, "AnalyticsDatabaseHelper"

    const-string p3, "database:%s is not writable!"

    new-array p4, v0, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p5}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    return-void
.end method

.method public b()V
    .locals 6

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    const-string v1, "delete from analytics where _status = 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "AnalyticsDatabaseHelper"

    const-string v2, "can\'t delete from database:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/analytics/a;->r:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_0
    return-void
.end method
