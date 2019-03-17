.class public Lcom/uploader/portal/UploaderDependencyImpl;
.super Ljava/lang/Object;
.source "UploaderDependencyImpl.java"

# interfaces
.implements Lcom/uploader/export/IUploaderDependency;


# static fields
.field static context:Landroid/content/Context;


# instance fields
.field private environment:Lcom/uploader/export/IUploaderEnvironment;

.field private log:Lcom/uploader/export/IUploaderLog;

.field private statistics:Lcom/uploader/export/IUploaderStatistics;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    new-instance v1, Lcom/uploader/portal/UploaderEnvironmentImpl2;

    invoke-static {}, Lcom/uploader/export/UploaderGlobal;->retrieveContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uploader/portal/UploaderEnvironmentImpl2;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/uploader/portal/UploaderLogImpl;

    invoke-direct {v2}, Lcom/uploader/portal/UploaderLogImpl;-><init>()V

    new-instance v3, Lcom/uploader/portal/UploaderStatisticsImpl;

    invoke-direct {v3}, Lcom/uploader/portal/UploaderStatisticsImpl;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/uploader/portal/UploaderDependencyImpl;-><init>(Landroid/content/Context;Lcom/uploader/export/IUploaderEnvironment;Lcom/uploader/export/IUploaderLog;Lcom/uploader/export/IUploaderStatistics;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Lcom/uploader/portal/UploaderEnvironmentImpl2;

    invoke-direct {v0, p1}, Lcom/uploader/portal/UploaderEnvironmentImpl2;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/uploader/portal/UploaderLogImpl;

    invoke-direct {v1}, Lcom/uploader/portal/UploaderLogImpl;-><init>()V

    new-instance v2, Lcom/uploader/portal/UploaderStatisticsImpl;

    invoke-direct {v2}, Lcom/uploader/portal/UploaderStatisticsImpl;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/uploader/portal/UploaderDependencyImpl;-><init>(Landroid/content/Context;Lcom/uploader/export/IUploaderEnvironment;Lcom/uploader/export/IUploaderLog;Lcom/uploader/export/IUploaderStatistics;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uploader/export/IUploaderEnvironment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/uploader/export/IUploaderEnvironment;

    .prologue
    .line 37
    new-instance v0, Lcom/uploader/portal/UploaderLogImpl;

    invoke-direct {v0}, Lcom/uploader/portal/UploaderLogImpl;-><init>()V

    new-instance v1, Lcom/uploader/portal/UploaderStatisticsImpl;

    invoke-direct {v1}, Lcom/uploader/portal/UploaderStatisticsImpl;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/uploader/portal/UploaderDependencyImpl;-><init>(Landroid/content/Context;Lcom/uploader/export/IUploaderEnvironment;Lcom/uploader/export/IUploaderLog;Lcom/uploader/export/IUploaderStatistics;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uploader/export/IUploaderEnvironment;Lcom/uploader/export/IUploaderLog;Lcom/uploader/export/IUploaderStatistics;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "environment"    # Lcom/uploader/export/IUploaderEnvironment;
    .param p3, "log"    # Lcom/uploader/export/IUploaderLog;
    .param p4, "statistics"    # Lcom/uploader/export/IUploaderStatistics;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-static {}, Lcom/uploader/export/UploaderGlobal;->retrieveContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uploader/portal/UploaderDependencyImpl;->context:Landroid/content/Context;

    .line 47
    :goto_0
    iput-object p2, p0, Lcom/uploader/portal/UploaderDependencyImpl;->environment:Lcom/uploader/export/IUploaderEnvironment;

    .line 48
    iput-object p3, p0, Lcom/uploader/portal/UploaderDependencyImpl;->log:Lcom/uploader/export/IUploaderLog;

    .line 49
    iput-object p4, p0, Lcom/uploader/portal/UploaderDependencyImpl;->statistics:Lcom/uploader/export/IUploaderStatistics;

    .line 50
    return-void

    .line 44
    :cond_0
    sput-object p1, Lcom/uploader/portal/UploaderDependencyImpl;->context:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public getEnvironment()Lcom/uploader/export/IUploaderEnvironment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/uploader/portal/UploaderDependencyImpl;->environment:Lcom/uploader/export/IUploaderEnvironment;

    return-object v0
.end method

.method public getLog()Lcom/uploader/export/IUploaderLog;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/uploader/portal/UploaderDependencyImpl;->log:Lcom/uploader/export/IUploaderLog;

    return-object v0
.end method

.method public getStatistics()Lcom/uploader/export/IUploaderStatistics;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/uploader/portal/UploaderDependencyImpl;->statistics:Lcom/uploader/export/IUploaderStatistics;

    return-object v0
.end method
