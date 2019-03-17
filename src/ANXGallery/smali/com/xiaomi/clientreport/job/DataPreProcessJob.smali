.class public Lcom/xiaomi/clientreport/job/DataPreProcessJob;
.super Ljava/lang/Object;
.source "DataPreProcessJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mClientReport:Lcom/xiaomi/clientreport/data/BaseClientReport;

.field private mContext:Landroid/content/Context;

.field private mWriter:Lcom/xiaomi/clientreport/processor/IWrite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/clientreport/data/BaseClientReport;Lcom/xiaomi/clientreport/processor/IWrite;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;
    .param p3, "writer"    # Lcom/xiaomi/clientreport/processor/IWrite;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;->mClientReport:Lcom/xiaomi/clientreport/data/BaseClientReport;

    .line 22
    iput-object p3, p0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;->mWriter:Lcom/xiaomi/clientreport/processor/IWrite;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;->mWriter:Lcom/xiaomi/clientreport/processor/IWrite;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;->mWriter:Lcom/xiaomi/clientreport/processor/IWrite;

    iget-object v1, p0, Lcom/xiaomi/clientreport/job/DataPreProcessJob;->mClientReport:Lcom/xiaomi/clientreport/data/BaseClientReport;

    invoke-interface {v0, v1}, Lcom/xiaomi/clientreport/processor/IWrite;->preProcess(Lcom/xiaomi/clientreport/data/BaseClientReport;)V

    .line 29
    :cond_0
    return-void
.end method
