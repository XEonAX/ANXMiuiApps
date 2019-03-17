.class public Lcom/ta/utdid2/c/a/c;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/ta/utdid2/c/a/b$a;

.field private a:Lcom/ta/utdid2/c/a/b;

.field private a:Lcom/ta/utdid2/c/a/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->g:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    .line 35
    iput-boolean p4, p0, Lcom/ta/utdid2/c/a/c;->g:Z

    .line 36
    iput-boolean p5, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    .line 37
    iput-object p3, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "t"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    :goto_0
    invoke-static {v2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 66
    :goto_1
    iget-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    if-eqz v2, :cond_12

    .line 67
    :cond_1
    if-eqz p1, :cond_12

    .line 68
    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 69
    invoke-direct {p0, p2}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 70
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    if-eqz v2, :cond_12

    .line 72
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 74
    const/4 v3, 0x0

    .line 73
    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v2

    .line 72
    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 75
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    const-string v3, "t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/ta/utdid2/c/a/b;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v2

    .line 76
    if-nez p5, :cond_c

    .line 77
    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 79
    :try_start_2
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 80
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 82
    const/4 v5, 0x0

    .line 80
    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-wide v4, v0

    move-wide v0, v2

    .line 131
    :cond_2
    :goto_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 132
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    iget-boolean v6, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-eqz v6, :cond_4

    .line 134
    iget-boolean v6, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    const-string v1, "t2"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v0

    .line 143
    const-string v1, "t2"

    invoke-interface {v0, v1, v2, v3}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;

    .line 144
    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b$a;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    :cond_6
    :goto_3
    return-void

    .line 50
    :catch_0
    move-exception v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 56
    :cond_7
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    goto/16 :goto_1

    .line 59
    :cond_8
    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    goto/16 :goto_1

    .line 63
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    goto/16 :goto_1

    .line 83
    :cond_a
    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    .line 85
    :try_start_4
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v5, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 87
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    move-wide v4, v0

    move-wide v0, v2

    .line 88
    goto/16 :goto_2

    :cond_b
    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 89
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 90
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 92
    const/4 v5, 0x0

    .line 90
    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    move-wide v4, v0

    move-wide v0, v2

    .line 94
    goto/16 :goto_2

    .line 95
    :cond_c
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string v5, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v4

    .line 96
    :try_start_5
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    const-string v1, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Lcom/ta/utdid2/c/a/b;->getLong(Ljava/lang/String;J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-wide v0

    .line 97
    cmp-long v2, v4, v0

    if-gez v2, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_d

    .line 99
    :try_start_6
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 100
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 102
    const/4 v3, 0x0

    .line 100
    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto/16 :goto_2

    .line 124
    :catch_1
    move-exception v2

    move-wide v2, v4

    :goto_4
    move-wide v4, v2

    goto/16 :goto_2

    .line 103
    :cond_d
    cmp-long v2, v4, v0

    if-lez v2, :cond_e

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    .line 105
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 107
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 108
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 109
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 111
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 112
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_10

    .line 113
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 114
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 116
    const/4 v3, 0x0

    .line 114
    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto/16 :goto_2

    .line 117
    :cond_10
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 119
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 121
    const/4 v3, 0x0

    .line 119
    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 146
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 124
    :catch_3
    move-exception v2

    move-wide v2, v0

    move-wide v0, v4

    goto :goto_4

    :catch_4
    move-exception v4

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_4

    :catch_5
    move-exception v0

    move-wide v0, v2

    move-wide v2, v4

    goto :goto_4

    :cond_11
    move-wide v4, v0

    move-wide v0, v2

    goto/16 :goto_2

    :cond_12
    move-wide v8, v4

    move-wide v4, v0

    move-wide v0, v8

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lcom/ta/utdid2/c/a/d;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ta/utdid2/c/a/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 157
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_1

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 165
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V
    .locals 6

    .prologue
    .line 176
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 177
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v2}, Lcom/ta/utdid2/c/a/b$a;->b()Lcom/ta/utdid2/c/a/b$a;

    .line 180
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 181
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-interface {v2}, Lcom/ta/utdid2/c/a/b$a;->commit()Z

    .line 201
    :cond_1
    return-void

    .line 182
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 185
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 186
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 187
    :cond_3
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 188
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 189
    :cond_4
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 190
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 191
    :cond_5
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 192
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;F)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 193
    :cond_6
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 195
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 194
    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Z)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0
.end method

.method private a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    .line 204
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 205
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {p1}, Lcom/ta/utdid2/c/a/b;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 209
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    :cond_1
    return-void

    .line 210
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 213
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 214
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 215
    :cond_3
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 216
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 217
    :cond_4
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 218
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 219
    :cond_5
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 220
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    :cond_6
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 223
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 222
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Z

    move-result v0

    .line 234
    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/ta/utdid2/c/a/c;->commit()Z

    .line 239
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->b()Z

    .line 250
    return-void
.end method


# virtual methods
.method public commit()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x1

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_1

    .line 371
    iget-boolean v4, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-nez v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const-string v5, "t"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 386
    :cond_2
    const/4 v2, 0x0

    .line 388
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 392
    :goto_0
    invoke-static {v2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 393
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-nez v3, :cond_7

    .line 396
    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_3

    .line 398
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 400
    iget-boolean v1, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-nez v1, :cond_6

    .line 401
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, v1, v3}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 405
    :goto_1
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v1}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 415
    :cond_3
    :goto_2
    const-string v1, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 417
    const-string v1, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 418
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v1, :cond_5

    .line 420
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    if-eqz v1, :cond_5

    .line 421
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 422
    const/4 v3, 0x0

    .line 421
    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    :cond_5
    :goto_3
    return v0

    .line 389
    :catch_0
    move-exception v3

    .line 390
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 403
    :cond_6
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v3}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 408
    :cond_7
    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    invoke-interface {v3}, Lcom/ta/utdid2/c/a/b$a;->commit()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 410
    goto :goto_2

    .line 424
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->b()Z

    .line 434
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    :goto_0
    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/c/a/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->c()V

    .line 303
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    .line 310
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->c()V

    .line 315
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    .line 322
    :cond_1
    return-void
.end method
