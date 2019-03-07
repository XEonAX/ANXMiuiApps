.class public Lcom/xiaomi/stat/b;
.super Ljava/lang/Object;


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:[Ljava/lang/String; = null

.field private static final D:Ljava/lang/String; = ","

.field private static E:Z = false

.field private static F:Z = false

.field private static G:Ljava/lang/String; = null

.field private static H:Z = false

.field private static I:Ljava/lang/Object; = null

.field private static J:Z = false

.field public static final a:I = -0x1

.field public static final b:I = -0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = -0x1

.field public static final g:Ljava/lang/String; = "uploadInterval"

.field public static final h:Ljava/lang/String; = "configNetwork"

.field public static final i:Ljava/lang/String; = "configDelay"

.field public static final j:Ljava/lang/String; = "time"

.field public static final k:Ljava/lang/String; = "0.0"

.field public static final l:Ljava/lang/String; = "0-0"

.field public static final m:I = 0x0

.field private static final n:Ljava/lang/String; = "pref_statistic_enabled"

.field private static final o:Ljava/lang/String; = "pref_network_access_enabled"

.field private static final p:Ljava/lang/String; = "pref_user_id"

.field private static final q:Ljava/lang/String; = "pref_random_uuid"

.field private static final r:Ljava/lang/String; = "pref_using_custom_policy_"

.field private static final s:Ljava/lang/String; = "pref_custom_policy_state_"

.field private static final t:Ljava/lang/String; = "pref_app_previous_version"

.field private static final u:Ljava/lang/String; = "pref_is_first_usage"

.field private static final v:Ljava/lang/String; = "pref_last_dau_event_time"

.field private static final w:Ljava/lang/String; = "pref_all_sub_ids_data"

.field private static final x:Ljava/lang/String; = "pref_instance_id"

.field private static final y:Ljava/lang/String; = "pref_main_app_channel"

.field private static final z:Ljava/lang/String; = "pref_instance_id_last_use_time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x1f

    sput v0, Lcom/xiaomi/stat/b;->A:I

    .line 47
    const/16 v0, 0xf

    sput v0, Lcom/xiaomi/stat/b;->B:I

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/stat/b;->E:Z

    .line 56
    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 151
    sput p0, Lcom/xiaomi/stat/b;->A:I

    .line 152
    return-void
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_last_dau_event_time"

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 294
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    sput-object p0, Lcom/xiaomi/stat/b;->G:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_custom_policy_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_using_custom_policy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_statistic_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_statistic_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    const v0, 0x15180

    .line 160
    const/4 v1, 0x5

    if-gt p0, v1, :cond_1

    .line 161
    const/16 p0, 0xf

    .line 165
    :cond_0
    :goto_0
    sput p0, Lcom/xiaomi/stat/b;->B:I

    .line 166
    return-void

    .line 162
    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    .line 163
    goto :goto_0
.end method

.method public static b(J)V
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_instance_id_last_use_time"

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 326
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_user_id"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_network_access_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_network_access_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "don\'t call this on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const-wide/16 v0, 0x1388

    .line 87
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v2

    const-string v3, "pref_network_access_enabled"

    invoke-virtual {v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-wide/16 v0, 0x3e8

    .line 91
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(I)V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "configNetwork"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "configDelay"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 122
    sput-boolean p0, Lcom/xiaomi/stat/b;->F:Z

    .line 123
    return-void
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lcom/xiaomi/stat/b;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-boolean v0, Lcom/xiaomi/stat/b;->H:Z

    if-eqz v0, :cond_0

    .line 99
    monitor-exit v1

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/stat/b;->H:Z

    .line 104
    invoke-static {}, Lcom/xiaomi/stat/d/m;->i()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/stat/b;->F:Z

    .line 105
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/b;->G:Ljava/lang/String;

    .line 107
    sget-boolean v0, Lcom/xiaomi/stat/b;->F:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/stat/b;->G:Ljava/lang/String;

    const-string v2, "CN"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/stat/b;->F:Z

    .line 110
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

.method public static d(I)V
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "uploadInterval"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V

    .line 198
    return-void
.end method

.method public static d(Z)V
    .locals 0

    .prologue
    .line 138
    sput-boolean p0, Lcom/xiaomi/stat/b;->J:Z

    .line 139
    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_using_custom_policy_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_custom_policy_state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static e(I)V
    .locals 2

    .prologue
    .line 274
    if-gtz p0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_app_previous_version"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static e(Z)V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_is_first_usage"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Z)V

    .line 286
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/xiaomi/stat/b;->H:Z

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/xiaomi/stat/b;->d()V

    .line 118
    :cond_0
    sget-boolean v0, Lcom/xiaomi/stat/b;->F:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/xiaomi/stat/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 242
    sget-object v0, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    sget-object v2, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 244
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    :goto_1
    return-void

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 251
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_all_sub_ids_data"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    sget-object v0, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    sget-object v0, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    array-length v1, v0

    .line 256
    const/4 v0, 0x1

    :goto_2
    if-ge v0, v1, :cond_3

    .line 257
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    :cond_3
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_all_sub_ids_data"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 317
    sput-boolean p0, Lcom/xiaomi/stat/b;->E:Z

    .line 318
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_instance_id"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/xiaomi/stat/b;->J:Z

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_main_app_channel"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/xiaomi/stat/b;->A:I

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_random_uuid"

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 169
    sget v0, Lcom/xiaomi/stat/b;->B:I

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "configDelay"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()I
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "configNetwork"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static m()I
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "uploadInterval"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static n()V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_all_sub_ids_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    .line 239
    :cond_0
    return-void
.end method

.method public static o()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/xiaomi/stat/b;->C:[Ljava/lang/String;

    return-object v0
.end method

.method public static p()I
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_app_previous_version"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_is_first_usage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()J
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_last_dau_event_time"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_instance_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_main_app_channel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/xiaomi/stat/b;->E:Z

    return v0
.end method

.method public static v()J
    .locals 4

    .prologue
    .line 321
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_instance_id_last_use_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_random_uuid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
