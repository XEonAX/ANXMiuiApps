.class Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;
.super Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;
.source "TelephonyManagerAndroidImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 878
    invoke-direct {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMeid()Ljava/lang/String;
    .locals 4

    .line 883
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getMeid"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 884
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 885
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    return-object v0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 889
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .line 895
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getMeid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 896
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-array v2, v2, [Ljava/lang/Object;

    .line 897
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    return-object v0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;->logException(Ljava/lang/Exception;)V

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
