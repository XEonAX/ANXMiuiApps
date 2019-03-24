.class public Lmiui/vip/VipWebClient;
.super Landroid/webkit/WebViewClient;
.source "VipWebClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/VipWebClient$UrlParameters;,
        Lmiui/vip/VipWebClient$AccountInfo;
    }
.end annotation


# static fields
.field static final ACCOUNT_AVATAR:Ljava/lang/String; = "account_avatar/"

.field static final ACCOUNT_CALLBACK:Ljava/lang/String; = "accountCallback"

.field static final ACCOUNT_FIELD:Ljava/lang/String; = "account"

.field static final ACHIEVEMENT_CALLBACK:Ljava/lang/String; = "achievementCallback"

.field static final ARRAY_BEGIN:Ljava/lang/String; = "["

.field static final ARRAY_END:Ljava/lang/String; = "]"

.field static final COMMA:Ljava/lang/String; = ","

.field static final CONNECT_SERVICE:Ljava/lang/String; = "connect_service"

.field static final DEFAULT_AVATAR:Ljava/lang/String; = "http://request_vip_icon/default_photo"

.field static final DISPLAY_ACHIEVEMENTS_COUNT:I = 0x4

.field static final JS_ACCOUNT:Ljava/lang/String; = "{id:%s, name:\'%s\', avatarUrl:\'%s\'}"

.field static final JS_ACHIEVEMENT:Ljava/lang/String; = "{id:%d, name:\'%s\', url:\'%s\', isOwned:%s}"

.field static final JS_INIT:Ljava/lang/String; = "if (!window.XiaomiVipClient) {   window.XiaomiVipClient = {ICON_ACHIEVEMENT_LOCK: \'http://request_vip_icon/achievement_lock\',vipUser: %s,achievements: %s,account: %s,setVipInfoCallback: function(callback) {   this.vipCallback = callback;},setAchievementCallback: function(callback) {   this.achievementCallback = callback;},setAccountCallback: function(callback) {   this.accountCallback = callback;},openVipTaskView: function() {   this.loadUrl(\'http://vip_view/vip_view_task\');},openVipLevelView: function() {   this.loadUrl(\'http://vip_view/vip_view_level\');},openVipAchievementView: function() {   this.loadUrl(\'http://vip_view/vip_view_achievements\');},openUserDetailView: function() {   this.loadUrl(\'http://vip_view/user_detail\');},loadUrl: function(url) {    var xhr = new XMLHttpRequest();    xhr.open(\'GET\', url, true);    xhr.send();}};} else {   console.log(\'XiaomiVipCient is already initialized\');}XiaomiVipClient.loadUrl(\'http://vip_view/connect_service?refresh=\' + (!XiaomiVipClient.vipUser));console.log(\'initialization of XiaomiVipCient is completed\');"

.field static final JS_UPDATE:Ljava/lang/String; = "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

.field static final JS_USER:Ljava/lang/String; = "{id:%d, level:%d, badgeUrl:\'%s\'}"

.field static final JS_VIP_CLIENT:Ljava/lang/String; = "window.XiaomiVipClient = {ICON_ACHIEVEMENT_LOCK: \'http://request_vip_icon/achievement_lock\',vipUser: %s,achievements: %s,account: %s,setVipInfoCallback: function(callback) {   this.vipCallback = callback;},setAchievementCallback: function(callback) {   this.achievementCallback = callback;},setAccountCallback: function(callback) {   this.accountCallback = callback;},openVipTaskView: function() {   this.loadUrl(\'http://vip_view/vip_view_task\');},openVipLevelView: function() {   this.loadUrl(\'http://vip_view/vip_view_level\');},openVipAchievementView: function() {   this.loadUrl(\'http://vip_view/vip_view_achievements\');},openUserDetailView: function() {   this.loadUrl(\'http://vip_view/user_detail\');},loadUrl: function(url) {    var xhr = new XMLHttpRequest();    xhr.open(\'GET\', url, true);    xhr.send();}};"

.field static final NULL_STR:Ljava/lang/String; = "null"

.field static final PARAM_REFRESH:Ljava/lang/String; = "refresh"

.field static final Q_MARK:Ljava/lang/String; = "?"

.field static final SCHEMA_VIP_ICON:Ljava/lang/String; = "http://request_vip_icon/"

.field static final SCHEMA_VIP_VIEW:Ljava/lang/String; = "http://vip_view/"

.field static final VALUE_TRUE:Ljava/lang/String; = "true"

.field static final VIEW_USER_DETAIL:Ljava/lang/String; = "user_detail"

.field static final VIP_ACHIEVEMENTS_FIELD:Ljava/lang/String; = "achievements"

.field static final VIP_CALLBACK:Ljava/lang/String; = "vipCallback"

.field static final VIP_USER_FIELD:Ljava/lang/String; = "vipUser"

.field static final VIP_VIEW_ACHIEVEMENTS:Ljava/lang/String; = "vip_view_achievements"

.field static final VIP_VIEW_LEVEL:Ljava/lang/String; = "vip_view_level"

.field static final VIP_VIEW_TASK:Ljava/lang/String; = "vip_view_task"


# instance fields
.field mAccount:Lmiui/vip/VipWebClient$AccountInfo;

.field mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

.field volatile mCachedAchievements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;"
        }
    .end annotation
.end field

.field final mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field volatile mStrAccount:Ljava/lang/String;

.field volatile mStrUser:Ljava/lang/String;

.field volatile mUser:Lmiui/vip/VipUserInfo;

.field mVipCallback:Lmiui/vip/QueryCallback;

.field mWebView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    new-instance v0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    new-instance v1, Lmiui/vip/VipWebClient$1;

    invoke-direct {v1, p0}, Lmiui/vip/VipWebClient$1;-><init>(Lmiui/vip/VipWebClient;)V

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;-><init>(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    .line 169
    new-instance v0, Lmiui/vip/VipWebClient$2;

    invoke-direct {v0, p0}, Lmiui/vip/VipWebClient$2;-><init>(Lmiui/vip/VipWebClient;)V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lmiui/vip/VipWebClient$3;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput v3, v1, v2

    invoke-direct {v0, p0, v1}, Lmiui/vip/VipWebClient$3;-><init>(Lmiui/vip/VipWebClient;[I)V

    iput-object v0, p0, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    return-void
.end method

.method static synthetic access$000(Lmiui/vip/VipWebClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/vip/VipWebClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->getAccountAvatarWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/vip/VipWebClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipWebClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lmiui/vip/VipWebClient;->invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipWebClient;
    .param p1, "x1"    # Lmiui/vip/VipUserInfo;
    .param p2, "x2"    # Ljava/util/List;

    .line 31
    invoke-direct {p0, p1, p2}, Lmiui/vip/VipWebClient;->batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/vip/VipWebClient;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipWebClient;

    .line 31
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->notifyAccountUpdate()V

    return-void
.end method

.method static synthetic access$400(Lmiui/vip/VipWebClient;Lmiui/vip/VipUserInfo;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipWebClient;
    .param p1, "x1"    # Lmiui/vip/VipUserInfo;

    .line 31
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/vip/VipWebClient;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipWebClient;
    .param p1, "x1"    # Ljava/util/List;

    .line 31
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->notifyAchievementsUpdate(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/vip/VipWebClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/vip/VipWebClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->doLoadJs(Ljava/lang/String;)V

    return-void
.end method

.method private achievementToJs(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 553
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "sbr":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 555
    .local v1, "initLength":I
    if-eqz p1, :cond_1

    .line 556
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 557
    .local v2, "count":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 558
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/vip/VipAchievement;

    .line 559
    .local v6, "achievement":Lmiui/vip/VipAchievement;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v1, :cond_0

    .line 560
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_0
    const-string v7, "{id:%d, name:\'%s\', url:\'%s\', isOwned:%s}"

    new-array v8, v3, [Ljava/lang/Object;

    iget-wide v9, v6, Lmiui/vip/VipAchievement;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v6, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    iget-object v10, v6, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-boolean v10, v6, Lmiui/vip/VipAchievement;->isOwned:Z

    .line 563
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 562
    invoke-direct {p0, v7, v8}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .end local v6    # "achievement":Lmiui/vip/VipAchievement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 566
    .end local v2    # "count":I
    .end local v5    # "i":I
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "user"    # Lmiui/vip/VipUserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/vip/VipUserInfo;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p2, "achievementList":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V

    .line 241
    invoke-direct {p0, p2}, Lmiui/vip/VipWebClient;->notifyAchievementsUpdate(Ljava/util/List;)V

    .line 242
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->notifyAccountUpdate()V

    .line 243
    return-void
.end method

.method private connectService()Z
    .locals 5

    .line 393
    const-string v0, "VipWebClient.connectService begin, mStrUser = %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/vip/VipService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    const-string v0, "VipWebClient.connectService, no need to connect"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return v4

    .line 395
    :cond_1
    :goto_0
    const-string v0, "VipWebClient.connectService, do connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v2, p0, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v0, v2}, Lmiui/vip/VipService;->connect(Lmiui/vip/QueryCallback;)V

    .line 397
    return v1
.end method

.method private doLoadJs(Ljava/lang/String;)V
    .locals 3
    .param p1, "js"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 420
    .local v0, "view":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 423
    :cond_0
    iget-object v1, p0, Lmiui/vip/VipWebClient;->mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 588
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountAvatarWebUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "iconName"    # Ljava/lang/String;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://request_vip_icon/account_avatar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActionFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 571
    const-string v0, "vip_view_level"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "com.xiaomi.vip.action.VIP_LEVEL_LIST"

    return-object v0

    .line 573
    :cond_0
    const-string v0, "vip_view_task"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const-string v0, "com.xiaomi.vip.action.VIP_TASK_LIST"

    return-object v0

    .line 575
    :cond_1
    const-string v0, "vip_view_achievements"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    const-string v0, "com.xiaomi.vip.action.VIP_ACHIEVEMENT_LIST"

    return-object v0

    .line 577
    :cond_2
    const-string v0, "user_detail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    const-string v0, "com.xiaomi.account.action.USER_INFO_DETAIL"

    return-object v0

    .line 580
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 584
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private initWithData(Landroid/webkit/WebView;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 309
    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 310
    .local v0, "oldView":Landroid/webkit/WebView;
    if-eq p1, v0, :cond_0

    .line 311
    iget-object v1, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    :cond_0
    const-string v1, "VipWebClient.initWithData, init XiaomiVipClient"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    const-string v1, "if (!window.XiaomiVipClient) {   window.XiaomiVipClient = {ICON_ACHIEVEMENT_LOCK: \'http://request_vip_icon/achievement_lock\',vipUser: %s,achievements: %s,account: %s,setVipInfoCallback: function(callback) {   this.vipCallback = callback;},setAchievementCallback: function(callback) {   this.achievementCallback = callback;},setAccountCallback: function(callback) {   this.accountCallback = callback;},openVipTaskView: function() {   this.loadUrl(\'http://vip_view/vip_view_task\');},openVipLevelView: function() {   this.loadUrl(\'http://vip_view/vip_view_level\');},openVipAchievementView: function() {   this.loadUrl(\'http://vip_view/vip_view_achievements\');},openUserDetailView: function() {   this.loadUrl(\'http://vip_view/user_detail\');},loadUrl: function(url) {    var xhr = new XMLHttpRequest();    xhr.open(\'GET\', url, true);    xhr.send();}};} else {   console.log(\'XiaomiVipCient is already initialized\');}XiaomiVipClient.loadUrl(\'http://vip_view/connect_service?refresh=\' + (!XiaomiVipClient.vipUser));console.log(\'initialization of XiaomiVipCient is completed\');"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    :goto_0
    aput-object v4, v3, v2

    const/4 v2, 0x1

    .line 315
    iget-object v4, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    if-nez v4, :cond_2

    const-string v4, "null"

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-direct {p0, v4}, Lmiui/vip/VipWebClient;->achievementToJs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v3, v2

    const/4 v2, 0x2

    .line 316
    iget-object v4, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "null"

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    :goto_2
    aput-object v4, v3, v2

    .line 314
    invoke-direct {p0, v1, v3}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "js":Ljava/lang/String;
    invoke-direct {p0, v1}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private interceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 321
    const-string v0, "interceptRequest, url = %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const-string v0, "http://request_vip_icon/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    const-string v0, "http://request_vip_icon/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "iconName":Ljava/lang/String;
    const-string v2, "account_avatar/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->loadAccountAvatar()Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    goto :goto_1

    .line 328
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v2, Lcom/miui/internal/vip/VipResInputStream;

    iget-object v4, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    iget v4, v4, Lmiui/vip/VipUserInfo;->level:I

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-direct {v2, v0, v4}, Lcom/miui/internal/vip/VipResInputStream;-><init>(Ljava/lang/String;I)V

    .line 330
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_1
    const-string v4, "VipWebClient.shouldInterceptRequest, vip_icon, is = %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v4, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    if-eqz v2, :cond_2

    .line 332
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v3, "image/*"

    const-string v4, "base64"

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1

    .line 334
    .end local v0    # "iconName":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_3

    :cond_3
    const-string v0, "http://vip_view/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 335
    invoke-direct {p0, p2}, Lmiui/vip/VipWebClient;->parseUrl(Ljava/lang/String;)Lmiui/vip/VipWebClient$UrlParameters;

    move-result-object v0

    .line 336
    .local v0, "cmd":Lmiui/vip/VipWebClient$UrlParameters;
    const-string v2, "VipWebClient.interceptRequest, cmd = %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    const-string v2, "connect_service"

    iget-object v4, v0, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 338
    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lmiui/vip/VipWebClient;->isValueTrue(Lmiui/vip/VipWebClient$UrlParameters;Ljava/lang/String;)Z

    move-result v2

    .line 339
    .local v2, "needRefresh":Z
    const-string v4, "VipWebClient.interceptRequest, needRefresh is %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    if-eqz v2, :cond_5

    .line 341
    const-string v4, "VipWebClient.interceptRequest, do batchNotify, mUser = %s, mCachedAchievements.size = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    aput-object v6, v5, v3

    .line 342
    iget-object v3, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, "-1"

    :goto_2
    aput-object v3, v5, v1

    .line 341
    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v1, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lmiui/vip/VipWebClient;->batchNotify(Lmiui/vip/VipUserInfo;Ljava/util/List;)V

    .line 345
    .end local v2    # "needRefresh":Z
    :cond_5
    goto :goto_3

    .line 346
    :cond_6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lmiui/vip/VipWebClient;->startAccountActivity(Landroid/content/Context;Lmiui/vip/VipWebClient$UrlParameters;)V

    .line 349
    .end local v0    # "cmd":Lmiui/vip/VipWebClient$UrlParameters;
    :cond_7
    :goto_3
    invoke-virtual {p0, p2}, Lmiui/vip/VipWebClient;->shouldIntercept(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    return-object v0
.end method

.method private invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "avatarUrl"    # Ljava/lang/String;

    .line 540
    const-string v0, "{id:%s, name:\'%s\', avatarUrl:\'%s\'}"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v5, 0x2

    aput-object p3, v2, v5

    invoke-direct {p0, v0, v2}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "js":Ljava/lang/String;
    const-string v2, "invokeJsAccountUpdate, mStrAccount = %s, js = %s"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    invoke-static {v2, v6}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iput-object v0, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    .line 544
    const-string v2, "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "accountCallback"

    aput-object v6, v1, v3

    const-string v3, "account"

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    invoke-direct {p0, v2, v1}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    .line 546
    :cond_0
    return-void
.end method

.method private isSameAchievementList(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)Z"
        }
    .end annotation

    .line 457
    .local p1, "left":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    .local p2, "right":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 458
    return v0

    .line 460
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_2

    .line 463
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 464
    return v1

    .line 466
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 467
    .local v2, "count":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 468
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/vip/VipAchievement;

    .line 469
    .local v4, "la":Lmiui/vip/VipAchievement;
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/vip/VipAchievement;

    .line 470
    .local v5, "ra":Lmiui/vip/VipAchievement;
    iget-wide v6, v4, Lmiui/vip/VipAchievement;->id:J

    iget-wide v8, v5, Lmiui/vip/VipAchievement;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget-boolean v6, v4, Lmiui/vip/VipAchievement;->isOwned:Z

    iget-boolean v7, v5, Lmiui/vip/VipAchievement;->isOwned:Z

    if-ne v6, v7, :cond_4

    iget-object v6, v4, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    iget-object v7, v5, Lmiui/vip/VipAchievement;->name:Ljava/lang/String;

    .line 471
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v4, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    .line 472
    invoke-static {v6}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lmiui/vip/VipAchievement;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 467
    .end local v4    # "la":Lmiui/vip/VipAchievement;
    .end local v5    # "ra":Lmiui/vip/VipAchievement;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .restart local v4    # "la":Lmiui/vip/VipAchievement;
    .restart local v5    # "ra":Lmiui/vip/VipAchievement;
    :cond_4
    :goto_1
    return v1

    .line 476
    .end local v3    # "i":I
    .end local v4    # "la":Lmiui/vip/VipAchievement;
    .end local v5    # "ra":Lmiui/vip/VipAchievement;
    :cond_5
    return v0

    .line 461
    .end local v2    # "count":I
    :cond_6
    :goto_2
    return v1
.end method

.method private isValueTrue(Lmiui/vip/VipWebClient$UrlParameters;Ljava/lang/String;)Z
    .locals 2
    .param p1, "up"    # Lmiui/vip/VipWebClient$UrlParameters;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 372
    const-string v0, "true"

    iget-object v1, p1, Lmiui/vip/VipWebClient$UrlParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadAccountAvatar()Ljava/io/InputStream;
    .locals 4

    .line 520
    const-string v0, ""

    .line 521
    .local v0, "url":Ljava/lang/String;
    const-string v1, ""

    .line 522
    .local v1, "dirName":Ljava/lang/String;
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v2, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarUrl:Ljava/lang/String;

    move-object v0, v2

    .line 525
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v2, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarFileName:Ljava/lang/String;

    move-object v1, v2

    .line 527
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/vip/VipWebClient;->mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    invoke-static {v2, v0, v1, v3}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImageFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 529
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 530
    invoke-static {v2}, Lcom/miui/internal/vip/utils/Utils;->createPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/vip/utils/Utils;->bitmapToStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 532
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 527
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private loadJs(Ljava/lang/String;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/vip/VipWebClient;->mLoadingJsSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->doLoadJs(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Lmiui/vip/VipWebClient$4;

    invoke-direct {v0, p0, p1}, Lmiui/vip/VipWebClient$4;-><init>(Lmiui/vip/VipWebClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/vip/utils/RunnableHelper;->runInUIThread(Ljava/lang/Runnable;)V

    .line 416
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyAccountUpdate()V
    .locals 9

    .line 480
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 481
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 482
    .local v1, "am":Landroid/accounts/AccountManager;
    if-eqz v0, :cond_6

    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    if-nez v2, :cond_0

    .line 486
    new-instance v2, Lmiui/vip/VipWebClient$AccountInfo;

    invoke-direct {v2}, Lmiui/vip/VipWebClient$AccountInfo;-><init>()V

    iput-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    .line 488
    :cond_0
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->id:Ljava/lang/String;

    .line 489
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    const-string v3, "acc_user_name"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "userName":Ljava/lang/String;
    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->userName:Ljava/lang/String;

    .line 490
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    const-string v3, "acc_avatar_url"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .local v5, "avatarUrl":Ljava/lang/String;
    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarUrl:Ljava/lang/String;

    .line 491
    iget-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    const-string v3, "acc_avatar_file_name"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .local v6, "avatarFileName":Ljava/lang/String;
    iput-object v3, v2, Lmiui/vip/VipWebClient$AccountInfo;->avatarFileName:Ljava/lang/String;

    .line 492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    const-string v2, ""

    .line 495
    .local v2, "iconWebUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    goto :goto_0

    .line 498
    :cond_1
    invoke-static {v5}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "iconName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 500
    goto :goto_0

    .line 502
    :cond_2
    invoke-direct {p0, v3}, Lmiui/vip/VipWebClient;->getAccountAvatarWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .end local v3    # "iconName":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 505
    .local v3, "isWebUrlEmpty":Z
    if-nez v3, :cond_3

    .line 506
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lmiui/vip/VipWebClient;->mAvatarListener:Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;

    invoke-static {v7, v5, v6, v8}, Lcom/miui/internal/vip/utils/ImageDownloader;->loadImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;)V

    .line 508
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 509
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v8, "http://request_vip_icon/default_photo"

    goto :goto_1

    :cond_4
    move-object v8, v2

    :goto_1
    invoke-direct {p0, v7, v4, v8}, Lmiui/vip/VipWebClient;->invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v2    # "iconWebUrl":Ljava/lang/String;
    .end local v3    # "isWebUrlEmpty":Z
    .end local v4    # "userName":Ljava/lang/String;
    .end local v5    # "avatarUrl":Ljava/lang/String;
    .end local v6    # "avatarFileName":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 492
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 512
    :cond_6
    monitor-enter p0

    .line 513
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    .line 514
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    const-string v2, "0"

    const-string v3, ""

    const-string v4, "http://request_vip_icon/default_photo"

    invoke-direct {p0, v2, v3, v4}, Lmiui/vip/VipWebClient;->invokeJsAccountUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_2
    return-void

    .line 514
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private notifyAchievementsUpdate(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/vip/VipAchievement;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    iget-object v0, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmiui/vip/VipWebClient;->isSameAchievementList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iput-object p1, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    .line 446
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->achievementToJs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .local v0, "js":Ljava/lang/String;
    goto :goto_0

    .line 449
    .end local v0    # "js":Ljava/lang/String;
    :cond_0
    const-string v0, "[]"

    .line 451
    .restart local v0    # "js":Ljava/lang/String;
    :goto_0
    const-string v1, "notifyAchievementsUpdate, js = %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    const-string v1, "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "achievementCallback"

    aput-object v5, v3, v4

    const-string v4, "achievements"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    invoke-direct {p0, v1, v3}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    .line 454
    .end local v0    # "js":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private notifyVipUserUpdate(Lmiui/vip/VipUserInfo;)V
    .locals 8
    .param p1, "user"    # Lmiui/vip/VipUserInfo;

    .line 428
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 429
    iput-object p1, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    .line 430
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->vipUserToJs(Lmiui/vip/VipUserInfo;)Ljava/lang/String;

    move-result-object v4

    .local v4, "js":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v4    # "js":Ljava/lang/String;
    :cond_0
    const-string v4, "{id:%d, level:%d, badgeUrl:\'%s\'}"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, ""

    aput-object v6, v5, v1

    invoke-direct {p0, v4, v5}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 435
    .restart local v4    # "js":Ljava/lang/String;
    :goto_0
    const-string v5, "notifyVipUserUpdate, mStrUser = %s, js = %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v5, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 437
    iput-object v4, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    .line 438
    const-string v5, "(function(){   var funcName = \'%s\';   var vName = \'%s\';   var args = %s;   if (window.XiaomiVipClient) {       XiaomiVipClient[vName] = args;       if (typeof XiaomiVipClient[funcName] == \'function\') {           console.log(\'VipWebClient invokes \' + funcName);           XiaomiVipClient[funcName](args);       }   }})();"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "vipCallback"

    aput-object v6, v0, v3

    const-string v3, "vipUser"

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    invoke-direct {p0, v5, v0}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V

    .line 440
    :cond_1
    return-void
.end method

.method private parseUrl(Ljava/lang/String;)Lmiui/vip/VipWebClient$UrlParameters;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .line 376
    new-instance v0, Lmiui/vip/VipWebClient$UrlParameters;

    invoke-direct {v0}, Lmiui/vip/VipWebClient$UrlParameters;-><init>()V

    .line 377
    .local v0, "params":Lmiui/vip/VipWebClient$UrlParameters;
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 378
    .local v1, "paramStart":I
    const-string v2, "http://vip_view/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    .line 379
    if-lez v1, :cond_2

    .line 380
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "p":Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "parray":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v3

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 383
    .local v7, "pair":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "kv":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 385
    iget-object v9, v0, Lmiui/vip/VipWebClient$UrlParameters;->params:Ljava/util/HashMap;

    aget-object v10, v8, v4

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v7    # "pair":Ljava/lang/String;
    .end local v8    # "kv":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 389
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "parray":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private startAccountActivity(Landroid/content/Context;Lmiui/vip/VipWebClient$UrlParameters;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cmd"    # Lmiui/vip/VipWebClient$UrlParameters;

    .line 353
    iget-object v0, p2, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/vip/VipWebClient;->getActionFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "action":Ljava/lang/String;
    const-string v1, "VipWebClient.interceptRequest, handleVipAction, path = %s, action = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lmiui/vip/VipWebClient$UrlParameters;->path:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    const/4 v1, 0x0

    .line 360
    .local v1, "forResult":Z
    const-string v2, "com.xiaomi.vip"

    .line 361
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "com.xiaomi.account.action.USER_INFO_DETAIL"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    const-string v2, "com.xiaomi.account"

    .line 363
    const/4 v1, 0x1

    .line 364
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->hasAccount()Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    const-string v0, "com.xiaomi.account.action.XIAOMI_ACCOUNT_WELCOME"

    .line 368
    :cond_1
    invoke-static {p1, v0, v2, v1}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    return-void
.end method

.method private vipUserToJs(Lmiui/vip/VipUserInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "user"    # Lmiui/vip/VipUserInfo;

    .line 549
    const-string v0, "{id:%d, level:%d, badgeUrl:\'%s\'}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lmiui/vip/VipUserInfo;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lmiui/vip/VipUserInfo;->level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "http://request_vip_icon/level_icon"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lmiui/vip/VipWebClient;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 258
    iget-object v0, p0, Lmiui/vip/VipWebClient;->mWebView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 259
    iput-object v1, p0, Lmiui/vip/VipWebClient;->mUser:Lmiui/vip/VipUserInfo;

    .line 260
    iput-object v1, p0, Lmiui/vip/VipWebClient;->mCachedAchievements:Ljava/util/List;

    .line 261
    iput-object v1, p0, Lmiui/vip/VipWebClient;->mStrUser:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lmiui/vip/VipWebClient;->mStrAccount:Ljava/lang/String;

    .line 263
    invoke-static {}, Lmiui/vip/VipService;->instance()Lmiui/vip/VipService;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mVipCallback:Lmiui/vip/QueryCallback;

    invoke-virtual {v0, v1}, Lmiui/vip/VipService;->disconnect(Lmiui/vip/QueryCallback;)V

    .line 265
    :try_start_0
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "exception happened on unregisterReceiver, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public init(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 249
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/vip/VipWebClient;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/miui/internal/vip/utils/Utils;->ACCOUNT_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->connectService()Z

    .line 251
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->initWithData(Landroid/webkit/WebView;)V

    .line 252
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 283
    const-string v0, "com.xiaomi.account.action.USER_INFO_DETAIL"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 284
    const-string v0, "onActivityResult for user detail activity"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-direct {p0}, Lmiui/vip/VipWebClient;->notifyAccountUpdate()V

    .line 287
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 304
    const-string v0, "onPageStarted, url = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0, p1}, Lmiui/vip/VipWebClient;->initWithData(Landroid/webkit/WebView;)V

    .line 306
    return-void
.end method

.method public shouldIntercept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 275
    const-string v0, "http://request_vip_icon/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://vip_view/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lmiui/vip/VipWebClient;->interceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 293
    .local v1, "res":Landroid/webkit/WebResourceResponse;
    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 298
    .end local v1    # "res":Landroid/webkit/WebResourceResponse;
    :cond_1
    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VipWebClient.shouldInterceptRequest, url = %s, exception: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
