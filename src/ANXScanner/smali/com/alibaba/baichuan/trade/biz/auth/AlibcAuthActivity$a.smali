.class Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;-><init>(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->e:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onCancel()V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->finish()V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "FAIL_SYS_ACCESS_TOKEN_STOP_SERVICE"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->e:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->a(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;Z)Z

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->a(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;)V

    invoke-virtual {p0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->onReTry()V

    goto :goto_0
.end method

.method public onReTry()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->e:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onReTry()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->e:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onSuccess()V

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    sget v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity$a;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;->finish()V

    return-void
.end method
