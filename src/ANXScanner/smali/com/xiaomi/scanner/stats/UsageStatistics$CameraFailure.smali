.class public Lcom/xiaomi/scanner/stats/UsageStatistics$CameraFailure;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/stats/UsageStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraFailure"
.end annotation


# static fields
.field public static final API_RUNTIME_EXCEPTION:I = 0x68

.field public static final API_TIMEOUT:I = 0x69

.field public static final OPEN_FAILURE:I = 0x66

.field public static final RECONNECT_FAILURE:I = 0x67

.field public static final SECURITY:I = 0x65

.field public static final UNKNOWN_REASON:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/stats/UsageStatistics;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/stats/UsageStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/stats/UsageStatistics;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/xiaomi/scanner/stats/UsageStatistics$CameraFailure;->this$0:Lcom/xiaomi/scanner/stats/UsageStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
