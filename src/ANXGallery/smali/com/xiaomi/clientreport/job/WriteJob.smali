.class public Lcom/xiaomi/clientreport/job/WriteJob;
.super Ljava/lang/Object;
.source "WriteJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWriter:Lcom/xiaomi/clientreport/processor/IWrite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/clientreport/processor/IWrite;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Lcom/xiaomi/clientreport/processor/IWrite;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaomi/clientreport/job/WriteJob;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/clientreport/job/WriteJob;->mWriter:Lcom/xiaomi/clientreport/processor/IWrite;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/WriteJob;->mWriter:Lcom/xiaomi/clientreport/processor/IWrite;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/xiaomi/clientreport/job/WriteJob;->mWriter:Lcom/xiaomi/clientreport/processor/IWrite;

    invoke-interface {v1}, Lcom/xiaomi/clientreport/processor/IWrite;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
