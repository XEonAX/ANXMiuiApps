.class public Lcom/miui/gallery/search/SearchConfig$ResultConfig;
.super Ljava/lang/Object;
.source "SearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/SearchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultConfig"
.end annotation


# instance fields
.field private imageLoadCount:I

.field private likelyImageLoadCount:I

.field private tagLocationLoadCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->tagLocationLoadCount:I

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->imageLoadCount:I

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->likelyImageLoadCount:I

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/gallery/search/SearchConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/miui/gallery/search/SearchConfig$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/SearchConfig$ResultConfig;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getImageLoadCount()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->imageLoadCount:I

    return v0
.end method

.method public getLikelyImageLoadCount()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->likelyImageLoadCount:I

    return v0
.end method

.method public getTagLocationLoadCount()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/miui/gallery/search/SearchConfig$ResultConfig;->tagLocationLoadCount:I

    return v0
.end method
