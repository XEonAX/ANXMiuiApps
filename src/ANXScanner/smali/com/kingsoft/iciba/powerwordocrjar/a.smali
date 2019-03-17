.class Lcom/kingsoft/iciba/powerwordocrjar/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingsoft/iciba/a/a/a;


# instance fields
.field final synthetic a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;


# direct methods
.method constructor <init>(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;Ljava/lang/String;)Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->c(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;->iksCibaQueryViewResultListener(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->d(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/a;->a:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    invoke-static {v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->d(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;->iksCibaQueryResultListener(Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;)V

    :cond_1
    return-void
.end method
