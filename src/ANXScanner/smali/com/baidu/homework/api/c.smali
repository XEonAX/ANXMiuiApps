.class final Lcom/baidu/homework/api/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/baidu/homework/model/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/baidu/homework/network/Request;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/baidu/homework/network/NetworkCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/homework/network/Request;Ljava/lang/String;Lcom/baidu/homework/network/NetworkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/homework/api/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/homework/api/c;->b:Lcom/baidu/homework/network/Request;

    iput-object p3, p0, Lcom/baidu/homework/api/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/homework/api/c;->d:Lcom/baidu/homework/network/NetworkCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/baidu/homework/model/SearchResult;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/homework/api/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/homework/api/c;->b:Lcom/baidu/homework/network/Request;

    invoke-static {v0, v1}, Lcom/baidu/homework/network/e;->a(Landroid/content/Context;Lcom/baidu/homework/network/Request;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/homework/api/ZybAPI;->access$000(Lorg/json/JSONObject;)Lcom/baidu/homework/model/SearchResult;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/homework/api/c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/homework/model/SearchResult;->sid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/baidu/homework/model/SearchResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/homework/model/SearchResult;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/homework/api/c;->a()Lcom/baidu/homework/model/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/baidu/homework/model/SearchResult;

    iget-object v0, p0, Lcom/baidu/homework/api/c;->b:Lcom/baidu/homework/network/Request;

    invoke-virtual {v0}, Lcom/baidu/homework/network/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/homework/api/c;->d:Lcom/baidu/homework/network/NetworkCallback;

    invoke-interface {v0, p1}, Lcom/baidu/homework/network/NetworkCallback;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
