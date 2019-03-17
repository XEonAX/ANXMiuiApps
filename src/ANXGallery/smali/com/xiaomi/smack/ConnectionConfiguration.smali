.class public Lcom/xiaomi/smack/ConnectionConfiguration;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final XMPP_SERVER_HOST_ONEBOX:Ljava/lang/String;

.field public static XMPP_SERVER_HOST_T:Ljava/lang/String;

.field public static xmppHost:Ljava/lang/String;


# instance fields
.field private connectionPoint:Ljava/lang/String;

.field private debuggerEnabled:Z

.field private host:Ljava/lang/String;

.field private httpProxy:Lcom/xiaomi/smack/HttpRequestProxy;

.field private port:I

.field private reconnectionAllowed:Z

.field private serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "wcc-ml-test10.bj"

    sput-object v0, Lcom/xiaomi/smack/ConnectionConfiguration;->XMPP_SERVER_HOST_T:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/DebugSwitch;->sOneboxServerHost:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/smack/ConnectionConfiguration;->XMPP_SERVER_HOST_ONEBOX:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/ConnectionConfiguration;->xmppHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V
    .locals 1
    .param p2, "port"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "httpProxy"    # Lcom/xiaomi/smack/HttpRequestProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smack/HttpRequestProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "hosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-boolean v0, Lcom/xiaomi/smack/Connection;->DEBUG_ENABLED:Z

    iput-boolean v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->reconnectionAllowed:Z

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/smack/ConnectionConfiguration;->init(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V

    .line 128
    return-void
.end method

.method public static final getXmppServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/xiaomi/smack/ConnectionConfiguration;->xmppHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/xiaomi/smack/ConnectionConfiguration;->xmppHost:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsSandBoxBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "sandbox.xmpush.xiaomi.com"

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->IsOneBoxBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/xiaomi/smack/ConnectionConfiguration;->XMPP_SERVER_HOST_ONEBOX:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method

.method private init(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/HttpRequestProxy;)V
    .locals 0
    .param p2, "port"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "httpProxy"    # Lcom/xiaomi/smack/HttpRequestProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/xiaomi/smack/HttpRequestProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "hosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput p2, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->port:I

    .line 142
    iput-object p3, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->serviceName:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->httpProxy:Lcom/xiaomi/smack/HttpRequestProxy;

    .line 144
    return-void
.end method

.method public static final setXmppServerHost(Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 81
    sput-object p0, Lcom/xiaomi/smack/ConnectionConfiguration;->xmppHost:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getConnectionBlob()[B
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->connectionPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/xiaomi/smack/ConnectionConfiguration;->getXmppServerHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->port:I

    return v0
.end method

.method public isDebuggerEnabled()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->debuggerEnabled:Z

    return v0
.end method

.method public setConnectionPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "connPt"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->connectionPoint:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setDebuggerEnabled(Z)V
    .locals 0
    .param p1, "debuggerEnabled"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->debuggerEnabled:Z

    .line 219
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xiaomi/smack/ConnectionConfiguration;->host:Ljava/lang/String;

    .line 199
    return-void
.end method
