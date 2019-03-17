.class Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;
.super Ljava/lang/Object;
.source "AssetPackageReader.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/assetpackage/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$c;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/util/Map;
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

.field i:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

.field j:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

.field k:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$1;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;
    .locals 1

    .prologue
    .line 661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->j:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getPackageURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->i:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$f;->k:Z

    return v0
.end method
