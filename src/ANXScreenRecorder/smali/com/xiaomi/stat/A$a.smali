.class Lcom/xiaomi/stat/A$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "mistat_pf"

.field public static final b:Ljava/lang/String; = "pref"

.field public static final c:Ljava/lang/String; = "pref_key"

.field public static final d:Ljava/lang/String; = "pref_value"

.field private static final e:I = 0x1

.field private static final f:Ljava/lang/String; = "_id"

.field private static final g:Ljava/lang/String; = "CREATE TABLE pref (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pref_key TEXT,pref_value TEXT)"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 298
    const-string v0, "mistat_pf"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 299
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 303
    const-string v0, "CREATE TABLE pref (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pref_key TEXT,pref_value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 308
    return-void
.end method
