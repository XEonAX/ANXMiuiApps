.class public Lcom/xiaomi/scanner/config/ConfigModel;
.super Ljava/lang/Object;
.source "ConfigModel.java"


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = "configCache"

.field private static final KEY_CACHE:Ljava/lang/String; = "Config_Scan"

.field public static instance:Lcom/xiaomi/scanner/config/ConfigModel;


# instance fields
.field private mAlipayRulePatternList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCanPayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mMiBiPayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mMipayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mWechatRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-direct {v0}, Lcom/xiaomi/scanner/config/ConfigModel;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/config/ConfigModel;Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;)Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/config/ConfigModel;
    .param p1, "x1"    # Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/config/ConfigModel;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/config/ConfigModel;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/scanner/config/ConfigModel;->saveDataToLocal(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private clearData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 55
    :cond_0
    return-void
.end method

.method private getDataFromCache(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "configCache"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "cache":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 186
    .end local v0    # "cache":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "config"

    invoke-direct {v3, v4}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v4, "saveDataToLocal"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveDataToLocal(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "configCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "config"

    invoke-direct {v2, v3}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v3, "saveDataToLocal"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllCacheData()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/config/ConfigModel;->clearData(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public getPaymentRuleList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v2, v2, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    .line 79
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanAlipayRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "rule":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    .end local v0    # "rule":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAlipayRulePatternList:Ljava/util/List;

    goto :goto_0
.end method

.method public getQrScanTip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isSimpleChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanTipMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanTipMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    :cond_1
    const/4 v1, 0x0

    .line 111
    :goto_1
    return-object v1

    .line 106
    :cond_2
    const-string v0, "zh_tw"

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v1, v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanTipMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public initCacheData()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "Config_Scan"

    const-class v1, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/scanner/config/ConfigModel;->getDataFromCache(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iput-object v0, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    .line 40
    return-void
.end method

.method public isAllCanPayRule(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 119
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    .line 120
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->allCanPayRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "rule":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v1    # "rule":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mAllCanPayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 125
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isMiBiPayRule(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 155
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    .line 156
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMiBiPayRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "rule":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v1    # "rule":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMiBiPayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 161
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isMipayRule(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 137
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    .line 138
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->scanMipayRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "rule":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    .end local v1    # "rule":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mMipayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 143
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isWechatRule(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v4, v4, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 90
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    .line 91
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->scanRuleListResult:Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;

    iget-object v3, v3, Lcom/xiaomi/scanner/config/bean/ScanRuleListResult;->wechatJumpRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "rule":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v1    # "rule":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/scanner/config/ConfigModel;->mWechatRuleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 96
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryScanRuleConfig()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/xiaomi/scanner/config/ConfigModel$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/config/ConfigModel$1;-><init>(Lcom/xiaomi/scanner/config/ConfigModel;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/HttpUtils;->queryScanRuleConfig(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    goto :goto_0
.end method
