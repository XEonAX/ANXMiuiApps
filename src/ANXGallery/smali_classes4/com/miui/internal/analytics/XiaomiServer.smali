.class public Lcom/miui/internal/analytics/XiaomiServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final C:Ljava/lang/String; = "http://tracking.miui.com/tracks"

.field private static final SUBJECT:Ljava/lang/String; = "miui_apps"

.field private static final TAG:Ljava/lang/String; = "XIAOMI_SERVER"

.field private static final TYPE:Ljava/lang/String; = "t"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final aL:Ljava/lang/String; = "https://tracking.miui.com/tracks"

.field private static final aM:Ljava/lang/String; = "s"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/analytics/XiaomiServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/miui/internal/analytics/XiaomiServer$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/XiaomiServer$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/XiaomiServer;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/XiaomiServer$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiServer;-><init>()V

    return-void
.end method

.method public static fromParamListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/internal/net/KeyValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    if-eqz p0, :cond_1

    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/net/KeyValuePair;

    .line 160
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/internal/net/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 161
    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v1}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v1}, Lcom/miui/internal/net/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    nop

    .line 172
    goto :goto_0

    .line 167
    :catch_0
    move-exception p0

    .line 168
    const-string v0, "XIAOMI_SERVER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert from param list to string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string p0, "XIAOMI_SERVER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pair: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 177
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/internal/analytics/XiaomiServer;
    .locals 1

    .line 54
    sget-object v0, Lcom/miui/internal/analytics/XiaomiServer;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/XiaomiServer;

    return-object v0
.end method

.method public static readResponseContent(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    nop

    .line 130
    const/16 v1, 0x400

    :try_start_0
    new-array v2, v1, [B

    .line 131
    nop

    .line 132
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 133
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz p0, :cond_1

    .line 141
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    goto :goto_1

    .line 142
    :catch_0
    move-exception p0

    .line 145
    :cond_1
    :goto_1
    nop

    .line 147
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    goto :goto_2

    .line 148
    :catch_1
    move-exception p0

    .line 135
    :goto_2
    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 136
    :catch_2
    move-exception v1

    .line 137
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    if-eqz p0, :cond_2

    .line 141
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 143
    goto :goto_3

    .line 142
    :catch_3
    move-exception p0

    .line 145
    :cond_2
    :goto_3
    nop

    .line 147
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 149
    :goto_4
    goto :goto_5

    .line 148
    :catch_4
    move-exception p0

    goto :goto_4

    .line 152
    :goto_5
    const/4 p0, 0x0

    return-object p0

    .line 139
    :goto_6
    if-eqz p0, :cond_3

    .line 141
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 143
    goto :goto_7

    .line 142
    :catch_5
    move-exception p0

    .line 145
    :cond_3
    :goto_7
    nop

    .line 147
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 149
    goto :goto_8

    .line 148
    :catch_6
    move-exception p0

    .line 149
    :goto_8
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 63
    return-void
.end method

.method public init()V
    .locals 0

    .line 58
    return-void
.end method

.method public send(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 66
    nop

    .line 67
    nop

    .line 68
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 69
    return v0

    .line 72
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 73
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 74
    nop

    .line 75
    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "https://tracking.miui.com/tracks"

    goto :goto_0

    .line 78
    :cond_1
    const-string v2, "http://tracking.miui.com/tracks"

    .line 80
    :goto_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 82
    new-instance v3, Lcom/miui/internal/net/KeyValuePair;

    const-string v4, "t"

    const-string v5, "miui_apps"

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v3, Lcom/miui/internal/net/KeyValuePair;

    const-string v4, "value"

    invoke-direct {v3, v4, p1}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p1, Lcom/miui/internal/net/KeyValuePair;

    const-string v3, "s"

    invoke-static {v1}, Lcom/miui/internal/analytics/SaltGenerate;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Lcom/miui/internal/net/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string p1, "POST"

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    invoke-static {v1}, Lcom/miui/internal/analytics/XiaomiServer;->fromParamListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 88
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 90
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    array-length v4, p1

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 96
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw p1

    .line 98
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 99
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_4

    .line 100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/internal/analytics/XiaomiServer;->readResponseContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    nop

    .line 116
    move v0, v3

    goto :goto_2

    .line 106
    :cond_3
    const-string v1, "XIAOMI_SERVER"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 118
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 120
    :goto_3
    goto :goto_7

    .line 119
    :catch_0
    move-exception p1

    goto :goto_3

    .line 116
    :catchall_1
    move-exception p1

    goto :goto_8

    .line 113
    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_4

    .line 111
    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_5

    .line 109
    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_6

    .line 116
    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_8

    .line 113
    :catch_4
    move-exception p1

    .line 114
    :goto_4
    :try_start_5
    const-string v2, "XIAOMI_SERVER"

    const-string v3, "Exception catched when sending data"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 116
    if-eqz v1, :cond_5

    .line 118
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 111
    :catch_5
    move-exception p1

    .line 112
    :goto_5
    :try_start_7
    const-string v2, "XIAOMI_SERVER"

    const-string v3, "IOException catched when sending data"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 116
    if-eqz v1, :cond_5

    .line 118
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 109
    :catch_6
    move-exception p1

    .line 110
    :goto_6
    :try_start_9
    const-string v2, "XIAOMI_SERVER"

    const-string v3, "UnsupportedEncodingException catched when sending data"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 116
    if-eqz v1, :cond_5

    .line 118
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    .line 123
    :cond_5
    :goto_7
    return v0

    .line 116
    :goto_8
    if-eqz v2, :cond_6

    .line 118
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 120
    goto :goto_9

    .line 119
    :catch_7
    move-exception v0

    .line 120
    :cond_6
    :goto_9
    throw p1
.end method
