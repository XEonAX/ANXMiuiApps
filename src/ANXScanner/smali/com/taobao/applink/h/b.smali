.class Lcom/taobao/applink/h/b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/applink/h/a;


# direct methods
.method constructor <init>(Lcom/taobao/applink/h/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/h/b;->b:Lcom/taobao/applink/h/a;

    iput-object p2, p0, Lcom/taobao/applink/h/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/h/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/applink/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/applink/h/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
