.class public Lcom/xiaomi/metoknlp/a;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static f:Z

.field private static g:I

.field private static h:Lcom/xiaomi/metoknlp/a;


# instance fields
.field private i:Landroid/content/SharedPreferences;

.field private j:Ljava/util/List;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/xiaomi/metoknlp/a;->f:Z

    .line 21
    sput v0, Lcom/xiaomi/metoknlp/a;->g:I

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/metoknlp/a;->h:Lcom/xiaomi/metoknlp/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/xiaomi/metoknlp/a;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/a;->j:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->mContext:Landroid/content/Context;

    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method

.method public static g()Lcom/xiaomi/metoknlp/a;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/xiaomi/metoknlp/a;->h:Lcom/xiaomi/metoknlp/a;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/xiaomi/metoknlp/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/metoknlp/a;->h:Lcom/xiaomi/metoknlp/a;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/xiaomi/metoknlp/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/metoknlp/a;->h:Lcom/xiaomi/metoknlp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/metoknlp/f;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/xiaomi/metoknlp/a;->j:Ljava/util/List;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1

    .line 78
    :cond_0
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    const-string v1, "config_update_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/xiaomi/metoknlp/a;->j:Ljava/util/List;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/metoknlp/f;

    .line 91
    invoke-interface {v0}, Lcom/xiaomi/metoknlp/f;->onConfigurationChanged()V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "m_s_u"

    const-string v2, "https://metok.sys.miui.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "f_d_d"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()J
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "d_m_i"

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "d_n_s"

    sget-boolean v2, Lcom/xiaomi/metoknlp/a;->f:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()J
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "d_s_t"

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "d_s_c_t"

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v1, "config_update_time"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x5

    .line 97
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->Y()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/xiaomi/metoknlp/a/e;->W()Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v0, "collect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "t_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/metoknlp/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v0, v1

    .line 109
    :cond_3
    const-string v2, "collect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "t_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaomi/metoknlp/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 118
    :goto_1
    if-eq v0, v10, :cond_0

    move-object v0, v2

    .line 124
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    const-string v5, "s_f"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v5, "s_f"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    const-string v6, "f_d_d"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/xiaomi/metoknlp/a/e;->a(I)Z

    move-result v6

    .line 130
    iget-object v7, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 131
    const-string v8, "s_f"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v8, "f_d_d"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v6, "m_s_u"

    const-string v8, "m_s_u"

    const-string v9, "https://metok.sys.miui.com"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 137
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 138
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMddHHmm"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 140
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 141
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    :cond_5
    invoke-virtual {p0, v3}, Lcom/xiaomi/metoknlp/a;->c(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/a;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 113
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 114
    if-ne v0, v10, :cond_3

    goto/16 :goto_1

    .line 155
    :cond_7
    const-string v0, "collect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/metoknlp/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 159
    :cond_8
    const-string v0, "collect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/metoknlp/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 168
    :goto_2
    if-eq v1, v10, :cond_0

    .line 174
    :cond_9
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/xiaomi/metoknlp/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 178
    const-string v2, "d_m_i"

    const-string v4, "d_m_i"

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v2, "d_n_s"

    const-string v4, "d_n_s"

    sget v5, Lcom/xiaomi/metoknlp/a;->g:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/metoknlp/a/e;->a(I)Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v2, "d_s_t"

    const-string v4, "d_s_t"

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v2, "d_s_c_t"

    const-string v4, "d_s_c_t"

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    invoke-virtual {p0, v3}, Lcom/xiaomi/metoknlp/a;->c(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/a;->i()V

    goto/16 :goto_0

    .line 163
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 164
    if-ne v1, v10, :cond_8

    goto :goto_2

    .line 184
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
