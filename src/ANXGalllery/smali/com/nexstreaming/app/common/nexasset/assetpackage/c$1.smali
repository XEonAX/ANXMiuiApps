.class Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;
.super Lcom/nexstreaming/app/common/nexasset/store/AbstractStoreAssetInfo;
.source "AssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/c;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    iput-object p4, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/nexstreaming/app/common/nexasset/store/AbstractStoreAssetInfo;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/c$1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategoryAliasName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-string v0, "local"

    return-object v0
.end method
