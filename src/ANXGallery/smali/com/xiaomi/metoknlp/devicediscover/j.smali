.class Lcom/xiaomi/metoknlp/devicediscover/j;
.super Landroid/os/AsyncTask;
.source "DiscoverService.java"


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/devicediscover/m;

.field private mRunning:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/m;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->mRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/m;Lcom/xiaomi/metoknlp/devicediscover/a;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/j;-><init>(Lcom/xiaomi/metoknlp/devicediscover/m;)V

    return-void
.end method

.method private n(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {p1, v0}, Lcom/xiaomi/metoknlp/a/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    const-string v1, "real-ip"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->mRunning:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/xiaomi/metoknlp/devicediscover/j;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->mRunning:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/m;->d(Lcom/xiaomi/metoknlp/devicediscover/m;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->a:Lcom/xiaomi/metoknlp/devicediscover/m;

    invoke-static {v1}, Lcom/xiaomi/metoknlp/devicediscover/m;->d(Lcom/xiaomi/metoknlp/devicediscover/m;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    :cond_0
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/metoknlp/devicediscover/j;->mRunning:Z

    .line 231
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/j;->m(Ljava/lang/String;)V

    return-void
.end method
