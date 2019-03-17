.class public Lcom/alibaba/imagesearch/ui/PailitaoActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/alibaba/imagesearch/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

.field private d:Lcom/alibaba/imagesearch/ui/a;

.field private e:Lcom/alibaba/imagesearch/b;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Z

.field private i:Landroid/graphics/RectF;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Ljava/lang/String;

.field private volatile l:Z

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/Handler;

.field private o:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "check_file_error"

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "no_network"

    const-string v2, "\u65e0\u7f51\u7edc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "image_too_small"

    const-string v2, "\u56fe\u7247\u592a\u5c0f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "init_timeout"

    const-string v2, "\u521d\u59cb\u5316\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "init_failed"

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "filepath_is_null"

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "activity_is_null"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "file_not_exist"

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "system_error"

    const-string v2, "\u7cfb\u7edf\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "check_param_error"

    const-string v2, "\u4e0a\u4f20\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "upload_failed"

    const-string v2, "\u4e0a\u4f20\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "\u4e0a\u4f20\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "ANDROID_SYS_NO_NETWORK"

    const-string v2, "\u4e0a\u4f20\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    const-string v1, "search_timeout"

    const-string v2, "\u641c\u7d22\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    new-instance v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$1;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->m:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$3;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Lcom/alibaba/imagesearch/b;)Lcom/alibaba/imagesearch/b;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e:Lcom/alibaba/imagesearch/b;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j:Ljava/util/Map;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "pageConfig"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j:Ljava/util/Map;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "pathtype"

    const-string v2, "extra_image_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h:Z

    const-string v0, "extra_rect"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pathtype = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const-string v0, "extra_image"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "extra_image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->a()[B

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g:[B

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->b()V

    goto :goto_0

    :cond_4
    const-string v0, "extra_image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$6;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    return p1
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->n:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic b(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :cond_2
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eb2\uff0c\u56fe\u7247\u641c\u7d22\u5931\u8d25\u4e86\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~~ ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alibaba/imagesearch/ui/PailitaoActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$7;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Lcom/alibaba/imagesearch/ui/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->requestWindowFeature(I)Z

    const/16 v0, 0x400

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :cond_2
    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eb2\uff0c\u56fe\u7247\u641c\u7d22\u5931\u8d25\u4e86("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alibaba/imagesearch/ui/PailitaoActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$9;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u91cd\u8bd5"

    new-instance v2, Lcom/alibaba/imagesearch/ui/PailitaoActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$8;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/imagesearch/ui/PailitaoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h()V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/imagesearch/ui/a;

    new-instance v1, Lcom/alibaba/imagesearch/ui/PailitaoActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$4;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/imagesearch/ui/a;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/a;->dismiss()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    new-instance v1, Lcom/alibaba/imagesearch/ui/PailitaoActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$5;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/ui/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    const-string v1, "\u52aa\u529b\u641c\u7d22\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/ui/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/a;->show()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g()V

    return-void
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/a;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doNormalStart mUploadCompleted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e()V

    new-instance v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c:Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c:Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->start()V

    return-void
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c:Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c:Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c:Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e:Lcom/alibaba/imagesearch/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e:Lcom/alibaba/imagesearch/b;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/imagesearch/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g:[B

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method private i()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Lcom/alibaba/imagesearch/b;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e:Lcom/alibaba/imagesearch/b;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f()V

    invoke-direct {p0, p1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish cancelled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->setResult(I)V

    const-string v0, "RESULT_CANCELED"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    const-string v0, "========= searchImage finish ========"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->setResult(ILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    const-string v0, "========= searchImage finish ========"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->enableFullscreenLoadingPage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->c()V

    :cond_0
    const-string v0, "layout"

    const-string v1, "com_alibaba_imagesearch_activity_pailitao"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_1
    const-string v0, "id"

    const-string v1, "com_taobao_tae_sdk_pailitao_preview_root"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/imagesearch/PailitaoSettings;->loadingPageBGColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v0, "id"

    const-string v1, "com_taobao_tae_sdk_pailitao_preview"

    invoke-static {p0, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->j:Ljava/util/Map;

    const-string v1, "pailitao_preview_image_margin_top"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g:[B

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    const-string v0, "check_file_error"

    invoke-direct {p0, v0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "state_upload"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "retry init BaiChuan SDK"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/alibaba/imagesearch/ui/PailitaoActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity$2;-><init>(Lcom/alibaba/imagesearch/ui/PailitaoActivity;)V

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->asyncInit(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->d:Lcom/alibaba/imagesearch/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e:Lcom/alibaba/imagesearch/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->e:Lcom/alibaba/imagesearch/b;

    invoke-interface {v0}, Lcom/alibaba/imagesearch/b;->a()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PailitaoLoading"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "extra_image"

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "state_upload"

    iget-boolean v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g:[B

    if-eqz v0, :cond_0

    const-string v0, "extra_image"

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->g()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/alibaba/imagesearch/ui/PailitaoActivity;->h()V

    return-void
.end method
