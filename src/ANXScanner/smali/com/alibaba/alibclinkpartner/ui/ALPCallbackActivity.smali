.class public Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;

    invoke-direct {v1}, Lcom/alibaba/alibclinkpartner/d/e/a/i;-><init>()V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->l:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->q:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/g;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->d:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->c:Z

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->b:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    const-string v1, "taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/m;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/m;-><init>()V

    iput-object p1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_5
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/l;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/l;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/e/a;->e:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->finish()V

    if-eqz p3, :cond_1

    const-string v0, "pluginRules"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "pluginRules"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    if-nez p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    invoke-virtual {v2, v1, p2, v0}, Lcom/alibaba/alibclinkpartner/plugin/a;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "auth"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    if-eqz p3, :cond_2

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    if-nez p3, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_3
    invoke-virtual {v2, v1, p2, v0}, Lcom/alibaba/alibclinkpartner/plugin/a;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_alibc_callback_actiity"

    invoke-static {p0, v0}, Lcom/alibaba/alibclinkpartner/j/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->finish()V

    :cond_0
    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->d:Lcom/alibaba/alibclinkpartner/d/c/a;

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/d/c/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alibclinkpartner/e/a;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->c:I

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a:Lcom/alibaba/alibclinkpartner/e/a;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->a(Ljava/lang/String;Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALPCallbackActivity"

    const-string v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8f6c\u5931\u8d25,\u9519\u8bef\u4fe1\u606f\u4e3a:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->finish()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/ui/ALPCallbackActivity;->finish()V

    goto :goto_2
.end method
