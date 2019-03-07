.class public Lcom/xiaomi/stat/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String; = "mistat_ev"

.field private static final b:I = 0x1

.field private static final c:Ljava/lang/String; = "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,e TEXT,eg TEXT,tp TEXT,ps TEXT,ts INTEGER,sub TEXT,is_am INTEGER,priority INTEGER)"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 26
    const-string v0, "mistat_ev"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,e TEXT,eg TEXT,tp TEXT,ps TEXT,ts INTEGER,sub TEXT,is_am INTEGER,priority INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 36
    return-void
.end method
