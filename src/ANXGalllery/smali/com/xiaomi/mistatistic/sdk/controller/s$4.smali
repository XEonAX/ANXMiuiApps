.class Lcom/xiaomi/mistatistic/sdk/controller/s$4;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/s;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/s;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$4;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/b$a;

    .line 154
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    .line 160
    :cond_1
    return-void
.end method
