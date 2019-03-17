.class Lcom/taobao/applink/c/d;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/taobao/applink/c/b;


# direct methods
.method constructor <init>(Lcom/taobao/applink/c/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/c/d;->d:Lcom/taobao/applink/c/b;

    iput-object p2, p0, Lcom/taobao/applink/c/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/applink/c/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/applink/c/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/taobao/applink/c/d;->d:Lcom/taobao/applink/c/b;

    iget-object v1, p0, Lcom/taobao/applink/c/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/applink/c/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/applink/c/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/applink/c/b;->a(Lcom/taobao/applink/c/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/applink/c/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
