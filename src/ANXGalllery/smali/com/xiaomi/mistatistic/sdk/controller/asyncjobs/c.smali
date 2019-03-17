.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;
.super Ljava/lang/Object;
.source "RemoteDataUploadJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:I

    .line 40
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->e:Z

    .line 47
    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:I

    .line 48
    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    .line 49
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    .line 51
    iput-boolean p5, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->e:Z

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string v0, "seed:%s-%s-%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 143
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    const-string v2, "configVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "configVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "configVersion"

    const-string v3, "0.0"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Landroid/content/Context;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v1, "RDUJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload complete, result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lorg/json/JSONObject;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b(Lorg/json/JSONObject;)V

    .line 124
    const-string v0, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 138
    :goto_1
    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    :try_start_1
    const-string v0, "RDUJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result status isn\'t ok, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "RDUJ"

    const-string v2, "parseUploadingResult exception "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 160
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 161
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(J)V

    .line 165
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/s;->f()I

    move-result v5

    .line 58
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/controller/s;->e()J

    move-result-wide v6

    .line 59
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 60
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v9

    .line 61
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTestNetworkEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "http://test.data.mistat.xiaomi.srv/mistats/v2"

    move-object v4, v3

    .line 62
    :goto_0
    invoke-static {v9, v4, v8}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    iget-boolean v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->e:Z

    if-eqz v3, :cond_4

    invoke-static {v9}, Lcom/xiaomi/mistatistic/sdk/controller/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_1
    iget-boolean v9, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->e:Z

    if-nez v9, :cond_5

    .line 66
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v0, v1

    .line 74
    :cond_1
    :goto_2
    const-string v1, "channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->d()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "device_id"

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "id_type"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "policy"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "interval"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "RDUJ"

    const-string/jumbo v1, "upload policy:%d, upload interval:%d, mistat upload version:%d, upload %d events."

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 79
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    const-string/jumbo v1, "version"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    const-string v0, "RDUJ"

    const-string/jumbo v1, "stat_value:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->c()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {p0, v0, v1, v3}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->c()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-direct {p0, v3, v1, v5}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "stat_value"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "mistatv"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v0, "size"

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V

    invoke-static {v4, v8, v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    .line 114
    :goto_3
    return-void

    .line 61
    :cond_3
    const-string v3, "http://data.mistat.xiaomi.com/mistats/v2"

    move-object v4, v3

    goto/16 :goto_0

    .line 63
    :cond_4
    invoke-static {v9}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 72
    goto/16 :goto_2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "RDUJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteDataUploadJob exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->e:Z

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZLjava/lang/String;Z)V

    goto :goto_3
.end method
