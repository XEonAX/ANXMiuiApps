.class Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/ui/PailitaoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    iput-boolean v2, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Lcom/alibaba/imagesearch/utils/b$c;->e:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v4}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Lcom/alibaba/imagesearch/utils/b$c;->f:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v5}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Lcom/alibaba/imagesearch/utils/b$c;->e:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v6}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Lcom/alibaba/imagesearch/utils/b$c;->f:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v7}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/util/Map;)Ljava/util/Map;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "region"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitTask run mExtraImageIsPath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " localImage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    if-eqz v1, :cond_5

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;[B)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v8, v1, Landroid/os/Message;->what:I

    iget-object v3, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->k(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0, v8}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Z)Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    const-string v1, "no_network"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, v0, Lcom/alibaba/imagesearch/utils/b$c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v3, 0xc8

    if-ge v1, v3, :cond_8

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0, v8}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Z)Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    const-string v1, "image_too_small"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Lcom/alibaba/imagesearch/b;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :cond_9
    sget-object v3, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "baichuan sdk is not init waiting... mCancelled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tryouts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    if-eqz v3, :cond_a

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    goto/16 :goto_0

    :cond_a
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_9

    :cond_b
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    new-instance v3, Lcom/alibaba/imagesearch/c;

    iget-object v4, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-direct {v3, v4}, Lcom/alibaba/imagesearch/c;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Lcom/alibaba/imagesearch/b;)Lcom/alibaba/imagesearch/b;

    :cond_c
    iget-boolean v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->c:Z

    if-eqz v1, :cond_d

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-nez v1, :cond_f

    move v1, v2

    :goto_2
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Lcom/alibaba/imagesearch/b;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_e
    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0, v8}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Z)Z

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    const-string v0, "init_timeout"

    :goto_3
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_10
    const-string v0, "init_failed"

    goto :goto_3

    :cond_11
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0, v8}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Z)Z

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Lcom/alibaba/imagesearch/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v4}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/alibaba/imagesearch/b;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/imagesearch/a;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0, v2}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->finish()V

    :goto_4
    iput-boolean v8, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b:Z

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_5
    invoke-static {v1, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Lcom/alibaba/imagesearch/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    iget-object v2, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v2}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->m(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-static {v3}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a:Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/imagesearch/b;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/imagesearch/a;)V

    goto :goto_4

    :cond_13
    iget-object v0, v0, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    goto :goto_5
.end method
