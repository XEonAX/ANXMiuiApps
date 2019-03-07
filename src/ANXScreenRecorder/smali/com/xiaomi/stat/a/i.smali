.class Lcom/xiaomi/stat/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/a/c;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/xiaomi/stat/a/i;->a:Lcom/xiaomi/stat/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/xiaomi/stat/a/i;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 439
    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/xiaomi/stat/a/i;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
