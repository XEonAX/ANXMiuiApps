.class public Lcom/alibaba/alibclinkpartner/d/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/alibclinkpartner/d/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/alibaba/alibclinkpartner/d/a/h;)V
    .locals 2

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->a:Lcom/alibaba/alibclinkpartner/d/d/c;

    new-instance v1, Lcom/alibaba/alibclinkpartner/d/a/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alibclinkpartner/d/a/j;-><init>(Lcom/alibaba/alibclinkpartner/d/a/i;Ljava/lang/String;Lcom/alibaba/alibclinkpartner/d/a/h;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/d/d/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method
