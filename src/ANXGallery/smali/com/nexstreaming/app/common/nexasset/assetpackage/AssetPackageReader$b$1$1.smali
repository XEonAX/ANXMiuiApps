.class Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;
.super Ljava/lang/Object;
.source "AssetPackageReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;

    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1024
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1025
    const-string v2, "AssetPackageReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iter:next -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (todo list size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v2, 0x0

    .line 1028
    :try_start_0
    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;

    iget-object v3, v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;

    invoke-static {v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->b(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;)Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1029
    const-string v3, "AssetPackageReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " children."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1034
    :goto_0
    if-eqz v3, :cond_1

    array-length v2, v3

    if-lez v2, :cond_1

    .line 1035
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 1036
    iget-object v6, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1030
    :catch_0
    move-exception v3

    .line 1032
    const-string v3, "AssetPackageReader"

    const-string v4, "Has no children."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto :goto_0

    .line 1038
    :cond_0
    const-string v2, "AssetPackageReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " children; todo list size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->b:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;

    iget-object v2, v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;->a:Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;

    invoke-static {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1041
    if-lez v2, :cond_2

    add-int/lit8 v1, v2, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method
