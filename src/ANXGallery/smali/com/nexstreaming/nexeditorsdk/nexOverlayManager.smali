.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;
.super Ljava/lang/Object;
.source "nexOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;,
        Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nexOverlayManager"

.field private static mAppContext:Landroid/content/Context;

.field private static sAutoAspectSelect:Z

.field private static sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;


# instance fields
.field private externalView_overlayEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private m_overlayEntryLock:Ljava/lang/Object;

.field private overlayEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sAutoAspectSelect:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    .line 66
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->externalView_overlayEntries:Ljava/util/List;

    .line 69
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    .line 579
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->m_overlayEntryLock:Ljava/lang/Object;

    .line 533
    sput-object p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->mAppContext:Landroid/content/Context;

    .line 534
    return-void
.end method

.method private AssetPackageJsonToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 813
    if-nez v1, :cond_0

    .line 814
    const-string v1, "nexOverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageJsonToString info fail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return-object v0

    .line 818
    :cond_0
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v2

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    const-string v1, "nexOverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageJsonToString expire id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 834
    :try_start_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 835
    if-eqz v1, :cond_3

    .line 836
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 837
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 842
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 850
    :catch_0
    move-exception v1

    .line 851
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 828
    :catch_1
    move-exception v1

    .line 829
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 846
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 847
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 853
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sAutoAspectSelect:Z

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAssetOverlay(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    .line 573
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v2

    invoke-interface {v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 577
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOverlayManager(Landroid/content/Context;Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;
    .locals 2

    .prologue
    .line 546
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    .line 549
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    if-nez v0, :cond_1

    .line 550
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    invoke-direct {v0, p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    .line 552
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sSingleton:Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;

    return-object v0
.end method

.method private resolveOverlay()V
    .locals 5

    .prologue
    .line 581
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->m_overlayEntryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 584
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getInstalledAssetItems(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;)Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;

    .line 586
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v1

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;->ItemTemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    if-ne v1, v4, :cond_0

    .line 587
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v1

    invoke-interface {v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->getAssetOverlay(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    move-result-object v1

    .line 588
    if-nez v1, :cond_1

    .line 589
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->access$200(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    move-result-object v1

    .line 590
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_1
    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->setAspect(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    return-void
.end method

.method public static setAutoSelectFromAspect(Z)V
    .locals 0

    .prologue
    .line 75
    sput-boolean p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->sAutoAspectSelect:Z

    .line 76
    return-void
.end method


# virtual methods
.method public applyOverlayToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/nexeditorsdk/nexProject;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 757
    const-string v1, "nexOverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyOverlayToProjectById with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->parseOverlay(Ljava/lang/String;Ljava/util/List;)Z

    .line 760
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    if-nez v1, :cond_0

    .line 762
    const-string v1, "nexOverlayManager"

    const-string v2, "Overlay data did not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return v0

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Landroid/content/Context;Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 767
    if-eqz v1, :cond_1

    .line 768
    const-string v1, "nexOverlayManager"

    const-string v2, "Overlay apply failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearOverlayToProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 783
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    if-nez v1, :cond_0

    .line 785
    const-string v1, "nexOverlayManager"

    const-string v2, "Overlay data did not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :goto_0
    return v0

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    invoke-virtual {v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_1

    .line 791
    const-string v1, "nexOverlayManager"

    const-string v2, "Overlay apply failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    const-string v0, "nexOverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOverlays total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->externalView_overlayEntries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->externalView_overlayEntries:Ljava/util/List;

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->externalView_overlayEntries:Ljava/util/List;

    return-object v0
.end method

.method public getOverlays(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    const-string v0, "nexOverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOverlays total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " match : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->m_overlayEntryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v3

    .line 662
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    .line 663
    if-eqz p1, :cond_1

    .line 664
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->getRatio()F

    move-result v5

    cmpl-float v5, v5, v3

    if-nez v5, :cond_0

    .line 665
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 667
    :cond_1
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public loadOverlay()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->resolveOverlay()V

    .line 628
    return-void
.end method

.method public parseOverlay(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$nexTitleInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 700
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;-><init>()V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    .line 702
    if-eqz p1, :cond_0

    .line 703
    const-string v1, "nexOverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseOverlay with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->AssetPackageJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 709
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->AssetPackageJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayTitle:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$1;

    invoke-direct {v3, p0, p2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;->a(Lorg/json/JSONObject;Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$TitleInfoListener;)Ljava/lang/String;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_2

    .line 739
    const-string v2, "nexOverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json parse failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 743
    :goto_0
    return v0

    .line 711
    :cond_1
    :try_start_1
    const-string v1, "nexOverlayManager"

    const-string v2, "json create failed overlayid is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v1

    .line 715
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 717
    const-string v2, "nexOverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json create failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public uninstallPackageById(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 806
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageManager(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->uninstallPackageById(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method updateOverlayTitle(ZLcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Z
    .locals 6

    .prologue
    .line 599
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->m_overlayEntryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    const/4 v2, 0x0

    .line 601
    if-eqz p1, :cond_2

    .line 603
    :try_start_0
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->getAssetOverlay(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    move-result-object v0

    .line 604
    if-nez v0, :cond_0

    .line 605
    invoke-static {p2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->access$200(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    move-result-object v0

    .line 606
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_0
    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->setAspect(Ljava/lang/String;)V

    .line 617
    :cond_1
    :goto_0
    monitor-exit v1

    return v2

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;

    .line 611
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager$Overlay;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v5

    invoke-interface {v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;->assetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 612
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayManager;->overlayEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
