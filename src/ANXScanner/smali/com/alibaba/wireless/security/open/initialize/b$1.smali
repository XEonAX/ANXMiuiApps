.class Lcom/alibaba/wireless/security/open/initialize/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wireless/security/open/initialize/b;->b(Landroid/content/Context;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/wireless/security/open/initialize/b;


# direct methods
.method constructor <init>(Lcom/alibaba/wireless/security/open/initialize/b;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->e:Lcom/alibaba/wireless/security/open/initialize/b;

    iput-object p2, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->c:Z

    iput-boolean p5, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->e:Lcom/alibaba/wireless/security/open/initialize/b;

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->c:Z

    iget-boolean v4, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;Ljava/lang/String;ZZ)I

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->e:Lcom/alibaba/wireless/security/open/initialize/b;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Lcom/alibaba/wireless/security/open/initialize/b;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b$1;->e:Lcom/alibaba/wireless/security/open/initialize/b;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/initialize/b;->b(Lcom/alibaba/wireless/security/open/initialize/b;)V

    goto :goto_0
.end method
