.class Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;
.super Ljava/lang/Object;
.source "AssetPackageReader.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    if-nez p1, :cond_0

    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 972
    :cond_0
    if-nez p2, :cond_1

    .line 973
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 974
    :cond_1
    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->a:Ljava/lang/String;

    .line 975
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->b:Landroid/content/res/AssetManager;

    .line 976
    const-string v0, "AssetPackageReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created ACR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$1;)V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;)Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->b:Landroid/content/res/AssetManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    const-string v0, "AssetPackageReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b$1;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$LocalPathNotAvailableException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$LocalPathNotAvailableException;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$LocalPathNotAvailableException;-><init>()V

    throw v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->b:Landroid/content/res/AssetManager;

    .line 1056
    return-void
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$LocalPathNotAvailableException;
        }
    .end annotation

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return-object v0
.end method
