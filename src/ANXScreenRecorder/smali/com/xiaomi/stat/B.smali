.class Lcom/xiaomi/stat/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/A;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/stat/B;->a:Lcom/xiaomi/stat/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 55
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/B;->a:Lcom/xiaomi/stat/A;

    invoke-static {v0}, Lcom/xiaomi/stat/A;->a(Lcom/xiaomi/stat/A;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    const-string v1, "pref"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/xiaomi/stat/B;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
