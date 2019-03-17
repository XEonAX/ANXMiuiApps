.class public Lcom/taobao/tao/remotebusiness/login/RemoteLogin;
.super Ljava/lang/Object;
.source "RemoteLogin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "mtop.rb-Login"

.field private static login:Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login:Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogin()Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login:Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->getDefaultLoginImpl()Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login:Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "mtop.rb-Login"

    const-string v1, "login is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/taobao/tao/remotebusiness/login/LoginNotImplementException;

    const-string v1, "Login Not Implement!"

    invoke-direct {v0, v1}, Lcom/taobao/tao/remotebusiness/login/LoginNotImplementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    sget-object v0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login:Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    return-object v0
.end method

.method public static getLoginContext()Lcom/taobao/tao/remotebusiness/login/LoginContext;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin()Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->getLoginContext()Lcom/taobao/tao/remotebusiness/login/LoginContext;

    move-result-object v0

    return-object v0
.end method

.method public static isSessionValid()Z
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin()Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->isLogining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->isSessionValid()Z

    move-result v0

    goto :goto_0
.end method

.method public static login(Z)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(ZLjava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static login(ZLjava/lang/Object;)V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin()Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->isLogining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "mtop.rb-Login"

    const-string v2, "call login"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_1

    instance-of v0, v1, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 41
    check-cast v0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->setSessionInvalid(Ljava/lang/Object;)V

    .line 44
    :cond_1
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance()Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->login(Lcom/taobao/tao/remotebusiness/login/onLoginListener;Z)V

    .line 45
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance()Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object v0

    const v1, 0xde700

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static setLoginImpl(Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login:Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    .line 27
    return-void
.end method
