.class Lcom/xiaomi/stats/StatsHandler$Holder;
.super Ljava/lang/Object;
.source "StatsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stats/StatsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final sStatsHandler:Lcom/xiaomi/stats/StatsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/xiaomi/stats/StatsHandler;

    invoke-direct {v0}, Lcom/xiaomi/stats/StatsHandler;-><init>()V

    sput-object v0, Lcom/xiaomi/stats/StatsHandler$Holder;->sStatsHandler:Lcom/xiaomi/stats/StatsHandler;

    return-void
.end method
