.class public Lcom/xiaomi/mistatistic/sdk/BuildSetting;
.super Ljava/lang/Object;
.source "BuildSetting.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/lang/Boolean;

.field private static d:Z

.field private static e:J

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a:Z

    .line 22
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    .line 25
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->e:J

    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    return-void
.end method

.method private static a()Z
    .locals 3

    .prologue
    .line 166
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "BS"

    const-string v2, "isAlphaBuild exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Z
    .locals 3

    .prologue
    .line 178
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "BS"

    const-string v2, "isDevBuild exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 190
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_STABLE_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "BS"

    const-string v2, "isStableBuild exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMiuiBuildCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, ""

    .line 223
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "S"

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const-string v0, "D"

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    const-string v0, "A"

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static isCTABuild()Z
    .locals 4

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "IS_CTA_BUILD"

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v2, "BS"

    const-string v3, "isCTABuild exception:"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDisabled(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 61
    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploading is disabled? false, sRespectUEP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;)V

    .line 74
    :goto_0
    return v0

    .line 65
    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    sget-wide v4, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->e:J

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUserExperienceProgramEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    .line 72
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->f:J

    .line 74
    :cond_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->c:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static isInternationalBuild()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 203
    :cond_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "IS_INTERNATIONAL_BUILD"

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v2, "BS"

    const-string v3, "isInternationalBuild exception:"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public static isMiTvExperienceUploadGrantedByUser(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 103
    .line 105
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_experience_enabled"

    const/4 v3, 0x1

    .line 106
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v2, "BS"

    const-string v3, "isMiTvExperienceUploadGrantedByUser exception:"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isRespectUEP()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->d:Z

    return v0
.end method

.method public static isSelfStats()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->b:Z

    return v0
.end method

.method public static isTestNetworkEnabled()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->a:Z

    return v0
.end method

.method public static isUploadDebugLogEnable(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "MI_STAT"

    const-string v2, "The statistics is disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 120
    :cond_0
    if-nez p0, :cond_1

    .line 121
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isUploadDebugLogEnable: context is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 125
    goto :goto_0

    .line 129
    :cond_2
    :try_start_0
    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    const-string v2, "isUploadDebugLogEnable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 133
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUploadDebugLogEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    :goto_1
    const-string v2, "BS"

    const-string v3, "isUploadDebugLogEnable exception:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static isUserExperienceProgramEnabled(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return v1

    .line 87
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isMiTvExperienceUploadGrantedByUser(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 99
    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 91
    const-string v2, "isUserExperienceProgramEnable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
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

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v2, "BS"

    const-string v3, "isUserExperienceProgramEnabled exception:"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method
