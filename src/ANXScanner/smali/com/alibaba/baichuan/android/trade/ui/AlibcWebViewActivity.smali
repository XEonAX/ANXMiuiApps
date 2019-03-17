.class public Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

.field private static b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    sput-object v0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    return-object v0
.end method

.method public static a(Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;)V
    .locals 0

    sput-object p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    return-void
.end method

.method public static a(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V
    .locals 0

    sput-object p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bc_webview_activity_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;-><init>(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->h:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->h:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->registerListener(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "com_taobao_nb_sdk_web_view_activity"

    invoke-static {p0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getRLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->e()V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "id"

    const-string v1, "com_taobao_nb_sdk_web_view_title_bar_title"

    invoke-static {p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->d:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "com_taobao_nb_sdk_web_view_title_bar_close_button"

    invoke-static {p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->f:Landroid/view/View;

    const-string v0, "id"

    const-string v1, "com_taobao_nb_sdk_web_view_title_bar_back_button"

    invoke-static {p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->g:Landroid/view/View;

    const-string v0, "id"

    const-string v1, "com_taobao_tae_sdk_web_view_title_bar"

    invoke-static {p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/baichuan/android/trade/ui/a;

    invoke-direct {v1, p0}, Lcom/alibaba/baichuan/android/trade/ui/a;-><init>(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/baichuan/android/trade/ui/b;

    invoke-direct {v1, p0}, Lcom/alibaba/baichuan/android/trade/ui/b;-><init>(Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->a()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->setActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;->setWebview(Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContextManager;->setContext(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewProxy;->initAlibcWebViewProxy(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v1}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->l()V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c()V

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->b()V

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->f()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->h:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->getInstance()Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->h:Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageBusManager;->removeListner(Lcom/alibaba/baichuan/trade/common/messagebus/AlibcMessageListner;)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/ui/AlibcWebViewActivity;->f()V

    goto :goto_0
.end method
