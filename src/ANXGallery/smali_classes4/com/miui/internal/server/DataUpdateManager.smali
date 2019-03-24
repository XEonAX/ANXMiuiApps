.class public Lcom/miui/internal/server/DataUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;,
        Lcom/miui/internal/server/DataUpdateManager$Holder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "data-update"

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE:Ljava/lang/String; = "check_update_only_wifi_available"

.field public static final CHECK_UPDATE_ONLY_WIFI_AVAILABLE_DEFAULT:I = 0x1

.field public static final DATA_UPDATE_RECEIVE:Ljava/lang/String; = "com.xiaomi.dataUpdate.RECEIVE"

.field public static final DATA_UPDATE_REGISTRATION:Ljava/lang/String; = "com.xiaomi.dataUpdate.REGISTRATION"

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final EXTRA_WATER_MARK:Ljava/lang/String; = "water_mark"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final RECEIVER_META_DATA:Ljava/lang/String; = "com.xiaomi.dataUpdate"

.field private static final TAG:Ljava/lang/String; = "DataUpdateManager"

.field public static final URL:Ljava/lang/String;

.field private static final hD:Ljava/lang/String; = "http://api.comm.miui.com"

.field private static final hE:Ljava/lang/String; = "http://trial.api.comm.miui.com"

.field private static final hF:Ljava/lang/String;

.field private static final hG:Ljava/lang/String; = "f47c473853236172bf1a709714bda7a9"

.field private static final hH:I = 0x7530

.field private static final hI:J = 0x240c8400L

.field private static final hJ:Z = true


# instance fields
.field private hK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hL:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "http://trial.api.comm.miui.com"

    goto :goto_0

    :cond_0
    const-string v0, "http://api.comm.miui.com"

    :goto_0
    sput-object v0, Lcom/miui/internal/server/DataUpdateManager;->hF:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/internal/server/DataUpdateManager;->hF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cspmisc/service/version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/server/DataUpdateManager;->URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/internal/server/DataUpdateManager$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/internal/server/DataUpdateManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private S()Z
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 116
    const-string v3, "last_update_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 117
    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private T()Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 123
    nop

    .line 124
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 125
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    goto :goto_0

    .line 132
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private U()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "check_update_only_wifi_available"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private V()V
    .locals 8

    .line 147
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->W()V

    .line 149
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->X()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 160
    move-object v0, v1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :goto_0
    if-eqz v0, :cond_5

    .line 162
    :try_start_1
    new-instance v1, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;-><init>(Lcom/miui/internal/server/DataUpdateManager;Ljava/lang/String;)V

    .line 164
    const-string v0, "DataUpdateManager"

    invoke-virtual {v1}, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v0, v1, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->hP:I

    if-nez v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    iget-object v3, v1, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->hQ:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, v1, Lcom/miui/internal/server/DataUpdateManager$DataUpdateResponse;->hQ:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 172
    iget-object v5, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 173
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.xiaomi.dataUpdate.RECEIVE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v5, "water_mark"

    invoke-virtual {v6, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    const-string v3, "service_name"

    invoke-virtual {v6, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v2, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    :cond_1
    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    const-string v1, "last_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 185
    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 186
    const-string v1, "DataUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The distance last update time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :cond_4
    goto :goto_2

    .line 193
    :catch_1
    move-exception v0

    .line 194
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    :cond_5
    :goto_2
    return-void
.end method

.method private declared-synchronized W()V
    .locals 10

    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    .line 202
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.dataUpdate.REGISTRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 209
    const-string v3, "com.xiaomi.dataUpdate"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 210
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 213
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v5, "data-update"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    const-string v3, "DataUpdateManager"

    const-string v5, "Meta-data does not start with data-update tag"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lmiui/R$styleable;->DataUpdate:[I

    .line 225
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    :try_start_2
    sget v4, Lmiui/R$styleable;->DataUpdate_serviceName:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 230
    const/4 v5, 0x0

    array-length v6, v4

    :goto_2
    if-ge v5, v6, :cond_2

    .line 231
    iget-object v7, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 238
    :cond_2
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    goto :goto_4

    .line 238
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 233
    :catch_0
    move-exception v4

    .line 235
    :try_start_4
    const-string v4, "DataUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " micloud-push attrs error"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 242
    :goto_4
    goto :goto_6

    .line 238
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    :catch_1
    move-exception v2

    .line 241
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    :goto_6
    goto/16 :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    const-string v2, "DataUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{serviceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 248
    goto :goto_7

    .line 251
    :cond_4
    monitor-exit p0

    return-void

    .line 199
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private X()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 255
    const-string v1, "http.useragent"

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 259
    const-string v2, "DataUpdateManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 262
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v4, "content"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v4, Lcom/miui/internal/net/KeyValuePair;

    const-string v5, "content"

    invoke-direct {v4, v5, v1}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "f47c473853236172bf1a709714bda7a9"

    invoke-static {v3, v1, v4}, Lcom/miui/internal/util/DataUpdateUtils;->genUrlSign(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v3, Lcom/miui/internal/net/KeyValuePair;

    const-string v4, "appkey"

    iget-object v5, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v3, Lcom/miui/internal/net/KeyValuePair;

    const-string v4, "sign"

    invoke-direct {v3, v4, v1}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    nop

    .line 269
    nop

    .line 271
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/miui/internal/net/URLConnectionPostBuilder;

    sget-object v4, Lcom/miui/internal/server/DataUpdateManager;->URL:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/miui/internal/net/URLConnectionPostBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Lcom/miui/internal/net/URLConnectionPostBuilder;->setTimeout(I)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v4

    .line 273
    invoke-virtual {v4, v0}, Lcom/miui/internal/net/URLConnectionBuilder;->setHeadParams(Ljava/util/Map;)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v0

    const/4 v4, 0x1

    .line 274
    invoke-virtual {v0, v4}, Lcom/miui/internal/net/URLConnectionBuilder;->setDoInputOutput(Z)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v0

    const-string v4, "POST"

    .line 275
    invoke-virtual {v0, v4}, Lcom/miui/internal/net/URLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lcom/miui/internal/net/URLConnectionBuilder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/miui/internal/net/URLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 277
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/miui/internal/net/URLConnectionPostBuilder;->post(Ljava/util/List;)V

    .line 278
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 279
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 280
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 281
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    :try_start_2
    invoke-static {v2}, Lmiui/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 283
    if-eqz v3, :cond_4

    .line 284
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    .line 286
    nop

    .line 295
    if-eqz v2, :cond_0

    .line 297
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    const-string v2, "DataUpdateManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 286
    :cond_1
    return-object v3

    .line 287
    :cond_2
    :try_start_4
    const-string v3, "result"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    const-string v3, "DataUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send to server, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "description"

    .line 289
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "code"

    .line 290
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 295
    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 297
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 300
    goto :goto_2

    .line 298
    :catch_1
    move-exception v2

    .line 299
    const-string v3, "DataUpdateManager"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 303
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 306
    :cond_6
    return-object v1

    .line 295
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    if-eqz v2, :cond_7

    .line 297
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 300
    goto :goto_4

    .line 298
    :catch_2
    move-exception v2

    .line 299
    const-string v3, "DataUpdateManager"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 303
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v1
.end method

.method private Y()Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_0

    .line 329
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hL:Ljava/lang/String;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->hL:Ljava/lang/String;

    return-object v0
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/miui/internal/server/DataUpdateManager;->hF:Ljava/lang/String;

    return-object v0
.end method

.method private getContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 310
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 311
    const-string v1, "version"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    iget-object v1, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string v2, "imei"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 315
    iget-object v2, p0, Lcom/miui/internal/server/DataUpdateManager;->hK:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 316
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 317
    goto :goto_0

    .line 318
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/miui/internal/server/DataUpdateManager;
    .locals 1

    .line 90
    sget-object v0, Lcom/miui/internal/server/DataUpdateManager$Holder;->hS:Lcom/miui/internal/server/DataUpdateManager;

    return-object v0
.end method


# virtual methods
.method public update()V
    .locals 1

    .line 106
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_CTA_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/server/DataUpdateManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/miui/internal/server/DataUpdateManager;->V()V

    .line 111
    :cond_0
    return-void
.end method
