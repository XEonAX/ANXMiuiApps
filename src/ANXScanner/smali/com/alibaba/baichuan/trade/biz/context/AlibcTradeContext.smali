.class public Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;
    }
.end annotation


# instance fields
.field public activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

.field public showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

.field public taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

.field public urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

.field public webview:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->webview:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->showParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;

    iput-object p4, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->taokeParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;

    iput-object p5, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->urlParam:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTrackParam;

    iput-object p6, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->callback:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext$AlibcTradeCallback;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->webview:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->webview:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->activity:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setWebview(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->webview:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
