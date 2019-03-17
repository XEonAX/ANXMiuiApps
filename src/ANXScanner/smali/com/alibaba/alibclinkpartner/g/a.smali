.class public Lcom/alibaba/alibclinkpartner/g/a;
.super Lcom/alibaba/alibclinkpartner/g/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/c/b;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alibclinkpartner/c/b;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/g/d;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    iput-object p3, p0, Lcom/alibaba/alibclinkpartner/g/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alibclinkpartner/g/a;->c:Ljava/util/List;

    iput p2, p0, Lcom/alibaba/alibclinkpartner/g/a;->d:I

    iput-object p5, p0, Lcom/alibaba/alibclinkpartner/g/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 4

    const-string v0, "ALPNavOpenClient"

    const-string v1, "execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u73b0\u5728\u7684context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/g/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x130

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/alibaba/alibclinkpartner/e/a;

    invoke-direct {v1}, Lcom/alibaba/alibclinkpartner/e/a;-><init>()V

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/g/a;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/e/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/g/a;->c:Ljava/util/List;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/e/a;->b:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/alibclinkpartner/g/a;->d:I

    iput v2, v1, Lcom/alibaba/alibclinkpartner/e/a;->c:I

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/g/a;->e:Ljava/util/List;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/e/a;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/g/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    sget-object v2, Lcom/alibaba/alibclinkpartner/b;->d:Lcom/alibaba/alibclinkpartner/d/c/a;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/alibclinkpartner/d/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0xcc

    goto :goto_0
.end method
