.class Lcom/kingsoft/iciba/powerwordocrjar/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

.field final synthetic c:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;


# direct methods
.method constructor <init>(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;Landroid/content/Context;Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/c;->c:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    iput-object p2, p0, Lcom/kingsoft/iciba/powerwordocrjar/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingsoft/iciba/powerwordocrjar/c;->b:Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/c;->c:Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/c;->b:Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    iget-object v2, v2, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->showDetailMeaning(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
