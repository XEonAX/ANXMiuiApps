.class public Lcom/miui/gallery/editor/photo/sdk/CleanService;
.super Landroid/app/job/JobService;
.source "CleanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;
    }
.end annotation


# instance fields
.field private mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/sdk/CleanService;Landroid/app/job/JobParameters;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/CleanService;
    .param p1, "x1"    # Landroid/app/job/JobParameters;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->parse(Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/sdk/CleanService;Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;)Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/sdk/CleanService;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    return-object p1
.end method

.method private parse(Landroid/app/job/JobParameters;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-string v5, "extra_file_paths"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "paths":[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 71
    :cond_0
    return-object v1

    .end local v3    # "paths":[Ljava/lang/String;
    :cond_1
    move-object v3, v1

    .line 60
    goto :goto_0

    .line 64
    .restart local v3    # "paths":[Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 66
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static schedule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3e8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "context can\'t be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 174
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 175
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "illegal path"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 178
    :cond_1
    const-string v8, "CleanService"

    const-string v9, "received file: %s"

    invoke-static {v8, v9, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v8, "jobscheduler"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobScheduler;

    .line 181
    .local v7, "scheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v7}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v4

    .line 183
    .local v4, "jobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v2, 0x0

    .line 184
    .local v2, "exists":Landroid/app/job/JobInfo;
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 185
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 186
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v9

    if-ne v9, v13, :cond_2

    .line 187
    move-object v2, v3

    .line 193
    .end local v3    # "job":Landroid/app/job/JobInfo;
    :cond_3
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 194
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-nez v2, :cond_4

    .line 195
    const-string v8, "CleanService"

    const-string v9, "non job exists, create one"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v8, "extra_file_paths"

    new-array v9, v12, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    :goto_0
    new-instance v8, Landroid/app/job/JobInfo$Builder;

    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/miui/gallery/editor/photo/sdk/CleanService;

    invoke-direct {v9, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v8, v13, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 212
    invoke-virtual {v8, v11}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 213
    invoke-virtual {v8, v12}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 214
    invoke-virtual {v8, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v8

    .line 215
    invoke-virtual {v8}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 216
    .restart local v3    # "job":Landroid/app/job/JobInfo;
    invoke-virtual {v7, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 217
    return-void

    .line 198
    .end local v3    # "job":Landroid/app/job/JobInfo;
    :cond_4
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    const-string v9, "extra_file_paths"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, "previous":[Ljava/lang/String;
    new-instance v5, Landroid/util/ArraySet;

    array-length v8, v6

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v5, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 200
    .local v5, "paths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v8

    new-array v1, v8, [Ljava/lang/String;

    .line 204
    .local v1, "current":[Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    const-string v8, "CleanService"

    const-string v9, "append, current files: %s"

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v8, "extra_file_paths"

    new-array v9, v12, [Ljava/lang/String;

    aput-object p1, v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7, v13}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->parse(Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    new-instance v3, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;-><init>(Lcom/miui/gallery/editor/photo/sdk/CleanService;Lcom/miui/gallery/editor/photo/sdk/CleanService$1;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    .line 37
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v1, [Landroid/app/job/JobParameters;

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v1, 0x1

    .line 46
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 48
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->cancel(Z)Z

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService;->mCleanTask:Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->parse(Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    .local v1, "reschedule":Z
    :goto_0
    const-string v2, "CleanService"

    const-string v3, "onStopJob: %b"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return v1

    .line 54
    .end local v1    # "reschedule":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
