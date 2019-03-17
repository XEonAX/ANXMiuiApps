.class Lcom/xiaomi/mistatistic/sdk/controller/s$3;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/s;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/s;IJ)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 113
    const-string v0, "UPE"

    const-string v1, "Set new policy, policy: %d, value: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Lcom/xiaomi/mistatistic/sdk/controller/s;I)I

    .line 115
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "upload_policy"

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->a:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->h(Lcom/xiaomi/mistatistic/sdk/controller/s;)I

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->b:J

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Lcom/xiaomi/mistatistic/sdk/controller/s;J)J

    .line 119
    const-string/jumbo v1, "upload_interval"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/s;->i(Lcom/xiaomi/mistatistic/sdk/controller/s;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 120
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->j(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->h(Lcom/xiaomi/mistatistic/sdk/controller/s;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 122
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->b:J

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(Lcom/xiaomi/mistatistic/sdk/controller/s;J)J

    .line 123
    const-string/jumbo v1, "upload_size"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/s;->k(Lcom/xiaomi/mistatistic/sdk/controller/s;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 124
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/s;->n(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    goto :goto_0
.end method
