.class Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e$1;
.super Ljava/lang/Object;
.source "AssetPackageReader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;->a()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e$1;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e$1;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 866
    if-eqz v2, :cond_0

    .line 867
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 868
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    :cond_0
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e$1$1;

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e$1$1;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$e$1;Ljava/util/List;)V

    return-object v0
.end method
