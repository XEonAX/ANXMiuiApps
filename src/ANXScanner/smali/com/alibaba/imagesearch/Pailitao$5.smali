.class final Lcom/alibaba/imagesearch/Pailitao$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/Pailitao;->viewAuctionDetails(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    const-string v0, "onTradeFailure"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeResult;)V
    .locals 1

    const-string v0, "onTradeSuccess"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    return-void
.end method
