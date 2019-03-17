.class final Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;
.super Ljava/lang/Object;
.source "ImageFeatureCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageFeatureManagerHolder"
.end annotation


# static fields
.field private static final S_IMAGE_FEATURE_CACHE_MANAGER:Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;-><init>(Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$1;)V

    sput-object v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;->S_IMAGE_FEATURE_CACHE_MANAGER:Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$ImageFeatureManagerHolder;->S_IMAGE_FEATURE_CACHE_MANAGER:Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    return-object v0
.end method
