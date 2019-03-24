.class public Lcom/miui/internal/hybrid/HybridManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/HybridManager$JsInvocation;,
        Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "hybrid"

.field private static eW:Ljava/util/concurrent/ExecutorService;

.field private static eX:Ljava/lang/String;


# instance fields
.field private eY:Lmiui/hybrid/HybridView;

.field private eZ:Z

.field private fa:Lmiui/hybrid/NativeInterface;

.field private fb:Lcom/miui/internal/hybrid/FeatureManager;

.field private fc:Lcom/miui/internal/hybrid/PermissionManager;

.field private fd:Lmiui/hybrid/PageContext;

.field private fe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiui/hybrid/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private ff:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiui/hybrid/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/HybridManager;->eW:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiui/hybrid/HybridView;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->ff:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    .line 66
    return-void
.end method

.method private J()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lmiui/hybrid/HybridSettings;)V

    .line 128
    new-instance v0, Lmiui/hybrid/HybridViewClient;

    invoke-direct {v0}, Lmiui/hybrid/HybridViewClient;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->setHybridViewClient(Lmiui/hybrid/HybridViewClient;)V

    .line 131
    new-instance v0, Lmiui/hybrid/HybridChromeClient;

    invoke-direct {v0}, Lmiui/hybrid/HybridChromeClient;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V

    .line 134
    new-instance v0, Lcom/miui/internal/hybrid/JsInterface;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    .line 135
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    const-string v2, "MiuiJsBridge"

    invoke-virtual {v1, v0, v2}, Lmiui/hybrid/HybridView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    new-instance v1, Lcom/miui/internal/hybrid/HybridManager$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/hybrid/HybridManager$1;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 149
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 175
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 179
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;
    .locals 1

    .line 100
    if-eqz p2, :cond_1

    .line 101
    new-instance p2, Lcom/miui/internal/hybrid/SecurityManager;

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/miui/internal/hybrid/SecurityManager;-><init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V

    .line 102
    invoke-virtual {p2}, Lcom/miui/internal/hybrid/SecurityManager;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/internal/hybrid/SecurityManager;->isValidSignature()Z

    move-result p2

    if-nez p2, :cond_1

    .line 103
    :cond_0
    new-instance p1, Lmiui/hybrid/Response;

    const/16 p2, 0xca

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    new-instance p2, Lcom/miui/internal/hybrid/FeatureManager;

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/miui/internal/hybrid/FeatureManager;-><init>(Lcom/miui/internal/hybrid/Config;Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->fb:Lcom/miui/internal/hybrid/FeatureManager;

    .line 107
    new-instance p2, Lcom/miui/internal/hybrid/PermissionManager;

    invoke-direct {p2, p1}, Lcom/miui/internal/hybrid/PermissionManager;-><init>(Lcom/miui/internal/hybrid/Config;)V

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->fc:Lcom/miui/internal/hybrid/PermissionManager;

    .line 108
    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/HybridManager;->a(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const-string p1, ""

    return-object p1

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string p2, "(\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->ff:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private a(Lmiui/hybrid/HybridSettings;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    .line 154
    invoke-virtual {p1}, Lmiui/hybrid/HybridSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/hybrid/HybridManager;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/hybrid/HybridSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/HybridManager;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/miui/internal/hybrid/HybridManager;->eZ:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;
    .locals 0

    .line 203
    new-instance p1, Lmiui/hybrid/Request;

    invoke-direct {p1}, Lmiui/hybrid/Request;-><init>()V

    .line 204
    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, p3}, Lmiui/hybrid/Request;->setRawParams(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setPageContext(Lmiui/hybrid/PageContext;)V

    .line 207
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setView(Landroid/view/View;)V

    .line 208
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->fa:Lmiui/hybrid/NativeInterface;

    invoke-virtual {p1, p2}, Lmiui/hybrid/Request;->setNativeInterface(Lmiui/hybrid/NativeInterface;)V

    .line 209
    return-object p1
.end method

.method private g(I)Lcom/miui/internal/hybrid/Config;
    .locals 3

    .line 88
    if-nez p1, :cond_0

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->create(Landroid/content/Context;)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p1

    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    goto :goto_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/hybrid/XmlConfigParser;

    move-result-object p1

    .line 93
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/XmlConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p1
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 94
    :goto_1
    nop

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot load config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/HybridException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 158
    sget-object v0, Lcom/miui/internal/hybrid/HybridManager;->eX:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    const-string p1, " XiaoMi/HybridView/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    const-string v1, "com.miui.core"

    invoke-static {p1, v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/internal/hybrid/HybridManager;->eX:Ljava/lang/String;

    .line 168
    :cond_0
    sget-object p1, Lcom/miui/internal/hybrid/HybridManager;->eX:Ljava/lang/String;

    return-object p1
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 183
    const-string v0, "^[a-z-]+://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-object p1

    .line 188
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/hybrid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fc:Lcom/miui/internal/hybrid/PermissionManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    invoke-virtual {v1}, Lmiui/hybrid/PageContext;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/PermissionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fb:Lcom/miui/internal/hybrid/FeatureManager;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/FeatureManager;->lookupFeature(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    new-instance v0, Lcom/miui/internal/hybrid/HybridException;

    const/16 v1, 0xcb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feature not permitted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V
    .locals 2

    .line 301
    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    invoke-virtual {p2, v0}, Lmiui/hybrid/PageContext;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/miui/internal/hybrid/HybridManager;->eZ:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 302
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 303
    const-string p2, "hybrid"

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 304
    const-string p2, "hybrid"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-blocking response is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;

    invoke-direct {v0, p0, p1, p3}, Lcom/miui/internal/hybrid/HybridManager$JsInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->ff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 83
    return-void
.end method

.method public config(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 113
    :try_start_0
    invoke-static {p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object p1

    .line 114
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/internal/hybrid/ConfigParser;->parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 115
    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc9

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/HybridException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHybridView()Lmiui/hybrid/HybridView;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    return-object v0
.end method

.method public init(ILjava/lang/String;)V
    .locals 1

    .line 69
    new-instance v0, Lmiui/hybrid/NativeInterface;

    invoke-direct {v0, p0}, Lmiui/hybrid/NativeInterface;-><init>(Lcom/miui/internal/hybrid/HybridManager;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fa:Lmiui/hybrid/NativeInterface;

    .line 70
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->g(I)Lcom/miui/internal/hybrid/Config;

    move-result-object p1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/Config;Z)Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/miui/internal/hybrid/HybridManager;->J()V

    .line 73
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    :cond_0
    if-eqz p2, :cond_1

    .line 77
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->eY:Lmiui/hybrid/HybridView;

    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->k(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    nop

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/hybrid/HybridManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;

    move-result-object v1

    .line 242
    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v2

    .line 243
    sget-object v3, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, v3, :cond_0

    .line 244
    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 245
    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/hybrid/HybridManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->ff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p2, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v2, p2, :cond_1

    .line 250
    sget-object p2, Lcom/miui/internal/hybrid/HybridManager;->eW:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {p3, p0, v0, p1, p4}, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 251
    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    new-instance p2, Lmiui/hybrid/Callback;

    iget-object p3, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    invoke-direct {p2, p0, p3, p4}, Lmiui/hybrid/Callback;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, p2}, Lmiui/hybrid/Request;->setCallback(Lmiui/hybrid/Callback;)V

    .line 255
    sget-object p2, Lcom/miui/internal/hybrid/HybridManager;->eW:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {p3, p0, v0, p1, p4}, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 256
    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 234
    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDetached()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/HybridManager;->eZ:Z

    return v0
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 215
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->k(Ljava/lang/String;)Lmiui/hybrid/HybridFeature;

    move-result-object v0
    :try_end_0
    .catch Lcom/miui/internal/hybrid/HybridException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .line 221
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/internal/hybrid/HybridManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/hybrid/Request;

    move-result-object p1

    .line 223
    invoke-interface {v0, p1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 224
    new-instance p1, Lmiui/hybrid/Response;

    const/16 v0, 0xcd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 216
    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/HybridException;->getResponse()Lmiui/hybrid/Response;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 390
    invoke-virtual {v1, p1, p2, p3}, Lmiui/hybrid/LifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 384
    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onDestroy()V

    .line 385
    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method public onPageChange()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 354
    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onPageChange()V

    .line 355
    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 372
    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onPause()V

    .line 373
    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 366
    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onResume()V

    .line 367
    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 360
    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onStart()V

    .line 361
    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/LifecycleListener;

    .line 378
    invoke-virtual {v1}, Lmiui/hybrid/LifecycleListener;->onStop()V

    .line 379
    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method public removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager;->fe:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public setPageContext(Lmiui/hybrid/PageContext;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager;->fd:Lmiui/hybrid/PageContext;

    .line 122
    return-void
.end method
