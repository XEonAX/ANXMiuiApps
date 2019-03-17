.class Lcom/ali/auth/third/ui/LoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/ui/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/ui/LoginActivity$1;->a:Lcom/ali/auth/third/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "login.LoginActivity"

    const-string v1, "click to destroy"

    invoke-static {v0, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity$1;->a:Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/LoginActivity;->finish()V

    invoke-static {}, Lcom/ali/auth/third/login/util/LoginStatus;->resetLoginFlag()V

    return-void
.end method
