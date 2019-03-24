.class public Lcom/miui/internal/vip/utils/AuthHttpRequest;
.super Ljava/lang/Object;
.source "AuthHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;,
        Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SDK:Ljava/lang/String; = "com.xiaomi.accountsdk"

.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final AccountSdkDf:Ldalvik/system/DexFile;

.field private static final CLS_AUTH_FAIL_EXCEPT:Ljava/lang/String; = "com.xiaomi.accountsdk.request.AuthenticationFailureException"

.field private static final CLS_CRYPT_CODER:Ljava/lang/String; = "com.xiaomi.accountsdk.utils.CryptCoder"

.field private static final CLS_EXTEND_AUTH_TOKEN:Ljava/lang/String; = "com.xiaomi.accountsdk.account.data.ExtendedAuthToken"

.field private static final CLS_SECURE_REQUEST:Ljava/lang/String; = "com.xiaomi.accountsdk.request.SecureRequest"

.field private static final CLS_STRING_CONTENT:Ljava/lang/String; = "com.xiaomi.accountsdk.request.SimpleRequest$StringContent"

.field private static final ClsAuthFailExcept:Ljava/lang/Class;

.field private static final ClsCryptCoder:Ljava/lang/Class;

.field private static final ClsExtendAuthToken:Ljava/lang/Class;

.field private static final ClsSecureRequest:Ljava/lang/Class;

.field private static final ClsStringContent:Ljava/lang/Class;

.field private static final ERR_AUTH_TOKEN:Ljava/lang/String; = "fail to get auth token"

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final MAX_RETRY:I = 0x5

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final PARAM_ANDROID_VER:Ljava/lang/String; = "android_version"

.field private static final PARAM_COUNTRY:Ljava/lang/String; = "country"

.field private static final PARAM_IMEI:Ljava/lang/String; = "imei"

.field private static final PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PARAM_MIUI_VERSION:Ljava/lang/String; = "miui_version"

.field private static final PARAM_NONE:[Ljava/lang/Class;

.field private static final PARAM_PRODUCT:Ljava/lang/String; = "product"

.field private static final PARAM_REQUEST:[Ljava/lang/Class;

.field private static final PARAM_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final PARAM_REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field private static final PARAM_SINGLE_STRING:[Ljava/lang/Class;

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final SERVER_ALPHA:Ljava/lang/String; = "api-alpha.vip.miui.com"

.field private static final SERVER_DEV:Ljava/lang/String; = "api.vip.miui.com"

.field private static final SERVER_TONGJI:Ljava/lang/String; = "api.vip.miui.com"

.field private static final SERVER_TONGJI_ALPHA:Ljava/lang/String; = "tongji-alpha.vip.miui.com"

.field private static final SID:Ljava/lang/String; = "miui_vip"

.field private static final SID_A:Ljava/lang/String; = "miui_vip_a"

.field private static final TIMEOUT:I = 0x2710

.field public static final TYPE_DATA:Ljava/lang/String; = "data"

.field public static final TYPE_TONGJI:Ljava/lang/String; = "tongji"

.field private static final sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

.field private static sClassLoaded:Z


# instance fields
.field public final command:Ljava/lang/String;

.field public final isNormal:Z

.field public final method:Ljava/lang/String;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 63
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_NONE:[Ljava/lang/Class;

    .line 64
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    sput-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_SINGLE_STRING:[Ljava/lang/Class;

    .line 69
    sput-boolean v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sClassLoaded:Z

    .line 85
    new-instance v2, Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;-><init>(Lcom/miui/internal/vip/utils/AuthHttpRequest$1;)V

    sput-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    .line 88
    const/4 v2, 0x0

    .local v2, "clsExtendToken":Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "clsAuthFail":Ljava/lang/Class;
    const/4 v5, 0x0

    .line 89
    .local v5, "clsSecureReq":Ljava/lang/Class;
    const/4 v6, 0x0

    .local v6, "clsStrContent":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 91
    .local v7, "clsCoder":Ljava/lang/Class;
    nop

    .line 93
    .local v3, "df":Ldalvik/system/DexFile;
    :try_start_0
    new-instance v8, Ldalvik/system/DexFile;

    const-string v9, "system/framework/cloud-common.jar"

    invoke-direct {v8, v9}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v8

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v8

    .line 95
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "failed to open cloud-common, %s"

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object v3, Lcom/miui/internal/vip/utils/AuthHttpRequest;->AccountSdkDf:Ldalvik/system/DexFile;

    .line 100
    :try_start_1
    const-string v8, "com.xiaomi.accountsdk.account.data.ExtendedAuthToken"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v3, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v2, v8

    .line 101
    const-string v8, "com.xiaomi.accountsdk.request.AuthenticationFailureException"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v3, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    .line 102
    const-string v8, "com.xiaomi.accountsdk.request.SecureRequest"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v3, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v5, v8

    .line 103
    const-string v8, "com.xiaomi.accountsdk.utils.CryptCoder"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v3, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v7, v8

    .line 104
    const-string v8, "com.xiaomi.accountsdk.request.SimpleRequest$StringContent"

    sget-object v9, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sAccountSdkLoader:Lcom/miui/internal/vip/utils/AuthHttpRequest$AccountSdkLoader;

    invoke-virtual {v3, v8, v9}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    move-object v6, v8

    .line 106
    sput-boolean v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sClassLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    goto :goto_1

    .line 107
    :catch_1
    move-exception v8

    .line 108
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v9, "failed to load class, %s"

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    sput-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    .line 111
    sput-object v4, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsAuthFailExcept:Ljava/lang/Class;

    .line 112
    sput-object v5, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsSecureRequest:Ljava/lang/Class;

    .line 113
    sput-object v6, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsStringContent:Ljava/lang/Class;

    .line 114
    sput-object v7, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsCryptCoder:Ljava/lang/Class;

    .line 116
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    const-class v0, Ljava/util/Map;

    aput-object v0, v8, v1

    const/4 v0, 0x2

    const-class v1, Ljava/util/Map;

    aput-object v1, v8, v0

    const/4 v0, 0x3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const-class v1, Ljava/lang/String;

    aput-object v1, v8, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsCryptCoder:Ljava/lang/Class;

    aput-object v1, v8, v0

    const/4 v0, 0x6

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v8, v0

    sput-object v8, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_REQUEST:[Ljava/lang/Class;

    .line 118
    .end local v2    # "clsExtendToken":Ljava/lang/Class;
    .end local v3    # "df":Ldalvik/system/DexFile;
    .end local v4    # "clsAuthFail":Ljava/lang/Class;
    .end local v5    # "clsSecureReq":Ljava/lang/Class;
    .end local v6    # "clsStrContent":Ljava/lang/Class;
    .end local v7    # "clsCoder":Ljava/lang/Class;
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isNormal"    # Z
    .param p5, "pms"    # [Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->command:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->type:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->method:Ljava/lang/String;

    .line 166
    iput-boolean p4, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isNormal:Z

    .line 168
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "i":I
    :goto_0
    if-eqz p5, :cond_1

    array-length v1, p5

    if-ge v0, v1, :cond_1

    .line 171
    add-int/lit8 v1, v0, 0x1

    .line 172
    .local v1, "next":I
    array-length v2, p5

    if-ge v1, v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    aget-object v3, p5, v0

    aget-object v4, p5, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 176
    .end local v1    # "next":I
    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pms"    # [Ljava/lang/String;

    .line 159
    const-string v2, "data"

    const-string v3, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/vip/utils/AuthHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method static synthetic access$000()Ldalvik/system/DexFile;
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->AccountSdkDf:Ldalvik/system/DexFile;

    return-object v0
.end method

.method private static addAdditionalParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .line 323
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 324
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 326
    :cond_0
    const-string v1, "requestId"

    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "requestTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "miui_version"

    sget-object v2, Lcom/miui/internal/vip/utils/DeviceHelper;->MIUI_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "version"

    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getXiaomiVipVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "product"

    sget-object v2, Lcom/miui/internal/vip/utils/DeviceHelper;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "imei"

    invoke-static {}, Lcom/miui/internal/vip/utils/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "android_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-object v0
.end method

.method private static getAuthToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "am"    # Landroid/accounts/AccountManager;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 203
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    :try_start_0
    invoke-virtual/range {v5 .. v11}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    .line 208
    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "authtoken"

    .line 209
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 210
    .local v0, "authToken":Ljava/lang/String;
    return-object v0

    .line 215
    .end local v0    # "authToken":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 216
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "getAuthToken %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v5, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 213
    :catch_1
    move-exception v4

    .line 214
    .local v4, "e":Landroid/accounts/AuthenticatorException;
    const-string v5, "getAuthToken %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v5, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v4    # "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0

    .line 211
    :catch_2
    move-exception v4

    .line 212
    .local v4, "e":Landroid/accounts/OperationCanceledException;
    const-string v5, "getAuthToken %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v5, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .end local v4    # "e":Landroid/accounts/OperationCanceledException;
    :goto_0
    nop

    .line 218
    :goto_1
    return-object v0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userId is not only digits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    .end local v3    # "userId":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v3, "account = %s, sid = %s, failed to get auth token"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    return-object v0
.end method

.method private getCookies(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "am"    # Landroid/accounts/AccountManager;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    const-string v0, "encrypted_user_id"

    invoke-virtual {p1, p2, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "encryptedUserId":Ljava/lang/String;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 277
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cUserId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "serviceToken"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object v1
.end method

.method private getExtendedAuthToken(Ljava/lang/String;)Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;
    .locals 6
    .param p1, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;

    invoke-direct {v0}, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;-><init>()V

    .line 285
    .local v0, "extendToken":Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;
    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    const-string v2, "parse"

    sget-object v3, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_SINGLE_STRING:[Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v1, v2, v3, v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 286
    .local v1, "token":Ljava/lang/Object;
    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    const-string v3, "security"

    invoke-static {v1, v2, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->security:Ljava/lang/String;

    .line 287
    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsExtendAuthToken:Ljava/lang/Class;

    const-string v3, "authToken"

    invoke-static {v1, v2, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->authToken:Ljava/lang/String;

    .line 288
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->authToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->security:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    return-object v0

    .line 289
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get auth token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string v4, "/null authToken"

    goto :goto_1

    :cond_2
    const-string v4, "parse authToken failed"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getRequestId()Ljava/lang/String;
    .locals 3

    .line 339
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isXiaomiVipAlpha()Z

    move-result v0

    .line 143
    .local v0, "isAlpha":Z
    const-string v1, "tongji"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    if-eqz v0, :cond_0

    const-string v1, "tongji-alpha.vip.miui.com"

    goto :goto_0

    :cond_0
    const-string v1, "api.vip.miui.com"

    .local v1, "server":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 146
    .end local v1    # "server":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "api-alpha.vip.miui.com"

    goto :goto_1

    :cond_2
    const-string v1, "api.vip.miui.com"

    .line 148
    .restart local v1    # "server":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    iget-boolean v2, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isNormal:Z

    if-eqz v2, :cond_3

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 152
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_4
    :goto_2
    return-object v1
.end method

.method private getSid()Ljava/lang/String;
    .locals 1

    .line 222
    invoke-static {}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->isXiaomiVipAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miui_vip_a"

    goto :goto_0

    :cond_0
    const-string v0, "miui_vip"

    :goto_0
    return-object v0
.end method

.method private static getXiaomiVipVersion()Ljava/lang/String;
    .locals 2

    .line 234
    const-string v0, "com.xiaomi.vip"

    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 235
    .local v0, "vipPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v1

    .line 238
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private static isXiaomiVipAlpha()Z
    .locals 3

    .line 226
    const-string v0, "com.xiaomi.vip"

    invoke-static {v0}, Lcom/miui/internal/vip/utils/Utils;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 227
    .local v0, "vipPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 230
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private queryWithAccount(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 243
    .local v0, "account":Landroid/accounts/Account;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    const-string v2, "AuthHttpRequest.queryWithAccount return null for there is no valid account"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    return-object v1

    .line 247
    :cond_0
    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 248
    .local v2, "am":Landroid/accounts/AccountManager;
    const/4 v3, 0x0

    .line 250
    .local v3, "retryTimes":I
    add-int/lit8 v3, v3, 0x1

    .line 251
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getAuthToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "authToken":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 253
    return-object v1

    .line 256
    :cond_1
    :try_start_0
    invoke-direct {p0, v4}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getExtendedAuthToken(Ljava/lang/String;)Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;

    move-result-object v5

    .line 257
    .local v5, "token":Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;
    iget-object v6, v5, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->authToken:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v6}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getCookies(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 259
    .local v6, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v5, Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;->security:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v7, p2}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->requestWithUser(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 260
    .end local v5    # "token":Lcom/miui/internal/vip/utils/AuthHttpRequest$ExtendToken;
    .end local v6    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 261
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 262
    .local v6, "cause":Ljava/lang/Throwable;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsAuthFailExcept:Ljava/lang/Class;

    invoke-static {v7, v8}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 263
    const/4 v7, 0x5

    if-eq v3, v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 266
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    goto :goto_0

    .line 264
    :cond_2
    throw v5

    .line 271
    .end local v4    # "authToken":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "cause":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-object v1
.end method

.method private requestWithUser(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .param p4, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .line 297
    iget-object v1, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    invoke-static {v1}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->addAdditionalParams(Ljava/util/Map;)Ljava/util/Map;

    .line 298
    const-string v1, "GET"

    iget-object v2, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsSecureRequest:Ljava/lang/Class;

    const-string v11, "getAsString"

    sget-object v12, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_REQUEST:[Ljava/lang/Class;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    iget-object v8, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    aput-object v8, v7, v9

    aput-object p2, v7, v6

    .line 300
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v7, v5

    aput-object p3, v7, v4

    aput-object v10, v7, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 299
    invoke-static {v10, v1, v11, v12, v7}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "stringContent":Ljava/lang/Object;
    goto :goto_0

    .line 302
    .end local v1    # "stringContent":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsSecureRequest:Ljava/lang/Class;

    const-string v8, "postAsString"

    sget-object v11, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_REQUEST:[Ljava/lang/Class;

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v7, v12

    iget-object v12, v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->params:Ljava/util/Map;

    aput-object v12, v7, v9

    aput-object p2, v7, v6

    .line 303
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v7, v5

    aput-object p3, v7, v4

    aput-object v10, v7, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 302
    invoke-static {v10, v1, v8, v11, v7}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 305
    .restart local v1    # "stringContent":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_1

    .line 306
    sget-object v2, Lcom/miui/internal/vip/utils/AuthHttpRequest;->ClsStringContent:Ljava/lang/Class;

    const-string v3, "getBody"

    sget-object v4, Lcom/miui/internal/vip/utils/AuthHttpRequest;->PARAM_NONE:[Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 308
    :cond_1
    return-object v10
.end method


# virtual methods
.method public queryAsString()Ljava/lang/String;
    .locals 9

    .line 180
    sget-boolean v0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->sClassLoaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->type:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->getServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/internal/vip/utils/AuthHttpRequest;->command:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "url":Ljava/lang/String;
    const/16 v4, 0x2710

    invoke-direct {p0, v3, v4}, Lcom/miui/internal/vip/utils/AuthHttpRequest;->queryWithAccount(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "ret":Ljava/lang/String;
    const-class v5, Lcom/miui/internal/vip/protocol/ErrResult;

    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/vip/protocol/ErrResult;

    .line 185
    .local v5, "error":Lcom/miui/internal/vip/protocol/ErrResult;
    if-eqz v5, :cond_0

    iget v6, v5, Lcom/miui/internal/vip/protocol/ErrResult;->code:I

    if-lez v6, :cond_0

    .line 186
    const-string v6, "queryAsString failed, %s"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v5, Lcom/miui/internal/vip/protocol/ErrResult;->err:Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-static {v6, v7}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-object v1

    .line 189
    :cond_0
    return-object v4

    .line 190
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "error":Lcom/miui/internal/vip/protocol/ErrResult;
    :catch_0
    move-exception v3

    .line 191
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "queryAsString failed, %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {v4, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method
