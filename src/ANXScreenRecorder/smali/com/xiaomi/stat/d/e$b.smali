.class Lcom/xiaomi/stat/d/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "box"

.field private static final b:Ljava/lang/String; = "tvbox"

.field private static final c:Ljava/lang/String; = "projector"

.field private static final d:Ljava/lang/String; = "tv"

.field private static final e:Ljava/lang/String; = "mi_device_mac"

.field private static f:[Landroid/content/pm/Signature;

.field private static final g:Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1030
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082033b30820223a003020102020900a07a328482f70d2a300d06092a864886f70d01010505003035310b30090603550406130255533113301106035504080c0a43616c69666f726e69613111300f06035504070c084d6f756e7461696e301e170d3133303430313033303831325a170d3430303831373033303831325a3035310b30090603550406130255533113301106035504080c0a43616c69666f726e69613111300f06035504070c084d6f756e7461696e30820120300d06092a864886f70d01010105000382010d00308201080282010100ac678c9234a0226edbeb75a43e8e18f632d8c8a094c087fffbbb0b5e4429d845e36bffbe2d7098e320855258aa777368c18c538f968063d5d61663dc946ab03acbb31d00a27d452e12e6d42865e27d6d0ad2d8b12cf3b3096a7ec66a21db2a6a697857fd4d29fb4cdf294b3371d7601f2e3f190c0164efa543897026c719b334808e4f612fe3a3da589115fc30f9ca89862feefdf31a9164ecb295dcf7767e673be2192dda64f88189fd6e6ebd62e572c7997c2385a0ea9292ec799dee8f87596fc73aa123fb6f577d09ac0c123179c3bdbc978c2fe6194eb9fa4ab3658bfe8b44040bb13fe7809409e622189379fbc63966ab36521793547b01673ecb5f15cf020103a350304e301d0603551d0e0416041447203684e562385ada79108c4c94c5055037592f301f0603551d2304183016801447203684e562385ada79108c4c94c5055037592f300c0603551d13040530030101ff300d06092a864886f70d010105050003820101008d530fe05c6fe694c7559ddb5dd2c556528dd3cad4f7580f439f9a90a4681d37ce246b9a6681bdd5a5437f0b8bba903e39bac309fc0e9ee5553681612e723e9ec4f6abab6b643b33013f09246a9b5db7703b96f838fb27b00612f5fcd431bea32f68350ae51a4a1d012c520c401db7cccc15a7b19c4310b0c3bfc625ce5744744d0b9eeb02b0a4e7d51ed59849ce580b9f7c3062c84b9a0b13cc211e1c916c289820266a610801e3316c915649804571b147beadbf88d3b517ee04121d40630853f2f2a506bb788620de9648faeacff568e5033a666316bc2046526674ed3de25ceefdc4ad3628f1a230fd41bf9ca9f6a078173850dba555768fe1c191483ad9"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/stat/d/e$b;->g:Landroid/content/pm/Signature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2

    .prologue
    .line 1040
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1041
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1043
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1156
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1158
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1162
    :goto_0
    return-object v0

    .line 1159
    :catch_0
    move-exception v1

    .line 1160
    const-string v2, "DeviceUtil"

    const-string v3, "getStaticVariableValue exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1125
    const-string v0, ""

    .line 1130
    :try_start_0
    const-string v1, "mitv.common.ConfigurationManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1131
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1132
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1134
    const-string v3, "getProductCategory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1135
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1138
    const-string v2, "mitv.tv.TvContext"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1139
    const-string v3, "PRODUCT_CATEGORY_MITV"

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1140
    const-string v0, "tv"

    .line 1151
    :cond_0
    :goto_0
    return-object v0

    .line 1141
    :cond_1
    const-string v3, "PRODUCT_CATEGORY_MIBOX"

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1142
    const-string v0, "box"

    goto :goto_0

    .line 1143
    :cond_2
    const-string v3, "PRODUCT_CATEGORY_MITVBOX"

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 1144
    const-string v0, "tvbox"

    goto :goto_0

    .line 1145
    :cond_3
    const-string v3, "PRODUCT_CATEGORY_MIPROJECTOR"

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1146
    const-string v0, "projector"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v1

    .line 1149
    const-string v2, "DeviceUtil"

    const-string v3, "getMiTvProductCategory exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1105
    const/4 v3, 0x0

    .line 1106
    const-string v0, ""

    .line 1108
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1113
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1119
    :cond_0
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Reader;)V

    .line 1121
    :goto_1
    return-object v0

    .line 1116
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1117
    :goto_2
    :try_start_3
    const-string v3, "DeviceUtil"

    const-string v4, "catEntry exception"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1119
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Reader;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Reader;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1116
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1033
    sget-object v2, Lcom/xiaomi/stat/d/e$b;->f:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    .line 1034
    new-array v2, v0, [Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/xiaomi/stat/d/e$b;->c(Landroid/content/Context;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v2, v1

    sput-object v2, Lcom/xiaomi/stat/d/e$b;->f:[Landroid/content/pm/Signature;

    .line 1036
    :cond_0
    sget-object v2, Lcom/xiaomi/stat/d/e$b;->f:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/stat/d/e$b;->f:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    sget-object v3, Lcom/xiaomi/stat/d/e$b;->g:Landroid/content/pm/Signature;

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1057
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 1060
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mi_device_mac"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    :goto_0
    return-object v0

    .line 1064
    :catch_0
    move-exception v0

    .line 1069
    :cond_0
    const/4 v0, 0x0

    .line 1070
    :try_start_1
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 1071
    const-string v3, "ro.product.model"

    invoke-static {v3}, Lcom/xiaomi/stat/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-static {}, Lcom/xiaomi/stat/d/e$b;->a()Ljava/lang/String;

    move-result-object v4

    .line 1073
    const-string v5, "tv"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "batman"

    .line 1074
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "conan"

    .line 1075
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 1082
    :cond_1
    :goto_1
    const-string v1, "me2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1083
    const-string v0, "persist.service.bdroid.bdaddr"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1095
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1077
    :cond_2
    const-string v4, "augustrush"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "casablanca"

    .line 1078
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    move v0, v1

    .line 1079
    goto :goto_1

    .line 1084
    :cond_4
    const-string v1, "transformers"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MiBOX4C"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "dolphin-zorro"

    .line 1085
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1086
    :cond_6
    const-string v0, "/sys/class/net/wlan0/address"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1087
    :cond_7
    if-eqz v0, :cond_8

    .line 1089
    const-string v0, "/sys/class/net/eth0/address"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1092
    :cond_8
    const-string v0, "ro.boot.btmac"

    invoke-static {v0}, Lcom/xiaomi/stat/d/e$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1097
    :cond_9
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1098
    :catch_1
    move-exception v0

    .line 1099
    const-string v1, "DeviceUtil"

    const-string v2, "getMiTvMac exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1101
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;)Landroid/content/pm/Signature;
    .locals 3

    .prologue
    .line 1048
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1049
    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1050
    invoke-static {v0}, Lcom/xiaomi/stat/d/e$b;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    .line 1051
    :catch_0
    move-exception v0

    .line 1053
    const/4 v0, 0x0

    goto :goto_0
.end method
