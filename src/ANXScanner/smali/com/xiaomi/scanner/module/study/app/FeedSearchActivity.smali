.class public Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;
.super Lmiui/app/Activity;
.source "FeedSearchActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static final SEARCH_PIC_URL:Ljava/lang/String; = "search_pic_url"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mImgView:Landroid/widget/ImageView;

.field private mPictureBitmap:Landroid/graphics/Bitmap;

.field private mPictureUri:Ljava/lang/String;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSearchLayout:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;

.field private mWrapFeedSearchView:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "FeedSearchActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->searchError(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWrapFeedSearchView:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    return-object v0
.end method

.method static synthetic access$400()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->showNoResult(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mSearchLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->initWebView()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->searchEmpty()V

    return-void
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 123
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030063

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, "titleView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 125
    .local v1, "bar":Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 126
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 131
    invoke-virtual {v1, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 134
    :cond_0
    const v4, 0x7f0d012e

    invoke-virtual {p0, v4}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    iput-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWrapFeedSearchView:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030060

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    .line 136
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWrapFeedSearchView:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    iget-object v5, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->setContent(Landroid/view/View;)V

    .line 137
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWrapFeedSearchView:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-virtual {v4, p0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->setCheckListener(Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView$CheckTopDoneListener;)V

    .line 138
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    const v5, 0x7f0d012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mSearchLayout:Landroid/view/View;

    .line 140
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030062

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "backContent":Landroid/view/View;
    iget-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWrapFeedSearchView:Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    invoke-virtual {v4, v0}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->setBackContent(Landroid/view/View;)V

    .line 142
    const v4, 0x7f0d0132

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mImgView:Landroid/widget/ImageView;

    .line 144
    const v4, 0x7f0d0130

    invoke-virtual {p0, v4}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, "openApp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 146
    new-instance v4, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$2;

    invoke-direct {v4, p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$2;-><init>(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    return-void
.end method

.method private initWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0141

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 158
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWebView:Landroid/webkit/WebView;

    .line 161
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 162
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 163
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 164
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 166
    :cond_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 167
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 168
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 169
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 170
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 171
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 172
    return-void
.end method

.method private onCreateTask()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->initViews()V

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_pic_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureUri:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->startWenbaSearch()V

    .line 69
    return-void
.end method

.method private searchEmpty()V
    .locals 1

    .prologue
    .line 217
    const-string v0, "study_empty_response"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 218
    const v0, 0x7f070056

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->showNoResult(I)V

    .line 219
    return-void
.end method

.method private searchError(II)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMsgId"    # I

    .prologue
    .line 222
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 223
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "error_code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "study_error"

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->showNoResult(I)V

    .line 226
    return-void
.end method

.method private showNoResult(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    const v2, 0x7f0d012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 208
    sget-object v1, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "view is already called so drop this time"

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mContentView:Landroid/view/View;

    const v2, 0x7f0d010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mSearchLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startWenbaSearch()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateTask: invalid picPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    const v0, 0x7f070057

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->showNoResult(I)V

    .line 120
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;-><init>(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 118
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public checkTopDone()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mSearchLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mSearchLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->setVolumeControlStream(I)V

    .line 60
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->onCreateTask()V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->mPictureBitmap:Landroid/graphics/Bitmap;

    .line 193
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 183
    invoke-static {}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordPageEnd()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 177
    const-string v0, "FeedSearchActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 178
    return-void
.end method
