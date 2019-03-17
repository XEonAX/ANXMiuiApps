.class public Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;
.super Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;
.source "nexAssetMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetMedia"
.end annotation


# instance fields
.field private filter:Z

.field private getPath:Z

.field private getpreloadedAssetPath:Z

.field private mediaPath:Ljava/lang/String;

.field private preloadedAssetPath:Ljava/lang/String;

.field private type:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->type:I

    return p1
.end method

.method static synthetic access$102(Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->filter:Z

    return p1
.end method

.method public static promote(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Item;)V

    .line 61
    const/4 v1, 0x3

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->type:I

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->filter:Z

    .line 64
    return-object v0
.end method


# virtual methods
.method public bridge synthetic category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->category()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    move-result-object v0

    return-object v0
.end method

.method public filter()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->filter:Z

    return v0
.end method

.method public getClipType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->type:I

    return v0
.end method

.method public getImageThumbnail()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 107
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/e;->b(Landroid/content/Context;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->getPath:Z

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->mediaPath:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->getPath:Z

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->mediaPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreloadedAssetPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->getpreloadedAssetPath:Z

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getPreloadedMediaAppAssetPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->preloadedAssetPath:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->getpreloadedAssetPath:Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetMediaManager$AssetMedia;->preloadedAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSupportedLocales()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hidden()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->hidden()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic icon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->icon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDelete()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->isDelete()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->packageInfo()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Asset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->thumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->type()Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic validate()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$c;->validate()Z

    move-result v0

    return v0
.end method
