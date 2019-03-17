.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;
.super Ljava/lang/Object;
.source "RemoteDataPackingJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;,
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:J

.field private c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/json/JSONObject;

.field private h:J

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    return-void
.end method

.method public constructor <init>(IJZLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    .line 57
    iput v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:I

    .line 58
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    .line 83
    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:I

    .line 84
    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:J

    .line 85
    iput-object p5, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    .line 86
    iput-boolean p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    .line 87
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    .line 218
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 221
    return-void
.end method

.method private a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 3

    .prologue
    .line 117
    iget-wide v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a()V

    .line 121
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    .line 124
    :cond_0
    return-void
.end method

.method private b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_pa"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 225
    if-nez v0, :cond_0

    .line 226
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 227
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 228
    const-string v2, "category"

    const-string v3, "mistat_pa"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_pa"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 233
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 234
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 236
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 237
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 238
    const/4 v8, 0x3

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 240
    const-string v8, "name"

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v3, "start"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string v3, "end"

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 243
    const-string v3, "auto_end"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 244
    const-string v2, "env"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    return-void
.end method

.method private b(J)Z
    .locals 5

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    sub-long/2addr v0, p1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 132
    const-wide/16 v6, 0x0

    .line 133
    const-wide/16 v4, 0x0

    .line 134
    const/4 v2, 0x0

    .line 136
    new-instance v9, Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {v9}, Lcom/xiaomi/mistatistic/sdk/controller/h;-><init>()V

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a()V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/Boolean;)V

    .line 141
    const/4 v3, 0x0

    .line 142
    move-object/from16 v0, p0

    iget v10, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 144
    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(J)Ljava/util/List;

    move-result-object v3

    move-object v10, v3

    .line 152
    :goto_0
    if-eqz v10, :cond_a

    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 153
    const-string v3, "Packing, get %d events from local DB"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    const/4 v3, 0x0

    move v9, v3

    move v3, v2

    :goto_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 155
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    .line 157
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_0

    .line 158
    iget-wide v6, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 159
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    .line 161
    :cond_0
    iget-wide v4, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 163
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    if-nez v11, :cond_1

    .line 166
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v12, "endTS"

    iget-wide v14, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    invoke-virtual {v11, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 168
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v13, "content"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    :cond_1
    const-string v11, "mistat_session"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 189
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string/jumbo v12, "startTS"

    iget-wide v14, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    invoke-virtual {v11, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 154
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    .line 145
    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 147
    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(J)Ljava/util/List;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_0

    .line 175
    :cond_3
    :try_start_2
    const-string v11, "mistat_pv"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 197
    :catch_0
    move-exception v2

    move v10, v3

    move-object/from16 v16, v2

    move-wide v2, v6

    move-wide v6, v4

    move-object/from16 v4, v16

    .line 198
    :goto_3
    const-string v5, "doPacking exception"

    invoke-static {v5, v4}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v8

    move-wide v8, v2

    .line 200
    :goto_4
    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;Lorg/json/JSONArray;JJI)V

    return-object v3

    .line 177
    :cond_4
    :try_start_3
    const-string v11, "mistat_pt"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_2

    .line 179
    :cond_5
    const-string v11, "mistat_session_extra"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_2

    .line 181
    :cond_6
    const-string v11, "mistat_pa"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_2

    .line 183
    :cond_7
    const-string v11, "mistat_monitor"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto/16 :goto_2

    .line 186
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto/16 :goto_2

    .line 192
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Packing complete, total "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " records were packed and to be uploaded"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v2, v3

    move-object v3, v8

    :goto_5
    move v10, v2

    move-wide v8, v6

    move-wide v6, v4

    move-object v5, v3

    .line 199
    goto :goto_4

    .line 194
    :cond_a
    :try_start_4
    const-string v3, "No data available to be packed"

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 195
    const/4 v3, 0x0

    goto :goto_5

    .line 197
    :catch_1
    move-exception v3

    move v10, v2

    move-object/from16 v16, v3

    move-wide v2, v6

    move-wide v6, v4

    move-object/from16 v4, v16

    goto/16 :goto_3

    :cond_b
    move-object v10, v3

    goto/16 :goto_0
.end method

.method private c(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_monitor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 250
    if-nez v0, :cond_0

    .line 251
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    const-string v2, "category"

    const-string v3, "mistat_monitor"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_monitor"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 258
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 260
    const-string/jumbo v4, "start"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 261
    const-string v2, "end"

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v2, "value"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 264
    return-void
.end method

.method private d(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_session"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 268
    if-nez v0, :cond_0

    .line 269
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 270
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 271
    const-string v2, "category"

    const-string v3, "mistat_session"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_session"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 276
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 277
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 278
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 279
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 280
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 281
    const-string v4, "end"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 282
    const-string v2, "env"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 284
    return-void
.end method

.method private e(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_session_extra"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 290
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 291
    const-string v2, "category"

    const-string v3, "mistat_session_extra"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_session_extra"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 296
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 297
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 298
    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 299
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 300
    const-string v2, "auto_end"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 302
    return-void
.end method

.method private f(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_pv"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 306
    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 308
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 309
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 310
    const-string v3, "category"

    const-string v4, "mistat_pv"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string/jumbo v3, "values"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_pv"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 316
    :cond_0
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 317
    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    .line 318
    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    .line 319
    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 320
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 321
    if-ltz v4, :cond_1

    .line 322
    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 319
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 325
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 326
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_2
    const-string v1, ","

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 332
    const-string v1, ","

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 333
    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 339
    :goto_2
    return-void

    .line 337
    :cond_3
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2
.end method

.method private g(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_pt"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 343
    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 345
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 346
    const-string v2, "category"

    const-string v3, "mistat_pt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_pt"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 351
    :cond_0
    const-string/jumbo v1, "values"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 352
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 353
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 354
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string/jumbo v1, "value"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    :goto_1
    return-void

    .line 352
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 361
    const-string v2, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string/jumbo v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method private h(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 368
    const/4 v1, 0x0

    .line 369
    if-nez v0, :cond_6

    .line 370
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 371
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 372
    const-string v2, "category"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string/jumbo v2, "values"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 376
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 378
    :goto_0
    const-string v0, "event"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 380
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 381
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 382
    const-string/jumbo v1, "value"

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 408
    :goto_1
    return-void

    .line 384
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 385
    const-string v1, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v1, "type"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v1, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 388
    const-string/jumbo v1, "values"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 389
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 391
    :cond_1
    const-string v0, "mistat_extra"

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    const-string/jumbo v0, "values"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 394
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 395
    const-string v1, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string/jumbo v1, "type"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v1, "count"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "numeric"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    :cond_3
    const-string/jumbo v1, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 403
    :goto_2
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 404
    const-string v1, "params"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    :cond_4
    const-string/jumbo v1, "values"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 400
    :cond_5
    const-string/jumbo v1, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 205
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    const-string v2, "GMT + 8"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 207
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 208
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 211
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 212
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    .line 213
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public execute()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/16 v10, 0x1f4

    const/4 v9, 0x0

    .line 92
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-result-object v8

    .line 93
    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v2

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    iget v6, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    iget-boolean v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    .line 99
    :goto_0
    iget v0, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    if-lt v0, v10, :cond_2

    .line 100
    const-string v0, "Packing %d events >= MAX_PACKING_EVENT %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;)V

    .line 101
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 102
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->i:I

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()V

    .line 103
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    .line 114
    :goto_1
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    const-string v1, ""

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v2

    invoke-static {v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    iget v6, v8, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    iget-boolean v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "remote data packing job execute exception:"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    const-string v1, ""

    iget-boolean v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->j:Z

    move-wide v2, v12

    move-wide v4, v12

    move v6, v9

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJIZ)V

    goto :goto_1

    .line 105
    :cond_1
    :try_start_1
    const-string v0, "Packing, exceeded MAX_UPLOAD_TIMES 10"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
