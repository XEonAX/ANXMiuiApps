.class Lcom/xiaomi/mistatistic/sdk/controller/p$2;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
