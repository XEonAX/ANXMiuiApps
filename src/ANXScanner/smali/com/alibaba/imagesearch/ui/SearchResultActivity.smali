.class public Lcom/alibaba/imagesearch/ui/SearchResultActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/imagesearch/a/a;

.field private g:Landroid/webkit/WebViewClient;

.field private h:Landroid/webkit/WebChromeClient;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$9;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$9;-><init>()V

    sput-object v0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$1;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->i:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Activity isFinishing, showAlertDialog failed "

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Activity isDestroyed, showAlertDialog failed "

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eb2\uff0c\u56fe\u7247\u641c\u7d22\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~~ ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/alibaba/imagesearch/ui/SearchResultActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$8;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlertDialog failed error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/SearchResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v5, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->g:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->h:Landroid/webkit/WebChromeClient;

    sget-object v8, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-object v0, p0

    move-object v7, v6

    invoke-static/range {v0 .. v8}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->finish()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "pageConfig"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v0, "statusBarColor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/imagesearch/utils/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "titleBarColor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Lcom/alibaba/imagesearch/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->f:Lcom/alibaba/imagesearch/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->k:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/alibaba/imagesearch/Pailitao;->inited:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pailitao not inited yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_1
    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->getSettings()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableWhiteStatusBar:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->getSettings()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/imagesearch/PailitaoSettings;->statusBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2010

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->getSettings()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/imagesearch/PailitaoSettings;->statusBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_2
    :goto_0
    const-string v0, "layout"

    const-string v1, "com_alibaba_imagesearch_activity_search_result"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->setContentView(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "id"

    const-string v1, "activity_search_result"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v0, "id"

    const-string v1, "title"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->d:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "com_taobao_tae_sdk_web_view_title_bar"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->c:Landroid/view/View;

    const-string v0, "id"

    const-string v1, "back_button"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/imagesearch/ui/SearchResultActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$2;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "id"

    const-string v1, "close_button"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/imagesearch/ui/SearchResultActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$3;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableRefreshButton:Z

    if-eqz v0, :cond_3

    const-string v0, "id"

    const-string v1, "refresh_button"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/alibaba/imagesearch/ui/SearchResultActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$4;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_6

    const-string v0, "extra_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->h:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$6;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->g:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/alibaba/imagesearch/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/a/c;-><init>(Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->f:Lcom/alibaba/imagesearch/a/a;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->f:Lcom/alibaba/imagesearch/a/a;

    invoke-virtual {v0, p0}, Lcom/alibaba/imagesearch/a/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    invoke-static {p0, v0, v3}, Lcom/alibaba/imagesearch/utils/c;->a(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->h:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result url is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->SRPLogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity$7;-><init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "extra_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    new-instance v4, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v5}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v5, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->g:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->h:Landroid/webkit/WebChromeClient;

    sget-object v8, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-object v0, p0

    move-object v7, v6

    invoke-static/range {v0 .. v8}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PailitaoResult"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "extra_url"

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
