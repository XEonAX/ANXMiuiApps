.class final Lcom/xiaomi/scanner/module/PailitaoManager$1;
.super Ljava/lang/Object;
.source "PailitaoManager.java"

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/PailitaoManager;->showMaPage(Landroid/app/Activity;Lcom/taobao/ma/common/result/MaResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/xiaomi/scanner/module/PailitaoManager;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "show page fail"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    const-string v0, "barcode_goto_taobao_fail_count"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;)V
    .locals 2
    .param p1, "tradeResult"    # Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;

    .prologue
    .line 80
    invoke-static {}, Lcom/xiaomi/scanner/module/PailitaoManager;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "show page success"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    const-string v0, "barcode_goto_taobao_success_count"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 82
    return-void
.end method
