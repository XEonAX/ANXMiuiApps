.class public Lcn/kuaipan/android/utils/SQLUtility;
.super Ljava/lang/Object;
.source "SQLUtility.java"


# static fields
.field private static final CONFLICT_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ROLLBACK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ABORT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IGNORE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REPLACE"

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuaipan/android/utils/SQLUtility;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columes"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "colume"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getSelectionWithTemplete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "whereTemplete"    # Ljava/lang/String;
    .param p1, "colume"    # [Ljava/lang/String;

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "colume":[Ljava/lang/String;
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
