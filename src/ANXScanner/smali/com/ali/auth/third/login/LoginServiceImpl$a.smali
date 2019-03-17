.class Lcom/ali/auth/third/login/LoginServiceImpl$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/auth/third/login/LoginServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/ali/auth/third/core/callback/CommonCallback;

.field final synthetic b:Lcom/ali/auth/third/login/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/LoginServiceImpl;Lcom/ali/auth/third/core/callback/CommonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/LoginServiceImpl$a;->b:Lcom/ali/auth/third/login/LoginServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/ali/auth/third/login/LoginServiceImpl$a;->a:Lcom/ali/auth/third/core/callback/CommonCallback;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    sget-object v0, Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;->INSTANCE:Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;

    invoke-virtual {v0}, Lcom/ali/auth/third/core/cookies/CookieManagerWrapper;->refreshCookie()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/login/LoginServiceImpl$a;->a:Lcom/ali/auth/third/core/callback/CommonCallback;

    invoke-interface {v0}, Lcom/ali/auth/third/core/callback/CommonCallback;->onSuccess()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/LoginServiceImpl$a;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/LoginServiceImpl$a;->a(Ljava/lang/Void;)V

    return-void
.end method
