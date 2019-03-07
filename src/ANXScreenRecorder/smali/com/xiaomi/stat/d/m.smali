.class public Lcom/xiaomi/stat/d/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1c

.field private static final b:Ljava/lang/String; = "OSUtil"

.field private static final c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/Class;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/m;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    :goto_0
    :try_start_1
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :goto_1
    :try_start_2
    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    const-string v1, "isUserExperienceProgramEnable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/m;->f:Ljava/lang/reflect/Method;

    .line 39
    sget-object v0, Lcom/xiaomi/stat/d/m;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :goto_2
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_2

    .line 33
    :catch_1
    move-exception v0

    goto :goto_1

    .line 28
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 96
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "00000"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 103
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 112
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 149
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/d/m;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcom/xiaomi/stat/d/m;->d:Ljava/lang/reflect/Method;

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

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    const-string v2, "OSUtil"

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

.method public static a()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    .line 55
    :goto_1
    sget-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/m;->g:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "Android"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 165
    sget-object v0, Lcom/xiaomi/stat/d/m;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 169
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/d/m;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v2, "OSUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserExperiencePlanEnabled failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const-string v0, "ro.miui.region"

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 133
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "A"

    .line 144
    :goto_0
    return-object v0

    .line 135
    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    const-string v1, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "D"

    goto :goto_0

    .line 137
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    const-string v1, "IS_STABLE_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "S"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "OSUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRomBuildCode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/d/m;->e:Ljava/lang/Class;

    const-string v1, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
