.class Lcom/ali/auth/third/ui/context/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/context/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/auth/third/ui/context/a;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/context/a$2;->b:Lcom/ali/auth/third/ui/context/a;

    iput-object p2, p0, Lcom/ali/auth/third/ui/context/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/auth/third/ui/context/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:window.HavanaBridge.onFailure(%s,\'\');"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ali/auth/third/ui/context/a$2;->b:Lcom/ali/auth/third/ui/context/a;

    iget v2, v2, Lcom/ali/auth/third/ui/context/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ali/auth/third/ui/context/a$2;->b:Lcom/ali/auth/third/ui/context/a;

    invoke-static {v1, v0}, Lcom/ali/auth/third/ui/context/a;->a(Lcom/ali/auth/third/ui/context/a;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "javascript:window.HavanaBridge.onFailure(%s,\'%s\');"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ali/auth/third/ui/context/a$2;->b:Lcom/ali/auth/third/ui/context/a;

    iget v2, v2, Lcom/ali/auth/third/ui/context/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ali/auth/third/ui/context/a$2;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ali/auth/third/ui/context/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
