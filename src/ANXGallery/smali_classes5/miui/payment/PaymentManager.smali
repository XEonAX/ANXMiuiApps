.class public Lmiui/payment/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/PaymentManager$PaymentManagerFuture;,
        Lmiui/payment/PaymentManager$PmsTask;,
        Lmiui/payment/PaymentManager$PaymentCallback;,
        Lmiui/payment/PaymentManager$PaymentManagerCallback;,
        Lmiui/payment/PaymentManager$PaymentListener;
    }
.end annotation


# static fields
.field private static final ACTION_PAYMENT:Ljava/lang/String; = "com.xiaomi.xmsf.action.PAYMENT"

.field public static final CAPABILITY:I = 0x3

.field private static final DEBUG:Z = true

.field public static final ERROR_CODE_ACCOUNT_CHANGED:I = 0xa

.field public static final ERROR_CODE_ACCOUNT_FROZEN:I = 0x9

.field public static final ERROR_CODE_ACCOUNT_THROTTING:I = 0xf

.field public static final ERROR_CODE_AUTHENTICATION_ERROR:I = 0x5

.field public static final ERROR_CODE_CALLER_INVALID:I = 0xc

.field public static final ERROR_CODE_CALL_TOO_FAST:I = 0xe

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_DUPLICATE_DEDUCT:I = 0x10

.field public static final ERROR_CODE_DUPLICATE_PURCHASE:I = 0x7

.field public static final ERROR_CODE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_INVALID_PARAMS:I = 0x2

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_ORDER_ERROR:I = 0xd

.field public static final ERROR_CODE_SERVER_ERROR:I = 0x6

.field public static final ERROR_CODE_THIRD_PARTY:I = 0xb

.field public static final ERROR_CODE_USER_ID_MISMATCH:I = 0x8

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final PACKAGE_PAYMENT:Ljava/lang/String; = "com.xiaomi.payment"

.field public static final PAYMENT_KEY_IS_NO_ACCOUNT:Ljava/lang/String; = "payment_is_no_account"

.field public static final PAYMENT_KEY_PAYMENT_RESULT:Ljava/lang/String; = "payment_payment_result"

.field public static final PAYMENT_KEY_QUICK:Ljava/lang/String; = "payment_quick"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAYMENT_KEY_TRADE_BALANCE:Ljava/lang/String; = "payment_trade_balance"

.field private static final TAG:Ljava/lang/String; = "PaymentManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method static synthetic access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager;

    .line 42
    iget-object v0, p0, Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager;

    .line 42
    iget-object v0, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lmiui/payment/PaymentManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    new-instance v0, Lmiui/payment/PaymentManager;

    invoke-direct {v0, p0}, Lmiui/payment/PaymentManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 305
    .local p4, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v6, Lmiui/payment/PaymentManager$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/payment/PaymentManager$2;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v6}, Lmiui/payment/PaymentManager$2;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method private internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "order"    # Ljava/lang/String;
    .param p3, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 289
    .local p4, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v6, Lmiui/payment/PaymentManager$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmiui/payment/PaymentManager$1;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v6}, Lmiui/payment/PaymentManager$1;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    .line 289
    return-object v0
.end method

.method private internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 315
    if-eqz p1, :cond_1

    .line 319
    if-eqz p2, :cond_0

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void

    .line 320
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "intent uri cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "verify"    # Ljava/lang/String;
    .param p5, "paymentListener"    # Lmiui/payment/PaymentManager$PaymentListener;

    .line 238
    if-eqz p1, :cond_2

    .line 241
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lmiui/payment/PaymentManager$PaymentCallback;

    invoke-direct {v0, p0, p3, p2, p5}, Lmiui/payment/PaymentManager$PaymentCallback;-><init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V

    .line 249
    .local v0, "paymentCallback":Lmiui/payment/PaymentManager$PaymentCallback;
    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/payment/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 250
    return-void

    .line 245
    .end local v0    # "paymentCallback":Lmiui/payment/PaymentManager$PaymentCallback;
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gotoMiliCenter(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 258
    const-string v0, "https://app.mibi.xiaomi.com/?id=mibi.milicenter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 260
    return-void
.end method

.method public gotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;

    .line 282
    const-string v0, "https://app.mibi.xiaomi.com/?id=mibi.billRecord"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 283
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 284
    return-void
.end method

.method public gotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;

    .line 270
    const-string v0, "https://app.mibi.xiaomi.com/?id=mibi.billRecord"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 271
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 272
    return-void
.end method

.method public isMibiServiceDisabled()Z
    .locals 4

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 175
    return v3

    .line 179
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "HK"

    invoke-static {v1}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2
.end method

.method public payForOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;
    .param p4, "extra"    # Landroid/os/Bundle;
    .param p5, "paymentListener"    # Lmiui/payment/PaymentManager$PaymentListener;

    .line 198
    if-eqz p1, :cond_1

    .line 201
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lmiui/payment/PaymentManager$PaymentCallback;

    const-string v1, "thd"

    invoke-direct {v0, p0, v1, p2, p5}, Lmiui/payment/PaymentManager$PaymentCallback;-><init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V

    .line 206
    .local v0, "paymentCallback":Lmiui/payment/PaymentManager$PaymentCallback;
    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/payment/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 207
    return-void

    .line 202
    .end local v0    # "paymentCallback":Lmiui/payment/PaymentManager$PaymentCallback;
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "order cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rechargeId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "verify"    # Ljava/lang/String;

    .line 219
    const-string v0, "https://app.mibi.xiaomi.com/?id=mibi.recharge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lmiui/payment/PaymentManager;->internalStartMibiIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 221
    return-void
.end method
