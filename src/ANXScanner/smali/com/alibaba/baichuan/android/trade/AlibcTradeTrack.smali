.class public Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;
    }
.end annotation


# static fields
.field public static final AlibcTradeEventId_ContentClick:Ljava/lang/String; = "BAICHUAN_CONTENT_CLICK"

.field public static final AlibcTradeEventId_Exposure:Ljava/lang/String; = "BAICHUAN_EXPOSURE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTraceLog(Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;)V
    .locals 3

    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v0, p0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string v1, "scm"

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v1, "pvid"

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v1, "puid"

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v1, "pguid"

    invoke-static {p1}, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->a(Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v1, "page"

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v1, "label"

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/AlibcTradeTrack$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method
