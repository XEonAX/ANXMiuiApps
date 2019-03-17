.class public Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;
.super Ljava/lang/Object;
.source "CustomUrlListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static final HYBRID_PACKAGE:Ljava/lang/String; = "com.miui.hybrid"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CustomUrlListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private static checkUrl(Ljava/lang/String;)Z
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 49
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 50
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "scheme":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 52
    const-string v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "https"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 53
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 54
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .local v3, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 72
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return v7

    .line 59
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "scheme":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 60
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const-string v10, "com.miui.hybrid"

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    move v7, v8

    .line 64
    goto :goto_0

    .line 69
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v9, "checkUrl error"

    invoke-static {v7, v9, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    move v7, v8

    .line 72
    goto :goto_0
.end method

.method private startActivity(Ljava/lang/String;)Z
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    :goto_0
    return v3

    .line 33
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 34
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "barcode_call_yellowpage_count"

    invoke-static {v4}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v3, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "no activity handle this action"

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->startActivity(Ljava/lang/String;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlFilterUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/code/utils/CustomUrlListener;->startActivity(Ljava/lang/String;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
