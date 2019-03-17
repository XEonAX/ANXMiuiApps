.class final Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;
.super Ljava/lang/Object;
.source "MiStatInterface.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enableNetMonitor:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;->val$enableNetMonitor:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/content/Context;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Z)V

    .line 122
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;->val$enableNetMonitor:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->enableAutoRecord()Z

    .line 125
    :cond_0
    return-void
.end method
