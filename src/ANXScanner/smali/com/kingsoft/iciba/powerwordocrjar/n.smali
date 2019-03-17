.class public Lcom/kingsoft/iciba/powerwordocrjar/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingsoft/iciba/powerwordocrjar/e;


# static fields
.field private static h:I


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:J

.field private g:I

.field private i:Lcom/kingsoft/iciba/powerwordocrjar/m;

.field private j:Lcom/kingsoft/iciba/powerwordocrjar/f;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e6

    sput v0, Lcom/kingsoft/iciba/powerwordocrjar/n;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/iciba/powerwordocrjar/f;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->f:J

    iput v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->g:I

    iput-boolean v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->a:Z

    iput v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->e:Landroid/os/Handler;

    iput-object p2, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->j:Lcom/kingsoft/iciba/powerwordocrjar/f;

    return-void
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/n;J)J
    .locals 1

    iput-wide p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/n;)Lcom/kingsoft/iciba/powerwordocrjar/f;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->j:Lcom/kingsoft/iciba/powerwordocrjar/f;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, "translate_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "translate_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-object v5

    :pswitch_0
    const-string v0, "symbols"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "symbols"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_0

    new-instance v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    invoke-direct {v7}, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;-><init>()V

    const-string v0, "word_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ph_en"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "word_symbol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    :goto_3
    const-string v2, "parts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v2, v1

    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v9, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;

    invoke-direct {v9}, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;-><init>()V

    const-string v10, "part"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    const-string v10, "means"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v0, v12, :cond_3

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2
    const-string v2, "ph_en"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    const-string v2, "ph_am"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    const-string v2, "ph_other"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ttsSymbol:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    iget-object v0, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :pswitch_1
    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    invoke-direct {v0}, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;-><init>()V

    const-string v1, "word_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_5
    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;

    invoke-direct {v1}, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;-><init>()V

    const-string v2, "translate_result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    iget-object v2, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_6
    move v0, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/n;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 6

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/kingsoft/iciba/powerwordocrjar/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "?c=word"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&timestamp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&sign="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "word"

    const-string v4, "1"

    invoke-static {v3, v4, v2}, Lcom/hanvon/ocrtranslate/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&sv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->g:I

    if-eqz v2, :cond_0

    const-string v2, "&tran_from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v3, "gzip,deflate"

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "word"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingsoft/iciba/powerwordocrjar/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingsoft/iciba/powerwordocrjar/n;)I
    .locals 1

    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    return v0
.end method


# virtual methods
.method public a(Lcom/kingsoft/iciba/powerwordocrjar/j;Ljava/lang/Object;)V
    .locals 8

    const-wide/16 v6, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    iget-wide v4, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->f:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget-wide v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->f:J

    sub-long v0, v2, v0

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a()Lcom/kingsoft/iciba/powerwordocrjar/h;

    move-result-object v2

    iget v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->b(Ljava/lang/Integer;Lcom/kingsoft/iciba/powerwordocrjar/e;)V

    iget-boolean v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->a:Z

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->e:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/o;

    invoke-direct {v1, p0}, Lcom/kingsoft/iciba/powerwordocrjar/o;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "baesInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "translate_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const-string v3, "translate_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->e:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/p;

    invoke-direct {v1, p0}, Lcom/kingsoft/iciba/powerwordocrjar/p;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->e:Landroid/os/Handler;

    new-instance v2, Lcom/kingsoft/iciba/powerwordocrjar/r;

    invoke-direct {v2, p0}, Lcom/kingsoft/iciba/powerwordocrjar/r;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/n;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->e:Landroid/os/Handler;

    new-instance v4, Lcom/kingsoft/iciba/powerwordocrjar/q;

    invoke-direct {v4, p0, v2}, Lcom/kingsoft/iciba/powerwordocrjar/q;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/n;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/kingsoft/iciba/powerwordocrjar/m;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/n;->b(Lcom/kingsoft/iciba/powerwordocrjar/m;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Lcom/kingsoft/iciba/powerwordocrjar/m;Z)V

    return-void
.end method

.method public a(Lcom/kingsoft/iciba/powerwordocrjar/m;Z)V
    .locals 1

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->i:Lcom/kingsoft/iciba/powerwordocrjar/m;

    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/m;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->b:Ljava/lang/String;

    iget v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/m;->b:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->a:Z

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    if-nez v0, :cond_0

    sget v0, Lcom/kingsoft/iciba/powerwordocrjar/n;->h:I

    :goto_0
    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->k:Ljava/lang/String;

    invoke-static {}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a()Lcom/kingsoft/iciba/powerwordocrjar/h;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Ljava/lang/Integer;Lcom/kingsoft/iciba/powerwordocrjar/e;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingsoft/iciba/powerwordocrjar/s;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/n;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->l:I

    goto :goto_0
.end method

.method public b(Lcom/kingsoft/iciba/powerwordocrjar/m;)V
    .locals 1

    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/m;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->b:Ljava/lang/String;

    iget v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/m;->b:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->g:I

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/n;->i:Lcom/kingsoft/iciba/powerwordocrjar/m;

    return-void
.end method
