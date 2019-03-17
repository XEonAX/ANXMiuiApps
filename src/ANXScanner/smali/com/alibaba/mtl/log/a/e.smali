.class public Lcom/alibaba/mtl/log/a/e;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# direct methods
.method public static f()I
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    if-eqz v2, :cond_0

    const-string v1, "SYSTEM"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "SYSTEM"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    const-string v2, "cdb"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string v2, "cdb"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    if-eqz v0, :cond_3

    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    const-string v1, "SystemConfig"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "server system config "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 39
    if-eqz v0, :cond_3

    .line 54
    :try_start_1
    const-string v1, "bg_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bg_interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/alibaba/mtl/log/a/a;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 69
    :cond_0
    :goto_0
    :try_start_2
    const-string v1, "fg_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fg_interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/alibaba/mtl/log/a/a;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 83
    :cond_1
    :goto_1
    :try_start_3
    const-string v1, "SystemConfig"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "UTDC.bSendToNewLogStore:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-boolean v4, Lcom/alibaba/mtl/log/a;->r:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const-string v1, "SystemConfig"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Config.BACKGROUND_PERIOD:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-string v1, "SystemConfig"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Config.FOREGROUND_PERIOD:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 88
    :try_start_4
    const-string v1, "discard"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    const-string v1, "discard"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 90
    if-ne v1, v6, :cond_4

    .line 91
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/mtl/log/a/a;->B:Z

    .line 92
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/upload/UploadEngine;->stop()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    :cond_2
    :goto_2
    :try_start_5
    const-string v1, "cdb"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string v1, "cdb"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 109
    invoke-static {}, Lcom/alibaba/mtl/log/a/e;->f()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 110
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/log/a/e$1;

    invoke-direct {v1}, Lcom/alibaba/mtl/log/a/e$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->b(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 126
    :cond_3
    :goto_3
    return-void

    .line 93
    :cond_4
    if-nez v1, :cond_2

    .line 94
    const/4 v1, 0x0

    :try_start_6
    sput-boolean v1, Lcom/alibaba/mtl/log/a/a;->B:Z

    .line 95
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V

    goto :goto_2

    .line 104
    :catch_0
    move-exception v1

    goto :goto_2

    .line 98
    :cond_5
    sget-boolean v1, Lcom/alibaba/mtl/log/a/a;->B:Z

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/mtl/log/a/a;->B:Z

    .line 100
    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    .line 123
    const-string v1, "SystemConfig"

    const-string v2, "updateconfig"

    invoke-static {v1, v2, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 118
    :catch_2
    move-exception v0

    goto :goto_3

    .line 79
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 65
    :catch_4
    move-exception v1

    goto/16 :goto_0
.end method
