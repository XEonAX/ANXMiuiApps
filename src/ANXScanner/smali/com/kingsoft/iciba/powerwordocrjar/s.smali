.class Lcom/kingsoft/iciba/powerwordocrjar/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/kingsoft/iciba/powerwordocrjar/n;


# direct methods
.method constructor <init>(Lcom/kingsoft/iciba/powerwordocrjar/n;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->c:Lcom/kingsoft/iciba/powerwordocrjar/n;

    iput-object p2, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->c:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Lcom/kingsoft/iciba/powerwordocrjar/n;J)J

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/j;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->c:Lcom/kingsoft/iciba/powerwordocrjar/n;

    iget-object v4, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Lcom/kingsoft/iciba/powerwordocrjar/n;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/iciba/powerwordocrjar/j;-><init>(ILjava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;)V

    iget-boolean v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->b:Z

    iput-boolean v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/j;->e:Z

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->c:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-static {v1}, Lcom/kingsoft/iciba/powerwordocrjar/n;->c(Lcom/kingsoft/iciba/powerwordocrjar/n;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/j;->a(I)V

    invoke-static {}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a()Lcom/kingsoft/iciba/powerwordocrjar/h;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/s;->c:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-static {v2}, Lcom/kingsoft/iciba/powerwordocrjar/n;->c(Lcom/kingsoft/iciba/powerwordocrjar/n;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingsoft/iciba/powerwordocrjar/h;->a(Lcom/kingsoft/iciba/powerwordocrjar/j;IZ)V

    return-void
.end method
