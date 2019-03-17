.class Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$1;->a:Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask$1;->a:Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;

    invoke-virtual {v0}, Lcom/ali/auth/third/login/task/AbsLoginByCodeTask;->doWhenResultOk()V

    return-void
.end method
