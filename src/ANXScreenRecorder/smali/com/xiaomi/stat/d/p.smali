.class public Lcom/xiaomi/stat/d/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "mi_stat_pref"

.field private static b:Landroid/content/SharedPreferences; = null

.field private static c:Landroid/content/SharedPreferences$Editor; = null

.field private static final d:Ljava/lang/String; = "imei1"

.field private static final e:Ljava/lang/String; = "imei2"

.field private static final f:Ljava/lang/String; = "meid"

.field private static final g:Ljava/lang/String; = "mac"

.field private static final h:Ljava/lang/String; = "serial"

.field private static final i:Ljava/lang/String; = "s_t"

.field private static final j:Ljava/lang/String; = "l_t"

.field private static final k:Ljava/lang/String; = "e_t"

.field private static final l:Ljava/lang/String; = "od_checked"

.field private static final m:Ljava/lang/String; = "od_v"

.field private static final n:Ljava/lang/String; = "resued_old_instanced_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/xiaomi/stat/d/p;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "imei1"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)V

    .line 45
    sget-object v0, Lcom/xiaomi/stat/d/p;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 118
    const-string v0, "s_t"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 119
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "imei1"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 142
    const-string v0, "od_checked"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/xiaomi/stat/d/p;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const-string v0, "imei2"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 126
    const-string v0, "l_t"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 127
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const-string v0, "imei2"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/xiaomi/stat/d/p;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/xiaomi/stat/d/p;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/xiaomi/stat/d/p;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 158
    const-string v0, "resued_old_instanced_id"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const-string v0, "meid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 134
    const-string v0, "e_t"

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 135
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    const-string v0, "meid"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const-string v0, "mac"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "mac"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    const-string v0, "serial"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    const-string v0, "serial"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static f(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 114
    const-string v0, "s_t"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    const-string v0, "od_v"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static g(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 122
    const-string v0, "l_t"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 130
    const-string v0, "e_t"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 138
    const-string v0, "od_checked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    const-string v0, "od_v"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 154
    const-string v0, "resued_old_instanced_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static l(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/xiaomi/stat/d/p;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    const-class v1, Lcom/xiaomi/stat/d/p;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/d/p;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 37
    const-string v0, "mi_stat_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/p;->b:Landroid/content/SharedPreferences;

    .line 38
    sget-object v0, Lcom/xiaomi/stat/d/p;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/p;->c:Landroid/content/SharedPreferences$Editor;

    .line 40
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
