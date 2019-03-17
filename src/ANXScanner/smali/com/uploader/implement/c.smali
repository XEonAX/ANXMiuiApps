.class public Lcom/uploader/implement/c;
.super Ljava/lang/Object;
.source "UploaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/implement/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/uploader/implement/c$a;

.field public final b:Lcom/uploader/export/UploaderEnvironment;

.field public final c:Landroid/content/Context;

.field d:Lcom/uploader/export/IUploaderEnvironment;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/uploader/export/IUploaderDependency;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "d"    # Lcom/uploader/export/IUploaderDependency;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/uploader/implement/c;->c:Landroid/content/Context;

    .line 39
    invoke-interface {p2}, Lcom/uploader/export/IUploaderDependency;->getEnvironment()Lcom/uploader/export/IUploaderEnvironment;

    move-result-object v0

    .line 40
    .local v0, "e":Lcom/uploader/export/IUploaderEnvironment;
    instance-of v1, v0, Lcom/uploader/export/UploaderEnvironment;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/uploader/export/UploaderEnvironment;

    .end local v0    # "e":Lcom/uploader/export/IUploaderEnvironment;
    iput-object v0, p0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    .line 110
    :goto_0
    new-instance v1, Lcom/uploader/implement/c$a;

    iget-object v2, p0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    invoke-direct {v1, v2}, Lcom/uploader/implement/c$a;-><init>(Lcom/uploader/export/UploaderEnvironment;)V

    iput-object v1, p0, Lcom/uploader/implement/c;->a:Lcom/uploader/implement/c$a;

    .line 111
    invoke-interface {p2}, Lcom/uploader/export/IUploaderDependency;->getStatistics()Lcom/uploader/export/IUploaderStatistics;

    move-result-object v1

    invoke-static {v1}, Lcom/uploader/implement/b;->a(Lcom/uploader/export/IUploaderStatistics;)V

    .line 112
    invoke-interface {p2}, Lcom/uploader/export/IUploaderDependency;->getLog()Lcom/uploader/export/IUploaderLog;

    move-result-object v1

    invoke-static {v1}, Lcom/uploader/implement/a;->a(Lcom/uploader/export/IUploaderLog;)V

    .line 113
    return-void

    .line 46
    .restart local v0    # "e":Lcom/uploader/export/IUploaderEnvironment;
    :cond_0
    invoke-interface {p2}, Lcom/uploader/export/IUploaderDependency;->getEnvironment()Lcom/uploader/export/IUploaderEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/uploader/implement/c;->d:Lcom/uploader/export/IUploaderEnvironment;

    .line 48
    new-instance v1, Lcom/uploader/implement/c$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/uploader/implement/c$1;-><init>(Lcom/uploader/implement/c;I)V

    iput-object v1, p0, Lcom/uploader/implement/c;->b:Lcom/uploader/export/UploaderEnvironment;

    goto :goto_0
.end method
