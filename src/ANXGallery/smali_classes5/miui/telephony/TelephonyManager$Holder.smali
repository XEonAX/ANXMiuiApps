.class Lmiui/telephony/TelephonyManager$Holder;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lmiui/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lmiui/telephony/TelephonyManager$Holder;->getMiuiTelephonyManager()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/miui/internal/telephony/TelephonyManagerAndroidImpl;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    :goto_0
    sput-object v0, Lmiui/telephony/TelephonyManager$Holder;->INSTANCE:Lmiui/telephony/TelephonyManager;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMiuiTelephonyManager()Lmiui/telephony/TelephonyManager;
    .locals 5

    .line 39
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.telephony.TelephonyManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "cls":Ljava/lang/Class;
    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v1, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v2, v1, v0, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v2

    .line 42
    .end local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 45
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method
