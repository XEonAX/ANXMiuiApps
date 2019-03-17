.class public Lcom/xiaomi/scanner/stats/UsageStatistics$StorageFailure;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/stats/UsageStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageFailure"
.end annotation


# static fields
.field public static final ACCESS_FAILURE:I = 0xc9


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/stats/UsageStatistics;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/stats/UsageStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/stats/UsageStatistics;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$StorageFailure;->this$0:Lcom/xiaomi/scanner/stats/UsageStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
