.class public Lmiui/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityHelper"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/net/ConnectivityHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Cv:Landroid/net/ConnectivityManager;

.field private Cw:Landroid/net/wifi/WifiManager;

.field private Cx:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lmiui/net/ConnectivityHelper$1;

    invoke-direct {v0}, Lmiui/net/ConnectivityHelper$1;-><init>()V

    sput-object v0, Lmiui/net/ConnectivityHelper;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lmiui/net/ConnectivityHelper$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmiui/net/ConnectivityHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/net/ConnectivityHelper;
    .locals 1

    .line 36
    sget-object v0, Lmiui/net/ConnectivityHelper;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/net/ConnectivityHelper;

    return-object v0
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cx:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cx:Ljava/lang/String;

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cw:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->Cw:Landroid/net/wifi/WifiManager;

    .line 108
    :cond_1
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cw:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/ConnectivityHelper;->Cx:Ljava/lang/String;

    .line 113
    :cond_2
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cx:Ljava/lang/String;

    return-object v0
.end method

.method public getManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public isNetworkConnected()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnmeteredNetworkConnected()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    .line 85
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0
.end method

.method public isWifiConnected()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1
.end method

.method public isWifiOnly()Z
    .locals 3

    .line 121
    invoke-static {}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;

    move-result-object v0

    iget-object v1, p0, Lmiui/net/ConnectivityHelper;->Cv:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Net_ConnectivityManager_class;->isNetworkSupported(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    .line 123
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
