.class public Lcom/alibaba/alibclinkpartner/d/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/d/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/b/c;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/b/c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/b/b;->a:Lcom/alibaba/alibclinkpartner/d/b/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/b/b;->a:Lcom/alibaba/alibclinkpartner/d/b/a;

    invoke-interface {v0, p1}, Lcom/alibaba/alibclinkpartner/d/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/b/b;->a:Lcom/alibaba/alibclinkpartner/d/b/a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alibclinkpartner/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/b/b;->a:Lcom/alibaba/alibclinkpartner/d/b/a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alibclinkpartner/d/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
