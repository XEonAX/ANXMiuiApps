.class Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;
.super Ljava/lang/Object;
.source "nexAssetPackageManager.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/String;

.field protected f:J

.field protected g:J

.field protected h:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:I

.field private l:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 620
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->l:Z

    if-nez v0, :cond_0

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->l:Z

    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    .line 623
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v0

    .line 624
    if-nez v0, :cond_1

    .line 625
    const-string v0, "nexAssetPackageMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AssetInfo! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetName()Ljava/util/Map;

    move-result-object v2

    .line 629
    if-eqz v2, :cond_3

    .line 630
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 631
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 633
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    .line 635
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 638
    :cond_3
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 639
    const/4 v1, 0x0

    .line 642
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 643
    :try_start_1
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->e()Ljava/util/Map;

    move-result-object v3

    .line 645
    if-eqz v3, :cond_5

    .line 646
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 647
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 649
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    .line 651
    :cond_4
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 655
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_2
    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 655
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public assetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public assetIdx()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->a:I

    return v0
.end method

.method public assetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->a()V

    .line 678
    if-nez p1, :cond_0

    .line 679
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/app/common/util/n;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 687
    if-nez p1, :cond_2

    .line 688
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    .line 699
    :cond_1
    :goto_0
    return-object v0

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 691
    if-nez v0, :cond_1

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 697
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 699
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public expireRemain()J
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->g:J

    return-wide v0
.end method

.method public getAssetVersionCode()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->k:I

    return v0
.end method

.method public getCategoryAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedLocales()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 734
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->a()V

    .line 735
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 736
    new-array v0, v0, [Ljava/lang/String;

    .line 750
    :goto_0
    return-object v0

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 740
    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    const-string v4, "nexAssetPackageMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssetEnt locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    aput-object v0, v2, v1

    .line 748
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 749
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 750
    goto :goto_0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public installedTime()J
    .locals 2

    .prologue
    .line 709
    iget-wide v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->f:J

    return-wide v0
.end method

.method public installedType()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->h:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$AssetInstallType;

    return-object v0
.end method

.method public priceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$a;->e:Ljava/lang/String;

    return-object v0
.end method
