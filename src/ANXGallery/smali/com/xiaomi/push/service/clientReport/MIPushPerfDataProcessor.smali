.class public Lcom/xiaomi/push/service/clientReport/MIPushPerfDataProcessor;
.super Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;
.source "MIPushPerfDataProcessor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public send(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaomi/push/service/clientReport/MIPushPerfDataProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->sendData(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    return-void
.end method
