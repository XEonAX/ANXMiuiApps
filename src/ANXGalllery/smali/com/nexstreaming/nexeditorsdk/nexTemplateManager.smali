.class public Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
.super Ljava/lang/Object;
.source "nexTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;,
        Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nexTemplateManager"

.field private static isApplyTemplate:Z

.field private static sAutoAspectSelect:Z

.field private static final sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;

.field private static sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

.field private static supportCategory:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;


# instance fields
.field private composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

.field private errorMsg:Ljava/lang/String;

.field private externalView_templateEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;"
        }
    .end annotation
.end field

.field private lastError:I

.field private mAppContext:Landroid/content/Context;

.field private mCancel:Z

.field private mResContext:Landroid/content/Context;

.field private mUseClipSpeed:Z

.field private mUseVideoTrim:Z

.field private mVideoMemorySize:I

.field private m_templateEntryLock:Ljava/lang/Object;

.field private templateEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    sput-boolean v3, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sAutoAspectSelect:Z

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->supportCategory:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->errorMsg:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->externalView_templateEntries:Ljava/util/List;

    .line 56
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 58
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mUseClipSpeed:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mUseVideoTrim:Z

    .line 60
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mVideoMemorySize:I

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    .line 376
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mAppContext:Landroid/content/Context;

    .line 377
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mResContext:Landroid/content/Context;

    .line 378
    return-void
.end method

.method static synthetic access$000()[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->supportCategory:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sAutoAspectSelect:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->resolveTemplate(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mCancel:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    return p0
.end method

.method private getAssetTemplate(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 414
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v2

    invoke-interface {v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 418
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 500
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 501
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    .line 504
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getTemplateManager()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    return-object v0
.end method

.method public static getTemplateManager(Landroid/content/Context;Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    .line 395
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    invoke-direct {v0, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    .line 398
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    return-object v0
.end method

.method private internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v8, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 596
    new-instance v7, Lcom/nexstreaming/app/common/util/l;

    invoke-direct {v7}, Lcom/nexstreaming/app/common/util/l;-><init>()V

    .line 597
    invoke-virtual {v7}, Lcom/nexstreaming/app/common/util/l;->a()V

    .line 598
    iput v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 599
    invoke-direct {p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getNameById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 600
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 669
    :goto_0
    return v5

    .line 604
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplateById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v0

    .line 605
    if-nez v0, :cond_1

    .line 606
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    iput v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 612
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;

    invoke-direct {v0, p2}, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_2
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    if-ne v0, v1, :cond_3

    .line 616
    invoke-static {p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexBeatTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    if-nez v0, :cond_4

    .line 620
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    .line 623
    :cond_4
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/Thread;)V

    .line 626
    if-eqz p4, :cond_5

    .line 628
    invoke-virtual {p1, v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 633
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e()V

    .line 634
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;

    invoke-direct {v2, p0, v0, p4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexClip;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 644
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 645
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/Thread;)V

    .line 650
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mUseClipSpeed:Z

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setUseProjectSpeed(Z)V

    .line 651
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexConfig;->getProperty(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 652
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setOverlappedTransitionFlag(Z)V

    .line 657
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mResContext:Landroid/content/Context;

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setTemplateEffects2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->errorMsg:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 659
    const-string v0, "nexTemplateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalApplyTemplateToProjectById errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->release()V

    .line 661
    invoke-virtual {v7}, Lcom/nexstreaming/app/common/util/l;->b()V

    .line 662
    const-string v0, "nexTemplateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalApplyTemplateToProjectById error elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/nexstreaming/app/common/util/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    goto/16 :goto_0

    .line 654
    :cond_6
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    invoke-virtual {v0, p3}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setOverlappedTransitionFlag(Z)V

    goto :goto_1

    .line 666
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->release()V

    .line 667
    invoke-virtual {v7}, Lcom/nexstreaming/app/common/util/l;->b()V

    .line 668
    const-string v0, "nexTemplateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalApplyTemplateToProjectById elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/nexstreaming/app/common/util/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 669
    goto/16 :goto_0
.end method

.method private resolveTemplate(Z)V
    .locals 8

    .prologue
    .line 440
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 443
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->supportCategory:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 445
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getInstalledAssetItems(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;)Ljava/util/List;

    move-result-object v0

    .line 446
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;

    .line 447
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->hidden()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    :cond_1
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v1

    invoke-interface {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getAssetTemplate(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v1

    .line 451
    if-nez v1, :cond_2

    .line 452
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->promote(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v1

    .line 453
    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_2
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->setAspect(Ljava/lang/String;)V

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 443
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 458
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    return-void
.end method

.method public static setAutoSelectFromAspect(Z)V
    .locals 0

    .prologue
    .line 1059
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sAutoAspectSelect:Z

    .line 1060
    return-void
.end method


# virtual methods
.method public applyTemplateAsyncToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 729
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    if-eqz v0, :cond_0

    .line 730
    const/4 v0, -0x3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    move v4, v6

    .line 750
    :goto_0
    return v4

    .line 734
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplateById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v0

    .line 735
    if-nez v0, :cond_1

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    move v4, v6

    .line 737
    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    const/4 v0, -0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 742
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;

    invoke-direct {v0, p2}, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_2
    sput-boolean v4, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 746
    iput-boolean v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mCancel:Z

    .line 747
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 748
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public applyTemplateAsyncToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZLjava/lang/Runnable;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 763
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, -0x3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    move v0, v6

    .line 785
    :goto_0
    return v0

    .line 768
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getTemplateById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v0

    .line 769
    if-nez v0, :cond_1

    .line 770
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    move v0, v6

    .line 771
    goto :goto_0

    .line 774
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->checkExpireAsset(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    const/4 v0, -0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 776
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;

    invoke-direct {v0, p2}, Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_2
    sput-boolean v7, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 781
    iput-boolean v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mCancel:Z

    .line 782
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 783
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->sInstallThreadExcutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v7

    .line 785
    goto :goto_0
.end method

.method public applyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 518
    sget-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "nexTemplateManager"

    const-string v2, "applyTemplateToProjectById errorMsg= already run applyTemplate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, -0x3

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 532
    :goto_0
    return v0

    .line 523
    :cond_0
    sput-boolean v2, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 526
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->getValue()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 531
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    move v0, v1

    .line 532
    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 529
    throw v1
.end method

.method public applyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 546
    sget-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "nexTemplateManager"

    const-string v2, "applyTemplateToProjectById errorMsg= already run applyTemplate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v1, -0x3

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 562
    :goto_0
    return v0

    .line 551
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 555
    :try_start_0
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexUndetectedFaceCrop;->getValue()I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 561
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    move v0, v1

    .line 562
    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 558
    throw v1
.end method

.method public applyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 577
    sget-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    if-eqz v1, :cond_0

    .line 578
    const-string v1, "nexTemplateManager"

    const-string v2, "applyTemplateToProjectById errorMsg= already run applyTemplate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, -0x3

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    .line 592
    :goto_0
    return v0

    .line 582
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 585
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 591
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    move v0, v1

    .line 592
    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    .line 587
    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    .line 588
    throw v1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mCancel:Z

    .line 870
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->isApplyTemplate:Z

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->composer:Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setCancel()V

    goto :goto_0
.end method

.method public findNewPackages()I
    .locals 1

    .prologue
    .line 831
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->findNewPackages()I

    move-result v0

    return v0
.end method

.method public getFirstFace(Lcom/nexstreaming/nexeditorsdk/nexClip;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 916
    const-string v0, "nexTemplateManager"

    const-string v1, "getFirstFace In"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    move-result-object v1

    .line 919
    if-nez v1, :cond_0

    .line 921
    const-string v1, "nexTemplateManager"

    const-string v2, "getFirstFace Proc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;-><init>(Ljava/io/File;ZLandroid/content/Context;)V

    .line 923
    invoke-static {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;)V

    .line 926
    :cond_0
    const-string v0, "nexTemplateManager"

    const-string v1, "getFirstFace Out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->lastError:I

    return v0
.end method

.method public getLastErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateAssetIds()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 335
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 339
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 340
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v6

    invoke-interface {v6}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 349
    :cond_2
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, v4

    if-ge v1, v0, :cond_4

    .line 354
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 353
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 356
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public getTemplateAssetIdxs()[I
    .locals 7

    .prologue
    .line 302
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 307
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 311
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 312
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v6

    invoke-interface {v6}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v6

    if-ne v1, v6, :cond_1

    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, v4

    if-ge v1, v0, :cond_4

    .line 321
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 323
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4
.end method

.method public getTemplateById(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;
    .locals 4

    .prologue
    .line 366
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 368
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 369
    monitor-exit v1

    .line 371
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTemplateIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 806
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 806
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 809
    :cond_0
    return-object v2
.end method

.method public getTemplateItemId(ZI)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 894
    if-eqz p1, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->loadTemplate()V

    .line 898
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    move-object v0, v1

    .line 910
    :goto_0
    return-object v0

    .line 902
    :cond_1
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 904
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 905
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->externalView_templateEntries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->externalView_templateEntries:Ljava/util/List;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->externalView_templateEntries:Ljava/util/List;

    return-object v0
.end method

.method public installPackagesAsync(ILcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V
    .locals 1

    .prologue
    .line 860
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->installPackagesAsync(ILcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V

    .line 861
    return-void
.end method

.method public installPackagesAsync(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V
    .locals 1

    .prologue
    .line 856
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->installPackagesAsync(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$OnInstallPackageListener;)V

    .line 857
    return-void
.end method

.method public isInstallingPackages()Z
    .locals 1

    .prologue
    .line 842
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->isInstallingPackages()Z

    move-result v0

    return v0
.end method

.method public loadTemplate()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->resolveTemplate(Z)V

    .line 483
    return-void
.end method

.method public loadTemplate(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$1;

    invoke-direct {v1, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 478
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    return-void
.end method

.method public loadTemplate(Z)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->resolveTemplate(Z)V

    .line 495
    return-void
.end method

.method onFirstFaceDone(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;I)V
    .locals 12

    .prologue
    .line 931
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v1

    .line 932
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v2

    .line 934
    const/4 v0, 0x1

    .line 935
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 936
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 937
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 938
    new-instance v3, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 939
    invoke-virtual {p2, v6}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Landroid/graphics/RectF;)V

    .line 941
    iget v7, v6, Landroid/graphics/RectF;->left:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/RectF;->right:F

    int-to-float v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v2

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 942
    iget v7, v6, Landroid/graphics/RectF;->left:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/RectF;->right:F

    int-to-float v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v2

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 944
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 945
    const/4 v0, 0x0

    const/4 v6, 0x0

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v8, v2, 0x3

    div-int/lit8 v8, v8, 0x4

    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 946
    int-to-double v0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v6

    double-to-int v0, v0

    int-to-double v6, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 947
    const-string v0, "nexTemplateManager"

    const-string v1, "Face Detection Empty "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v0, 0x0

    move v6, v0

    .line 977
    :goto_0
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 979
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 980
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 981
    const-string v0, "nexTemplateManager"

    const-string v1, "Face Detection aync true  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 984
    iget v1, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 985
    iget v1, v4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 986
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 987
    iget v1, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 988
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 989
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 991
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 992
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 993
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 994
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 995
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 996
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 998
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 1018
    :goto_1
    invoke-virtual {p1, v6, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setFaceDetectProcessed(ZLandroid/graphics/Rect;)V

    .line 1019
    const-string v0, "nexTemplateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face Detection aync thread end ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void

    .line 953
    :cond_0
    div-int/lit8 v6, v1, 0x4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    .line 954
    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 955
    iget v7, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 956
    iget v7, v4, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 957
    const-string v6, "nexTemplateManager"

    const-string v7, "Face Detection width addSpace>0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_1
    div-int/lit8 v6, v2, 0x4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    .line 960
    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 961
    iget v7, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 962
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 963
    const-string v6, "nexTemplateManager"

    const-string v7, "Face Detection height addSpace>0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v6

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 968
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-nez v6, :cond_3

    .line 969
    const/4 v6, 0x0

    const/4 v7, 0x0

    mul-int/lit8 v8, v1, 0x2

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v2, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 970
    const-string v6, "nexTemplateManager"

    const-string v7, "Face Detection insect not "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    int-to-double v6, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v8, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 973
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v9, v2, 0x3

    div-int/lit8 v9, v9, 0x4

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 974
    int-to-double v6, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    int-to-double v6, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v2, v6

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move v6, v0

    goto/16 :goto_0

    .line 1002
    :cond_4
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1003
    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    .line 1004
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 1007
    :goto_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 1008
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 1009
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setFacePosition(Landroid/graphics/Rect;)V

    .line 1010
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 1011
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 1012
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFacePositionRaw(Landroid/graphics/Rect;)V

    .line 1014
    const-string v0, "nexTemplateManager"

    const-string v1, "Face Detection aync false  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    goto/16 :goto_1

    .line 1005
    :cond_5
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    goto :goto_2
.end method

.method public setUseClipSpeed(Z)V
    .locals 0

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mUseClipSpeed:Z

    .line 1029
    return-void
.end method

.method public setVideoClipTrimMode(Z)V
    .locals 0

    .prologue
    .line 1039
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mUseVideoTrim:Z

    .line 1040
    return-void
.end method

.method public setVideoMemorySize(I)V
    .locals 0

    .prologue
    .line 1050
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->mVideoMemorySize:I

    .line 1051
    return-void
.end method

.method public uninstallPackageById(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->uninstallPackageById(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method updateTemplate(ZLcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1063
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->m_templateEntryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1064
    const/4 v1, 0x0

    .line 1065
    if-eqz p1, :cond_2

    .line 1066
    :try_start_0
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->hidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    monitor-exit v3

    move v0, v1

    .line 1087
    :goto_0
    return v0

    .line 1070
    :cond_0
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getAssetTemplate(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v0

    .line 1071
    if-nez v0, :cond_1

    .line 1072
    invoke-static {p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->promote(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v0

    .line 1074
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    :cond_1
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->setAspect(Ljava/lang/String;)V

    move v0, v2

    .line 1087
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1079
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 1080
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v5

    invoke-interface {v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v5

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v6

    invoke-interface {v6}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetIdx()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1081
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->templateEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 1083
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method
