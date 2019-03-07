.class Lcom/xiaomi/stat/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/e;IIJJ)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/xiaomi/stat/o;->e:Lcom/xiaomi/stat/e;

    iput p2, p0, Lcom/xiaomi/stat/o;->a:I

    iput p3, p0, Lcom/xiaomi/stat/o;->b:I

    iput-wide p4, p0, Lcom/xiaomi/stat/o;->c:J

    iput-wide p6, p0, Lcom/xiaomi/stat/o;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 759
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/o;->e:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v6, p0, Lcom/xiaomi/stat/o;->e:Lcom/xiaomi/stat/e;

    iget v0, p0, Lcom/xiaomi/stat/o;->a:I

    iget v1, p0, Lcom/xiaomi/stat/o;->b:I

    iget-wide v2, p0, Lcom/xiaomi/stat/o;->c:J

    iget-wide v4, p0, Lcom/xiaomi/stat/o;->d:J

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/stat/a/l;->a(IIJJ)Lcom/xiaomi/stat/a/l;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    goto :goto_0
.end method
