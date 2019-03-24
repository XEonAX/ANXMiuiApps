.class public Lmiui/telephony/TelephonyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/telephony/TelephonyHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Fl:Landroid/telephony/TelephonyManager;

.field private Fm:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lmiui/telephony/TelephonyHelper$1;

    invoke-direct {v0}, Lmiui/telephony/TelephonyHelper$1;-><init>()V

    sput-object v0, Lmiui/telephony/TelephonyHelper;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fl:Landroid/telephony/TelephonyManager;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/TelephonyHelper$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lmiui/telephony/TelephonyHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/telephony/TelephonyHelper;
    .locals 1

    .line 35
    sget-object v0, Lmiui/telephony/TelephonyHelper;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/TelephonyHelper;

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fl:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_1
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    .line 75
    :cond_2
    iget-object v0, p0, Lmiui/telephony/TelephonyHelper;->Fm:Ljava/lang/String;

    return-object v0
.end method
