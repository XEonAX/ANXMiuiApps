.class Lcom/alibaba/alibclinkpartner/d/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/alibclinkpartner/f/b;

.field final synthetic b:Lcom/alibaba/alibclinkpartner/d/e/a;


# direct methods
.method constructor <init>(Lcom/alibaba/alibclinkpartner/d/e/a;Lcom/alibaba/alibclinkpartner/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/d/e/b;->b:Lcom/alibaba/alibclinkpartner/d/e/a;

    iput-object p2, p0, Lcom/alibaba/alibclinkpartner/d/e/b;->a:Lcom/alibaba/alibclinkpartner/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->c:Lcom/alibaba/alibclinkpartner/f/a;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/d/e/b;->a:Lcom/alibaba/alibclinkpartner/f/b;

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/f/a;->a(Lcom/alibaba/alibclinkpartner/f/b;)Lcom/alibaba/alibclinkpartner/f/c;

    return-void
.end method
