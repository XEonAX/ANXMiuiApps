.class Lcom/xiaomi/stat/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/a/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/xiaomi/stat/a/h;->b:Lcom/xiaomi/stat/a/c;

    iput-object p2, p0, Lcom/xiaomi/stat/a/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xiaomi/stat/a/h;->b:Lcom/xiaomi/stat/a/c;

    invoke-static {v0}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 421
    iget-object v0, p0, Lcom/xiaomi/stat/a/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/I;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-string v1, "sub is null"

    .line 423
    const/4 v0, 0x0

    .line 429
    :goto_0
    const-string v3, "events"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 430
    return-void

    .line 425
    :cond_0
    const-string v1, "sub = ?"

    .line 426
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/stat/a/h;->a:Ljava/lang/String;

    aput-object v4, v0, v3

    goto :goto_0
.end method
