.class public Lcom/xiaomi/scanner/module/code/utils/URLInspector;
.super Landroid/os/AsyncTask;
.source "URLInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static APP_KEY:Ljava/lang/String; = null

.field private static PHISH_URL:Ljava/lang/String; = null

.field public static final RISK_PHISH:I = 0x1

.field public static final RISK_SAFETY:I = 0x0

.field public static final RISK_UNKNOWN:I = -0x1

.field public static final RISK_UNSAFETY:I = 0x2

.field private static SECRET_KEY:Ljava/lang/String;

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static UUID:Ljava/lang/String;


# instance fields
.field protected mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "URLInspector"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 29
    const-string v0, "http://srv.sec.miui.com/securityCheck/urlCheck"

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->PHISH_URL:Ljava/lang/String;

    .line 30
    const-string v0, "k-81118"

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->APP_KEY:Ljava/lang/String;

    .line 31
    const-string v0, "7e7d57c9c1ca73a42c1dea420901b8c6"

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->SECRET_KEY:Ljava/lang/String;

    .line 32
    const-string v0, "5cdd8678-cddf-4269-ab73-48387445bba8"

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->UUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    .line 36
    return-void
.end method

.method public static getHTML(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v6, "u":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 83
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 88
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "line":Ljava/lang/String;
    move-object v5, v3

    .line 91
    .local v5, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 104
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v7, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "Exception"

    invoke-static {v7, v8, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 v5, 0x0

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v7
.end method

.method private parserJson(Ljava/lang/String;)I
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 117
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "ret":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 119
    const-string v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, "success":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 121
    const-string v4, "phish"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 126
    .end local v1    # "ret":Lorg/json/JSONObject;
    .end local v2    # "success":I
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v5, "JSONException"

    invoke-static {v4, v5, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 46
    const/4 v4, -0x1

    .line 47
    .local v4, "ret":I
    if-eqz p1, :cond_1

    array-length v9, p1

    const/4 v10, 0x1

    if-lt v9, v10, :cond_1

    .line 48
    const/4 v9, 0x0

    aget-object v7, p1, v9

    .line 49
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 50
    sget-object v9, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v10, "null url"

    invoke-static {v9, v10}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 69
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 53
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    const-string v9, "url=%s&%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->UUID:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->digestMD5Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "md5":Ljava/lang/String;
    const v6, 0x3b9aca00

    .line 56
    .local v6, "timeout":I
    const-string v9, "?url=%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "sig":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->PHISH_URL:Ljava/lang/String;

    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 59
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sign="

    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 61
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "urlString":Ljava/lang/String;
    :try_start_0
    invoke-static {v8, v6}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->getHTML(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "json":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->parserJson(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 69
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "md5":Ljava/lang/String;
    .end local v5    # "sig":Ljava/lang/String;
    .end local v6    # "timeout":I
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "urlString":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    .line 65
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "md5":Ljava/lang/String;
    .restart local v5    # "sig":Ljava/lang/String;
    .restart local v6    # "timeout":I
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v8    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v10, "IOException"

    invoke-static {v9, v10, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;->onInspected(I)V

    .line 77
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setOnReceivedDataListener(Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    .line 42
    return-void
.end method
