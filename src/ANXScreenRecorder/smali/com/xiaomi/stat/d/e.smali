.class public Lcom/xiaomi/stat/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/e$b;,
        Lcom/xiaomi/stat/d/e$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Ljava/lang/String; = null

.field private static C:Ljava/lang/String; = null

.field private static D:Ljava/lang/String; = null

.field private static E:Ljava/lang/String; = null

.field private static F:Ljava/lang/Boolean; = null

.field private static G:Ljava/lang/String; = null

.field private static H:Ljava/lang/String; = null

.field private static I:Ljava/lang/String; = null

.field private static J:Z = false

.field private static final a:Ljava/lang/String; = "DeviceUtil"

.field private static final b:I = 0xf

.field private static final c:I = 0xe

.field private static final d:Ljava/lang/String; = ""

.field private static final e:J = 0x1cf7c5800L

.field private static final f:Ljava/lang/String; = "mistat"

.field private static final g:Ljava/lang/String; = "device_id"

.field private static final h:Ljava/lang/String; = "anonymous_id"

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/Object;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    .line 67
    sput-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 70
    sput-object v0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    .line 71
    sput-object v0, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    .line 74
    sput-object v0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    .line 75
    sput-object v0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    .line 76
    sput-object v0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    .line 77
    sput-object v0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    .line 83
    sput-object v0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    .line 86
    sput-object v0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    .line 87
    sput-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/xiaomi/stat/d/e;->I:Ljava/lang/String;

    .line 92
    sput-boolean v1, Lcom/xiaomi/stat/d/e;->J:Z

    .line 96
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->i:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :goto_0
    :try_start_1
    const-string v0, "miui.telephony.TelephonyManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/stat/d/e;->l:Ljava/lang/Object;

    .line 104
    const-string v1, "getImeiList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/stat/d/e;->j:Ljava/lang/reflect/Method;

    .line 105
    const-string v1, "getMeidList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->k:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 111
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    const-string v1, "getImei"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :cond_0
    :goto_2
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_2

    .line 106
    :catch_1
    move-exception v0

    goto :goto_1

    .line 98
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 489
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 491
    invoke-static {}, Lcom/xiaomi/stat/d/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    const-string v0, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 493
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    .line 514
    :goto_0
    return-object v0

    .line 499
    :cond_1
    const-string v0, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 500
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 501
    const-string v0, "getDefault"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 502
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v4}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 507
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    .line 509
    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string v1, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImeiListBelowLollipop failed ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 514
    goto :goto_0
.end method

.method private static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 676
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_2

    .line 680
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 681
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 686
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 689
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 691
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    .line 692
    if-eqz v5, :cond_1

    array-length v2, v5

    if-eqz v2, :cond_1

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    array-length v7, v5

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_3

    aget-byte v8, v5, v2

    .line 697
    const-string v9, "%02x:"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    const-string v2, "DeviceUtil"

    const-string v4, "getMAC exception: "

    invoke-static {v2, v4, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 699
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 700
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 702
    :cond_4
    const-string v2, "wlan0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 711
    :cond_5
    :goto_2
    return-object v1

    .line 706
    :catch_1
    move-exception v0

    .line 707
    const-string v2, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryMac failed ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static C(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 934
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static D(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 947
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v0

    .line 950
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 951
    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, ""

    .line 157
    :goto_0
    return-object v0

    .line 144
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    sput-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->y(Landroid/content/Context;)Ljava/util/List;

    .line 153
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 120
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    .line 121
    invoke-static {}, Lcom/xiaomi/stat/b;->v()J

    move-result-wide v2

    .line 122
    sub-long/2addr v0, v2

    const-wide v2, 0x1cf7c5800L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 124
    :goto_0
    invoke-static {}, Lcom/xiaomi/stat/b;->w()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/xiaomi/stat/b;->i(Ljava/lang/String;)V

    .line 129
    :cond_1
    return-void

    .line 122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 740
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 648
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 649
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x1

    .line 653
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    .line 169
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/xiaomi/stat/d/e;->v:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 620
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/d/e;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 621
    sget-object v1, Lcom/xiaomi/stat/d/e;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 626
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :catch_0
    move-exception v1

    .line 624
    const-string v2, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProp failed ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 657
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    const/4 v0, 0x1

    .line 662
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/xiaomi/stat/d/e;->A:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 666
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 8

    .prologue
    .line 955
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 998
    :goto_0
    return-object v0

    .line 959
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    .line 961
    invoke-static {}, Lcom/xiaomi/stat/b;->s()Ljava/lang/String;

    move-result-object v1

    .line 962
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 963
    if-nez v0, :cond_1

    .line 964
    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 965
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    goto :goto_0

    .line 967
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    .line 968
    invoke-static {}, Lcom/xiaomi/stat/b;->v()J

    move-result-wide v4

    .line 969
    sub-long v4, v2, v4

    const-wide v6, 0x1cf7c5800L

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 970
    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 971
    invoke-static {v2, v3}, Lcom/xiaomi/stat/b;->b(J)V

    .line 972
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    goto :goto_0

    .line 977
    :cond_2
    if-eqz v0, :cond_3

    .line 978
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/p;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 979
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v1

    .line 980
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Z)V

    .line 982
    const-string v2, "mistat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 984
    const-string v2, "anonymous_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    const-string v2, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last version instance id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 990
    :cond_3
    sget-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 991
    invoke-static {}, Lcom/xiaomi/stat/d/e;->e()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    .line 993
    :cond_4
    sget-object v1, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/b;->g(Ljava/lang/String;)V

    .line 994
    if-eqz v0, :cond_5

    .line 995
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->b(J)V

    .line 998
    :cond_5
    sget-object v0, Lcom/xiaomi/stat/d/e;->H:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, ""

    .line 201
    :goto_0
    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    sput-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->y(Landroid/content/Context;)Ljava/util/List;

    .line 197
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 670
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/xiaomi/stat/b;->w()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/xiaomi/stat/b;->i(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    .line 213
    :goto_0
    return-object v0

    .line 208
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/xiaomi/stat/d/e;->w:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    .line 225
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/xiaomi/stat/d/e;->B:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lcom/xiaomi/stat/d/e;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/d/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->j:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/stat/d/e;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 453
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->a(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return-object v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    const-string v1, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiListFromMiui failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, ""

    .line 246
    :goto_0
    return-object v0

    .line 232
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    sget-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    sput-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    sput-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/xiaomi/stat/d/e;->p:Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    const-string v0, "ro.ril.miui.imei0"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    const-string v0, "ro.ril.oem.imei"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const-string v0, "persist.radio.imei"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_2
    invoke-static {}, Lcom/xiaomi/stat/d/e;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    const-string v0, "ro.ril.miui.imei1"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 532
    const-string v0, "ro.ril.oem.imei2"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    const-string v0, "persist.radio.imei2"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_4
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 538
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_5
    return-object v1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    .line 258
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/xiaomi/stat/d/e;->x:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 604
    const-string v1, "dsds"

    const-string v2, "persist.radio.multisim.config"

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 608
    const-string v2, "lcsh92_wet_jb9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lcsh92_wet_tdd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HM2013022"

    .line 609
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HM2013023"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "armani"

    .line 610
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HM2014011"

    .line 611
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HM2014012"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    sget-object v0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    .line 270
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/xiaomi/stat/d/e;->C:Ljava/lang/String;

    goto :goto_0

    .line 270
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static i()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 630
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 634
    const-string v2, "persist.radio.modem"

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    const-string v3, "HM2014812"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "HM2014821"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "gucci"

    .line 636
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ct"

    const-string v3, "persist.sys.modem"

    invoke-static {v3}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "CDMA"

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "HM1AC"

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LTE-X5-ALL"

    .line 639
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LTE-CT"

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MI 3C"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, ""

    .line 295
    :goto_0
    return-object v0

    .line 277
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    sget-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    sput-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 291
    sput-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    .line 292
    sget-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/xiaomi/stat/d/e;->q:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 295
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method private static j()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 916
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    const-string v2, "IS_TABLET"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 930
    :goto_0
    return v0

    .line 920
    :catch_0
    move-exception v0

    .line 923
    :cond_0
    :try_start_1
    const-string v0, "miui.util.FeatureParser"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 924
    if-eqz v0, :cond_1

    .line 925
    const-string v2, "getBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 926
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "is_pad"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 928
    :catch_1
    move-exception v0

    :cond_1
    move v0, v1

    .line 930
    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    .line 307
    :goto_0
    return-object v0

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    .line 305
    sget-object v0, Lcom/xiaomi/stat/d/e;->y:Ljava/lang/String;

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    .line 319
    :goto_0
    return-object v0

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    .line 317
    sget-object v0, Lcom/xiaomi/stat/d/e;->D:Ljava/lang/String;

    goto :goto_0

    .line 319
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, ""

    .line 340
    :goto_0
    return-object v0

    .line 326
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    sget-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    sput-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 332
    sget-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    sput-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    .line 352
    :goto_0
    return-object v0

    .line 347
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    .line 350
    sget-object v0, Lcom/xiaomi/stat/d/e;->z:Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    sget-object v0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    .line 362
    sget-object v0, Lcom/xiaomi/stat/d/e;->E:Ljava/lang/String;

    goto :goto_0

    .line 364
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    sget-object v0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    .line 376
    :goto_0
    return-object v0

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    sput-object v0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    .line 374
    sget-object v0, Lcom/xiaomi/stat/d/e;->s:Ljava/lang/String;

    goto :goto_0

    .line 376
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 380
    sget-object v1, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    sget-object v1, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

    .line 402
    :goto_0
    return-object v1

    .line 384
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 385
    const-string v2, "content://com.miui.analytics.server.AnalyticsProvider/aaid"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 386
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 388
    sput-object v1, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    const-string v2, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAaid failed ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 391
    :cond_2
    :try_start_1
    const-string v1, "android.provider.MiuiSettings$Ad"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAaid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    .line 392
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 394
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;

    .line 396
    sget-object v1, Lcom/xiaomi/stat/d/e;->t:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    sget-object v0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    .line 420
    :goto_0
    return-object v0

    .line 415
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    sput-object v0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/xiaomi/stat/d/e;->u:Ljava/lang/String;

    goto :goto_0

    .line 420
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 550
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    sget-object v0, Lcom/xiaomi/stat/d/e;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 553
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->k:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/stat/d/e;->l:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 554
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 556
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :cond_0
    :goto_0
    return-object v0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    const-string v1, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMeid failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_1
    :try_start_1
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 566
    const-string v0, "phone"

    .line 567
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 568
    const/4 v1, 0x0

    .line 570
    if-eqz v2, :cond_4

    .line 571
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    .line 572
    const-string v3, "getMeid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 573
    if-eqz v2, :cond_4

    .line 574
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    :goto_1
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 592
    :cond_2
    :goto_2
    const-string v0, "persist.radio.meid"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    const-string v0, "ro.ril.oem.meid"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    const-string v0, ""

    goto :goto_0

    .line 577
    :cond_3
    :try_start_2
    const-string v3, "getDeviceId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_4

    .line 579
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 587
    :catch_1
    move-exception v0

    .line 588
    const-string v1, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMeid->getMeid failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 716
    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 718
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 721
    const-string v2, "getSerial"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_3

    .line 723
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 732
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 733
    sput-object v1, Lcom/xiaomi/stat/d/e;->r:Ljava/lang/String;

    .line 736
    :goto_2
    return-object v1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    const-string v2, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySerial failed ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 730
    :cond_1
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_1

    .line 736
    :cond_2
    const-string v1, ""

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 884
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 885
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 886
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 887
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 888
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 892
    :goto_0
    const-string v0, "%d*%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 890
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    sget-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 911
    :goto_0
    return-object v0

    .line 899
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    const-string v0, "Pad"

    sput-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 901
    sget-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    goto :goto_0

    .line 903
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    const-string v0, "Pad"

    sput-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 905
    sget-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    goto :goto_0

    .line 907
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    const-string v0, "Tv"

    sput-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    .line 909
    sget-object v0, Lcom/xiaomi/stat/d/e;->G:Ljava/lang/String;

    goto :goto_0

    .line 911
    :cond_3
    const-string v0, "Phone"

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 940
    sget-object v0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 941
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    .line 943
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/e;->F:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1003
    sget-boolean v0, Lcom/xiaomi/stat/d/e;->J:Z

    if-nez v0, :cond_1

    .line 1004
    sput-boolean v1, Lcom/xiaomi/stat/d/e;->J:Z

    .line 1006
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    invoke-static {p0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Z)V

    .line 1009
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1011
    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/p;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 1015
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/e;->I:Ljava/lang/String;

    .line 1017
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/d/e;->I:Ljava/lang/String;

    return-object v0
.end method

.method private static y(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/xiaomi/stat/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-static {}, Lcom/xiaomi/stat/d/e;->f()Ljava/util/List;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 430
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->z(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 436
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    :cond_2
    invoke-static {}, Lcom/xiaomi/stat/d/e;->g()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 439
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 441
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/stat/d/e;->n:Ljava/lang/String;

    .line 442
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 443
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/stat/d/e;->o:Ljava/lang/String;

    .line 446
    :cond_3
    return-object v1

    .line 432
    :cond_4
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->A(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method private static z(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    sget-object v0, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 466
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 468
    sget-object v1, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/e;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    sget-object v1, Lcom/xiaomi/stat/d/e;->m:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v2

    .line 483
    :goto_0
    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    const-string v1, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiListAboveLollipop failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
