.class public Lcom/miui/internal/analytics/DispatcherHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/DispatcherHelper$DefaultLoader;,
        Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;,
        Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "policy"

.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final B:Ljava/lang/String; = "version_regex"

.field private static final C:Ljava/lang/String; = "http://app.miui.com/mobile/analytics2.json"

.field private static final D:J = 0x64L

.field private static final E:Ljava/lang/String; = ".*"

.field private static final F:Ljava/lang/String; = ".*"

.field private static final G:Ljava/lang/String; = "normal"

.field private static final TAG:Ljava/lang/String; = "DispatcherHelper"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final u:Ljava/lang/String; = "servers"

.field private static final v:Ljava/lang/String; = "server_name"

.field private static final w:Ljava/lang/String; = "app_name"

.field private static final x:Ljava/lang/String; = "probability"

.field private static final y:Ljava/lang/String; = "items"

.field private static final z:Ljava/lang/String; = "id_regex"


# instance fields
.field private H:Lcom/miui/internal/analytics/DispatcherManager;

.field private I:Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    .line 119
    new-instance p1, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;-><init>(Lcom/miui/internal/analytics/DispatcherHelper;Lcom/miui/internal/analytics/DispatcherHelper$1;)V

    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper;->I:Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;

    .line 120
    new-instance p1, Lcom/miui/internal/analytics/DispatcherManager;

    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/internal/analytics/DispatcherManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper;->H:Lcom/miui/internal/analytics/DispatcherManager;

    .line 121
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/miui/internal/analytics/Item;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 211
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 212
    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 213
    new-instance v11, Lcom/miui/internal/analytics/Item;

    const-string v5, "id_regex"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "policy"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "version_regex"

    .line 214
    move-object/from16 v12, p3

    invoke-virtual {v4, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "probability"

    move-wide/from16 v13, p4

    invoke-virtual {v4, v5, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/miui/internal/analytics/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 213
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v2, "DispatcherHelper"

    const-string v3, "JSONException catched when get item register"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 216
    :catch_1
    move-exception v0

    .line 217
    const-string v2, "DispatcherHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to compile items regex for app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :cond_0
    nop

    .line 222
    :goto_1
    return-object v1
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 193
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 195
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 197
    const-string v4, "server_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :catch_0
    move-exception p1

    .line 200
    const-string v1, "DispatcherHelper"

    const-string v2, "JSONException catched when get servers"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 201
    :cond_0
    nop

    .line 203
    :goto_1
    return-object v0
.end method


# virtual methods
.method public dispatch()V
    .locals 15

    .line 143
    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/miui/internal/analytics/DispatcherHelper;->I:Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;

    invoke-interface {v0}, Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 147
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 149
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    .line 150
    invoke-static {v3}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    goto/16 :goto_5

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 155
    const-wide/16 v4, 0x64

    .line 156
    const-string v6, ".*"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 158
    :try_start_1
    const-string v7, "probability"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    nop

    .line 163
    move-wide v4, v7

    goto :goto_1

    .line 159
    :catch_0
    move-exception v7

    .line 163
    :goto_1
    :try_start_2
    const-string v7, "version"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    nop

    .line 168
    move-object v6, v7

    goto :goto_2

    .line 164
    :catch_1
    move-exception v7

    .line 168
    :goto_2
    :try_start_3
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    iget-object v7, p0, Lcom/miui/internal/analytics/DispatcherHelper;->H:Lcom/miui/internal/analytics/DispatcherManager;

    const-string v8, "servers"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/miui/internal/analytics/DispatcherHelper;->a(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/internal/analytics/DispatcherManager;->switchDispatcher(Ljava/util/Map;)V

    .line 172
    const-string v7, "app_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 175
    :try_start_4
    const-string v8, "items"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move-object v8, p0

    move-object v10, v7

    move-object v11, v6

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/miui/internal/analytics/DispatcherHelper;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    goto :goto_3

    .line 176
    :catch_2
    move-exception v3

    .line 177
    :try_start_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v14, Lcom/miui/internal/analytics/Item;

    const-string v9, ".*"

    const-string v10, "normal"

    move-object v8, v14

    move-object v11, v6

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/miui/internal/analytics/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_3
    iget-object v4, p0, Lcom/miui/internal/analytics/DispatcherHelper;->H:Lcom/miui/internal/analytics/DispatcherManager;

    invoke-virtual {v4, v7, v3}, Lcom/miui/internal/analytics/DispatcherManager;->dispatch(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 184
    :cond_1
    goto :goto_4

    .line 182
    :catch_3
    move-exception v3

    .line 183
    const-string v4, "DispatcherHelper"

    const-string v5, "JSONException catched when dispatch events"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 188
    :cond_2
    :goto_5
    return-void
.end method
