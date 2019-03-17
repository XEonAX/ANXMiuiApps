.class Lcom/kingsoft/iciba/powerwordocrjar/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kingsoft/iciba/powerwordocrjar/n;


# direct methods
.method constructor <init>(Lcom/kingsoft/iciba/powerwordocrjar/n;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/p;->a:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/p;->a:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Lcom/kingsoft/iciba/powerwordocrjar/n;)Lcom/kingsoft/iciba/powerwordocrjar/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/p;->a:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-static {v0}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Lcom/kingsoft/iciba/powerwordocrjar/n;)Lcom/kingsoft/iciba/powerwordocrjar/f;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/p;->a:Lcom/kingsoft/iciba/powerwordocrjar/n;

    invoke-static {v1}, Lcom/kingsoft/iciba/powerwordocrjar/n;->b(Lcom/kingsoft/iciba/powerwordocrjar/n;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
