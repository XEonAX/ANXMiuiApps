.class Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;
.super Ljava/lang/Object;
.source "FileTaskExecutor.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileTaskJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIds:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;[J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # [J

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;->mIds:[J

    .line 139
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v1, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;->mIds:[J

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;-><init>(Landroid/content/Context;[J)V

    .line 144
    .local v1, "task":Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;
    invoke-virtual {v1, v4, v4}, Lcom/miui/gallery/provider/cloudmanager/FileHandleTask;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)[J

    move-result-object v0

    .line 145
    .local v0, "results":[J
    new-instance v2, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;

    iget-object v3, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;->mIds:[J

    invoke-direct {v2, v3, v0}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;-><init>([J[J)V

    return-object v2
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;

    move-result-object v0

    return-object v0
.end method
