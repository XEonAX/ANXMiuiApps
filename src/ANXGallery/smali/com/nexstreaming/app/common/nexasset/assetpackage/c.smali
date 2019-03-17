.class public Lcom/nexstreaming/app/common/nexasset/assetpackage/c;
.super Ljava/lang/Object;
.source "AssetPackageManager.java"


# static fields
.field private static a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;


# instance fields
.field private final b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

.field private c:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    .line 82
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-direct {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    .line 83
    return-void
.end method

.method public static a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    .line 70
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    .line 63
    :cond_0
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    return-object v0
.end method

.method private a(Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;
    .locals 6

    .prologue
    .line 140
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$5;->b:[I

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->f()Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    move-result-object v0

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    const-string v3, "install_source_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    .line 153
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;-><init>()V

    .line 155
    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceId:Ljava/lang/String;

    .line 156
    iput-object p1, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceType:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 158
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->add(Lcom/nexstreaming/app/common/norm/b;)V

    goto :goto_0

    .line 147
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 148
    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 595
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetCategoryAlias;->values()[Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetCategoryAlias;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v7, v5, v2

    .line 596
    const/4 v1, 0x0

    .line 597
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/a;

    .line 598
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/a;->getCategoryAlias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetCategoryAlias;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/a;->getCategoryAlias()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetCategoryAlias;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 603
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 604
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 595
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 608
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$3;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$3;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/c;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 615
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 617
    :cond_4
    return-object v3

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->beginTransaction()V

    .line 170
    :try_start_0
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIndex()I

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;

    const-string v4, "category_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;

    .line 172
    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;-><init>()V

    .line 174
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIndex()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->categoryId:J

    .line 175
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryAliasName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->categoryName:Ljava/lang/String;

    .line 176
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIconURL()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->categoryIconURL:Ljava/lang/String;

    .line 177
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->addOrUpdate(Lcom/nexstreaming/app/common/norm/b;)V

    move-object v4, v0

    .line 190
    :goto_0
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getSubCategoryIndex()I

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    const-string/jumbo v5, "sub_category_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getSubCategoryIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v5, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    .line 192
    if-nez v0, :cond_3

    .line 193
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;-><init>()V

    .line 194
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getSubCategoryIndex()I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryId:J

    .line 195
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getSubCategoryNameMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryName:Ljava/util/Map;

    .line 196
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getSubCategoryAliasName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryAlias:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->add(Lcom/nexstreaming/app/common/norm/b;)V

    move-object v3, v0

    .line 218
    :goto_1
    new-instance v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    invoke-direct {v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;-><init>()V

    .line 219
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetIndex()I

    move-result v0

    iput v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetIdx:I

    .line 220
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->packageURI:Ljava/lang/String;

    .line 221
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetId:Ljava/lang/String;

    .line 222
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetPackageDownloadURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetUrl:Ljava/lang/String;

    .line 223
    if-nez p2, :cond_5

    move-object v0, v2

    :goto_2
    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->thumbPath:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetDesc:Ljava/util/Map;

    .line 225
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetNameMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetName:Ljava/util/Map;

    .line 226
    iget-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v10, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetName:Ljava/util/Map;

    .line 229
    :cond_0
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getPriceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->priceType:Ljava/lang/String;

    .line 230
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetThumbnailURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->thumbUrl:Ljava/lang/String;

    .line 231
    iput-object p4, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->installSource:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    .line 232
    iput-object v4, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->category:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;

    .line 233
    iput-object v3, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->subCategory:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    .line 234
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->g()Ljava/io/File;

    move-result-object v0

    .line 235
    if-nez v0, :cond_6

    move-object v0, v2

    :goto_3
    iput-object v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->localPath:Ljava/lang/String;

    .line 236
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getExpireTime()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->expireTime:J

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->installedTime:J

    .line 238
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetScopeVersion()I

    move-result v0

    iput v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->minVersion:I

    .line 239
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetVersion()I

    move-result v0

    iput v0, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->packageVersion:I

    .line 241
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->add(Lcom/nexstreaming/app/common/norm/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->d()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    .line 248
    new-instance v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    invoke-direct {v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;-><init>()V

    .line 249
    iput-object v5, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->assetPackageRecord:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    .line 250
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->itemId:Ljava/lang/String;

    .line 251
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->packageURI:Ljava/lang/String;

    .line 252
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->filePath:Ljava/lang/String;

    .line 253
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getIconPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->iconPath:Ljava/lang/String;

    .line 254
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->isHidden()Z

    move-result v4

    iput-boolean v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->hidden:Z

    .line 255
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->thumbPath:Ljava/lang/String;

    .line 256
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getLabel()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->label:Ljava/util/Map;

    .line 257
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->itemType:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    .line 258
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v4

    iput-object v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->itemCategory:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    .line 259
    invoke-interface {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getSampleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;->sampleText:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->add(Lcom/nexstreaming/app/common/norm/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 262
    goto :goto_4

    .line 180
    :cond_1
    :try_start_2
    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->categoryIconURL:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIconURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->categoryIconURL:Ljava/lang/String;

    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIconURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getCategoryIconURL()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->categoryIconURL:Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    :cond_2
    move-object v4, v0

    goto/16 :goto_0

    .line 199
    :cond_3
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getSubCategoryNameMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryName:Ljava/util/Map;

    .line 200
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    move-object v3, v0

    goto/16 :goto_1

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    const-string/jumbo v5, "sub_category_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v5, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    .line 204
    if-nez v0, :cond_8

    .line 205
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 206
    const-string v0, "en"

    const-string v5, "Local"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;-><init>()V

    .line 208
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryId:J

    .line 209
    const-string v5, "local"

    iput-object v5, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryAlias:Ljava/lang/String;

    .line 210
    iput-object v3, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/SubCategoryRecord;->subCategoryName:Ljava/util/Map;

    .line 211
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v3, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->add(Lcom/nexstreaming/app/common/norm/b;)V

    move-object v3, v0

    goto/16 :goto_1

    .line 223
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 235
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 264
    :cond_7
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    .line 266
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->setTransactionSuccessful()V

    .line 267
    const-string v0, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added DB Record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->assetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    :try_start_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    .line 277
    return-void

    .line 264
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    :catchall_1
    move-exception v0

    .line 270
    :try_start_5
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1

    .line 273
    throw v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageDb.endTransaction() throws SQLiteFullException. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :catch_1
    move-exception v0

    .line 272
    const-string v1, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageDb.endTransaction() throws SQLiteFullException. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object v3, v0

    goto/16 :goto_1

    :cond_9
    move-object v4, v2

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 661
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/.."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Parent Path References Not Allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 671
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/.."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Parent Path References Not Allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 679
    :cond_2
    :goto_0
    return-object p1

    .line 676
    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 677
    if-ltz v0, :cond_2

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private f()Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;
    .locals 6

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    .line 135
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    const-string v2, "install_source_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "store"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    .line 127
    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;-><init>()V

    .line 129
    const-string/jumbo v1, "store"

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceId:Ljava/lang/String;

    .line 130
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->STORE:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    iput-object v1, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceType:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    .line 131
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 132
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->add(Lcom/nexstreaming/app/common/norm/b;)V

    .line 134
    :cond_1
    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/b;
    .locals 5

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "asset_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 744
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 747
    if-eqz v0, :cond_0

    .line 751
    const-string v1, ".force_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".force_effect"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 757
    :goto_1
    if-nez v1, :cond_2

    .line 758
    const-string v1, "AssetPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find item for id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    goto :goto_1

    .line 761
    :cond_2
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v0

    sget-object v6, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v0, v6, :cond_0

    .line 765
    :try_start_0
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v6

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v0, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 767
    :try_start_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 768
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 769
    invoke-static {v0, v3}, Lcom/nexstreaming/app/common/util/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    :try_start_2
    invoke-virtual {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    .line 773
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 771
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 779
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    const-string v0, "<themeset name=\"KM\" defaultTheme=\"none\" defaultTransition=\"none\" >"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v0, "<texture id=\"video_out\" video=\"1\" />"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v0, "<texture id=\"video_in\" video=\"2\" />"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 794
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 795
    if-eqz v0, :cond_0

    .line 800
    const-string v1, ".force_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".force_effect"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 807
    :goto_1
    if-nez v1, :cond_2

    .line 808
    const-string v1, "AssetPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find item for id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    goto :goto_1

    .line 812
    :cond_2
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v6

    sget-object v7, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-eq v6, v7, :cond_0

    .line 815
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v7

    invoke-interface {v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v6

    .line 817
    :try_start_0
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 818
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 819
    invoke-static {v7, v4}, Lcom/nexstreaming/app/common/util/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-virtual {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    .line 825
    const-string v6, "AssetPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "template effects: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-nez p2, :cond_3

    const-string v1, ".force_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    const-string v1, "AssetPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Original template transition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nexstreaming/app/common/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    const-string v1, "AssetPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Modify template transition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 822
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    throw v0

    .line 835
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 839
    :cond_4
    const-string v0, "</themeset>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 522
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "asset_idx = ?"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirstRowId(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    .line 523
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v4, "asset_package_record = ? AND item_category = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v2, "item_category = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 8

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->beginTransaction()V

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "asset_idx = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    .line 440
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v3, "asset_package_record = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->getDbRowID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 441
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    .line 442
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v3, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->delete(Lcom/nexstreaming/app/common/norm/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    .line 448
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :goto_1
    throw v0

    .line 444
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->delete(Lcom/nexstreaming/app/common/norm/b;)V

    .line 445
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :try_start_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    .line 453
    :goto_2
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    const-string v1, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageDb.endTransaction() throws SQLiteFullException. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 449
    :catch_1
    move-exception v1

    .line 450
    const-string v2, "AssetPackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssetPackageDb.endTransaction() throws SQLiteFullException. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    const-string v0, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncPackagesFromAndroidAssets - IN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->APP_ASSETS:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    invoke-direct {p0, v0, p2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    move-result-object v3

    .line 288
    const-string v0, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncPackagesFromAndroidAssets - ISR CHECK: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-wide v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    cmp-long v0, v4, p3

    if-eqz v0, :cond_2

    .line 291
    const-string v0, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncPackagesFromAndroidAssets - ISR MISMATCH; UPDATING : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 294
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    .line 296
    invoke-virtual {p0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 299
    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v5, v2

    .line 301
    invoke-static {p2, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 303
    :try_start_0
    invoke-virtual {v4, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_1
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 308
    const-string v0, "AssetPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "syncPackagesFromAndroidAssets - Processing package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {v4, v8, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v0

    .line 311
    new-instance v8, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->c()I

    move-result v9

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b()I

    move-result v10

    invoke-direct {v8, p0, v9, v10, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/c;IILjava/lang/String;)V

    .line 328
    invoke-direct {p0, v0, v1, v8, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    .line 299
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 305
    goto :goto_1

    .line 332
    :cond_1
    iput-wide p3, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 333
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    .line 337
    :cond_2
    const-string v0, "AssetPackageManager"

    const-string/jumbo v1, "syncPackagesFromAndroidAssets - OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public a(Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V
    .locals 10

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->beginTransaction()V

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "install_source = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->getDbRowID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    .line 420
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v4, "asset_package_record = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;->getDbRowID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 421
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    .line 422
    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v4, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->delete(Lcom/nexstreaming/app/common/norm/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :goto_2
    throw v0

    .line 424
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->delete(Lcom/nexstreaming/app/common/norm/b;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :try_start_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0

    .line 434
    :goto_3
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    const-string v1, "AssetPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageDb.endTransaction() throws SQLiteFullException. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 430
    :catch_1
    move-exception v1

    .line 431
    const-string v2, "AssetPackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssetPackageDb.endTransaction() throws SQLiteFullException. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 343
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->FOLDER:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    .line 345
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 346
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    .line 347
    return-void
.end method

.method public a(Ljava/io/File;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v0

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->f()Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    move-result-object v1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    .line 121
    return-void

    .line 118
    :cond_0
    invoke-interface {p3}, Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 696
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 740
    :cond_0
    return-void

    .line 700
    :cond_1
    const-string v0, "AssetPackageManager"

    const-string v1, "loadRenderItemsInEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 703
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v3

    .line 705
    invoke-virtual {p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Z)V

    .line 706
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    if-eqz v0, :cond_2

    .line 711
    const-string v1, ".force_effect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 712
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".force_effect"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 717
    :goto_1
    if-nez v1, :cond_4

    .line 718
    const-string v1, "AssetPackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find item for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    goto :goto_1

    .line 721
    :cond_4
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v5

    sget-object v6, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v5, v6, :cond_2

    .line 725
    :try_start_0
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v6

    invoke-interface {v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 727
    :try_start_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 728
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 729
    invoke-static {v1, v2}, Lcom/nexstreaming/app/common/util/m;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :try_start_2
    invoke-virtual {v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 738
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 731
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Iterable;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 684
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/lang/Iterable;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/nexstreaming/app/common/nexasset/assetpackage/b;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 847
    if-nez p1, :cond_1

    .line 848
    const-string v1, "AssetPackageManager"

    const-string v2, "checkExpireAsset assetinfo is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    :goto_0
    return v0

    .line 852
    :cond_1
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getExpireTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 853
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getInstalledTime()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getExpireTime()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 854
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getInstalledTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 856
    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    .line 860
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 527
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v4, "asset_id = ?"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirstRowId(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v2

    .line 528
    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v5, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v6, "asset_package_record = ? AND item_category = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    aput-object p2, v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->count(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(I)Lcom/nexstreaming/app/common/nexasset/assetpackage/b;
    .locals 6

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "asset_idx = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 493
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "asset_id = ?"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirstRowId(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    .line 494
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v4, "asset_package_record = ?"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/File;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 351
    sget-object v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;->FOLDER:Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/InstallSourceType;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;

    move-result-object v8

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 354
    if-eqz v9, :cond_0

    array-length v2, v9

    if-ge v2, v0, :cond_1

    .line 355
    :cond_0
    invoke-virtual {p0, v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    move v0, v1

    .line 412
    :goto_0
    return v0

    .line 360
    :cond_1
    array-length v10, v9

    move v2, v1

    move-wide v6, v4

    :goto_1
    if-ge v2, v10, :cond_2

    aget-object v11, v9, v2

    .line 361
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    :cond_2
    iget-wide v10, v8, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    cmp-long v2, v10, v6

    if-eqz v2, :cond_6

    .line 366
    iput-wide v4, v8, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 367
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v2, v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    .line 369
    invoke-virtual {p0, v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    .line 371
    array-length v10, v9

    move v5, v1

    :goto_2
    if-ge v5, v10, :cond_5

    aget-object v2, v9, v5

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-static {v2, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v2

    .line 383
    :goto_3
    if-eqz v2, :cond_3

    .line 386
    new-instance v11, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$2;

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->c()I

    move-result v12

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b()I

    move-result v13

    invoke-direct {v11, p0, v12, v13, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$2;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/c;IILjava/lang/String;)V

    .line 403
    invoke-direct {p0, v2, v3, v11, v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;Ljava/io/File;Lcom/nexstreaming/app/common/nexasset/store/StoreAssetInfo;Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;)V

    .line 371
    :cond_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 377
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v11, ".zip"

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 378
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v4, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-static {v2, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/io/File;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;

    move-result-object v2

    goto :goto_3

    .line 407
    :cond_5
    iput-wide v6, v8, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/InstallSourceRecord;->installSourceVersion:J

    .line 408
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    invoke-virtual {v1, v8}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->update(Lcom/nexstreaming/app/common/norm/b;)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 412
    goto :goto_0

    :cond_7
    move-object v2, v3

    move-object v4, v3

    goto :goto_3
.end method

.method public c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;
    .locals 5

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v2, "item_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirst(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/nexstreaming/app/common/norm/b;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 498
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v2, "asset_idx = ?"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->findFirstRowId(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    .line 499
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/ItemRecord;

    const-string v4, "asset_package_record = ?"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->query(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;

    .line 580
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;

    const-class v4, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageRecord;

    const-string v5, "category = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/CategoryRecord;->getDbRowID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/nexstreaming/app/common/nexasset/assetpackage/db/AssetPackageDb;->count(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 581
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_1
    invoke-direct {p0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/nexstreaming/kminternal/nexvideoeditor/a;
    .locals 1

    .prologue
    .line 864
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$4;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$4;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/c;)V

    return-object v0
.end method
