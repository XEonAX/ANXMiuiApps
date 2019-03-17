.class public Lcom/ali/auth/third/core/config/ConfigManager;
.super Ljava/lang/Object;


# static fields
.field public static APP_KEY_INDEX:I

.field public static DEBUG:Z

.field public static LOGIN_HOST:Ljava/lang/String;

.field public static LOGIN_URLS:Ljava/lang/String;

.field public static LOGOUT_URLS:Ljava/lang/String;

.field public static POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

.field public static POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

.field public static final SDK_VERSION:Lcom/ali/auth/third/core/config/Version;

.field private static final b:Lcom/ali/auth/third/core/config/ConfigManager;

.field public static bindUrl:Ljava/lang/String;

.field public static qrCodeLoginUrl:Ljava/lang/String;

.field public static qrCodeLoginUrl_daily:Ljava/lang/String;

.field public static qrLoginConfirmUrl:Ljava/lang/String;

.field public static unbindUrl:Ljava/lang/String;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ali/auth/third/core/config/Environment;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ali/auth/third/core/config/ConfigManager;->DEBUG:Z

    new-instance v0, Lcom/ali/auth/third/core/config/Version;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v1, v3}, Lcom/ali/auth/third/core/config/Version;-><init>(III)V

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->SDK_VERSION:Lcom/ali/auth/third/core/config/Version;

    new-instance v0, Lcom/ali/auth/third/core/config/ConfigManager;

    invoke-direct {v0}, Lcom/ali/auth/third/core/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->b:Lcom/ali/auth/third/core/config/ConfigManager;

    const-string v0, "http://login.m.taobao.com/minisdk/login.htm"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->LOGIN_HOST:Ljava/lang/String;

    const-string v0, "http://login.m.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->bindUrl:Ljava/lang/String;

    const-string v0, "https://accountlink.taobao.com/sdkUnbind.htm"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->unbindUrl:Ljava/lang/String;

    const-string v0, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    sput v2, Lcom/ali/auth/third/core/config/ConfigManager;->APP_KEY_INDEX:I

    const-string v0, ""

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    const-string v0, "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->qrCodeLoginUrl:Ljava/lang/String;

    const-string v0, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->qrCodeLoginUrl_daily:Ljava/lang/String;

    const-string v0, "https://login.m.taobao.com/qrcodeLogin.htm?shortURL=%s&from=bcqrlogin"

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->qrLoginConfirmUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->i:I

    return-void
.end method

.method public static getAppKeyIndex()I
    .locals 1

    sget v0, Lcom/ali/auth/third/core/config/ConfigManager;->APP_KEY_INDEX:I

    return v0
.end method

.method public static getInstance()Lcom/ali/auth/third/core/config/ConfigManager;
    .locals 1

    sget-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->b:Lcom/ali/auth/third/core/config/ConfigManager;

    return-object v0
.end method

.method public static setAppKeyIndex(I)V
    .locals 0

    sput p0, Lcom/ali/auth/third/core/config/ConfigManager;->APP_KEY_INDEX:I

    return-void
.end method


# virtual methods
.method public getEnvironment()Lcom/ali/auth/third/core/config/Environment;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->c:Lcom/ali/auth/third/core/config/Environment;

    return-object v0
.end method

.method public getFullyCustomizedLoginFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->h:Ljava/lang/Class;

    return-object v0
.end method

.method public getMaxHistoryAccount()I
    .locals 1

    iget v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->d:I

    return v0
.end method

.method public getOfflineDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->i:I

    return v0
.end method

.method public getQrCodeLoginUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/ali/auth/third/core/config/ConfigManager;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/auth/third/core/config/ConfigManager;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/core/config/Environment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->qrCodeLoginUrl_daily:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->qrCodeLoginUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScanParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public init(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ali/auth/third/core/config/Environment;->values()[Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->c:Lcom/ali/auth/third/core/config/Environment;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://login.waptest.tbsandbox.com/minisdk/login.htm"

    aput-object v1, v0, v2

    const-string v1, "http://login.waptest.taobao.com/minisdk/login.htm"

    aput-object v1, v0, v3

    const-string v1, "http://login.wapa.taobao.com/minisdk/login.htm"

    aput-object v1, v0, v4

    const-string v1, "http://login.m.taobao.com/minisdk/login.htm"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->LOGIN_HOST:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "((https|http)://)login.waptest.tbsandbox.com/login.htm(.*)"

    aput-object v1, v0, v2

    const-string v1, "((https|http)://)login.waptest.taobao.com/login.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "((https|http)://)login.wapa.taobao.com/login.htm(.*)"

    aput-object v1, v0, v4

    const-string v1, "((https|http)://)login.m.taobao.com/login.htm(.*),((https|http)://)login.tmall.com(.*),((https|http)://)login.taobao.com/member/login.jhtml(.*)"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->LOGIN_URLS:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "((https|http)://)login.waptest.tbsandbox.com/logout.htm(.*)"

    aput-object v1, v0, v2

    const-string v1, "((https|http)://)login.waptest.taobao.com/logout.htm(.*)"

    aput-object v1, v0, v3

    const-string v1, "((https|http)://)login.wapa.taobao.com/logout.htm(.*)"

    aput-object v1, v0, v4

    const-string v1, "((https|http)://)login.m.taobao.com/logout.htm(.*)"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->LOGOUT_URLS:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://login.waptest.tbsandbox.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v2

    const-string v1, "http://login.waptest.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v3

    const-string v1, "http://login.wapa.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v4

    const-string v1, "http://login.m.taobao.com/cooperation/bindLogin.htm?code=%s&IBB=%s&appkey=%s"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->bindUrl:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "https://accountlink.daily.taobao.net/sdkUnbind.htm"

    aput-object v1, v0, v2

    const-string v1, "https://accountlink.daily.taobao.net/sdkUnbind.htm"

    aput-object v1, v0, v3

    const-string v1, "https://accountlink.taobao.com/sdkUnbind.htm"

    aput-object v1, v0, v4

    const-string v1, "https://accountlink.taobao.com/sdkUnbind.htm"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->unbindUrl:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v2

    const-string v1, "http://login.waptest.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v3

    const-string v1, "http://login.wapa.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v4

    const-string v1, "http://login.m.taobao.com/qrcodeShow.htm?appKey=%s&from=bcqrlogin"

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->qrCodeLoginUrl:Ljava/lang/String;

    sget-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

    if-nez v0, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    aget-object v0, v0, p1

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG_USER_SET:Ljava/lang/String;

    sput-object v0, Lcom/ali/auth/third/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    goto :goto_0
.end method

.method public isSaveHistoryWithSalt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/auth/third/core/config/ConfigManager;->e:Z

    return v0
.end method

.method public setFullyCustomizedLoginFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->h:Ljava/lang/Class;

    return-void
.end method

.method public setMaxHistoryAccount(I)V
    .locals 0

    iput p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->d:I

    return-void
.end method

.method public setOfflineDeviceID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->f:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->i:I

    return-void
.end method

.method public setSaveHistoryWithSalt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->e:Z

    return-void
.end method

.method public setScanParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->a:Ljava/util/Map;

    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/config/ConfigManager;->g:Ljava/lang/String;

    return-void
.end method
