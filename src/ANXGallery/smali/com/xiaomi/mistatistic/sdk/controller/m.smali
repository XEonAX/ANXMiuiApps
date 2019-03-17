.class public Lcom/xiaomi/mistatistic/sdk/controller/m;
.super Ljava/lang/Object;
.source "PrefsHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->b:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is null, so return default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return p2

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "PPU"

    const-string v2, "getInt exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is null, so return default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-wide p2

    .line 45
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "PPU"

    const-string v2, "getLong exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is null, so return default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-object p2

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "PPU"

    const-string v2, "getString exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/m$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/m$1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v1, "PPU"

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Context is null, so return default value: false."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return v0

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string v2, "PPU"

    const-string v3, "getBoolean exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so return default value: false."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return p2

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "PPU"

    const-string v2, "getBoolean exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 247
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v1, "PPU"

    const-string v2, "clearMonitors exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "PPU"

    const-string v2, "putInt exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "PPU"

    const-string v2, "putLong exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "PPU"

    const-string v2, "putString exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v1, "PPU"

    const-string v2, "putBoolean exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p0, :cond_0

    .line 166
    const-string v1, "PPU"

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Context is null, so return default value: false."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    const-string v2, "PPU"

    const-string v3, "hasKey exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->b:Ljava/lang/String;

    .line 281
    :goto_0
    return-object v0

    .line 280
    :cond_0
    const-string v0, "mistat_monitor"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->b:Ljava/lang/String;

    .line 281
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    if-nez p0, :cond_1

    .line 294
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so return a empty string "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string p1, ""

    .line 301
    :cond_0
    :goto_0
    return-object p1

    .line 297
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 215
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so do nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "PPU"

    const-string v2, "putLongForMonitor exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    const-string v0, "PPU"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context is null, so return defaultValue"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-wide p2

    .line 236
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "PPU"

    const-string v2, "getLongForMonitor exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    .line 289
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const-string v0, "mistat"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 307
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 309
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 310
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 314
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
