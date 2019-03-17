.class Lcom/taobao/applink/c/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/taobao/applink/c/b$a;

.field final synthetic b:Lcom/taobao/applink/c/b;


# direct methods
.method constructor <init>(Lcom/taobao/applink/c/b;Lcom/taobao/applink/c/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/c/c;->b:Lcom/taobao/applink/c/b;

    iput-object p2, p0, Lcom/taobao/applink/c/c;->a:Lcom/taobao/applink/c/b$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/taobao/applink/c/c;->b:Lcom/taobao/applink/c/b;

    iget-object v1, p0, Lcom/taobao/applink/c/c;->a:Lcom/taobao/applink/c/b$a;

    invoke-static {v0, v1}, Lcom/taobao/applink/c/b;->a(Lcom/taobao/applink/c/b;Lcom/taobao/applink/c/b$a;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/applink/c/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
