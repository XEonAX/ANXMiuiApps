.class Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;
.super Ljava/lang/Object;
.source "ClientReportLogicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->writeEvent(Lcom/xiaomi/clientreport/data/EventClientReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;->this$0:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/xiaomi/clientreport/job/WriteJob;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;->this$0:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    invoke-static {v1}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->access$000(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;->this$0:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    invoke-static {v2}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->access$100(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Lcom/xiaomi/clientreport/processor/IEventProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/clientreport/job/WriteJob;-><init>(Landroid/content/Context;Lcom/xiaomi/clientreport/processor/IWrite;)V

    .line 153
    .local v0, "writeJob":Lcom/xiaomi/clientreport/job/WriteJob;
    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager$1;->this$0:Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;

    invoke-static {v1}, Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;->access$200(Lcom/xiaomi/clientreport/manager/ClientReportLogicManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
