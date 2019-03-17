.class Lcom/miui/gallery/util/uil/PhotoBytesCache$Singleton;
.super Ljava/lang/Object;
.source "PhotoBytesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/PhotoBytesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/util/uil/PhotoBytesCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    new-instance v0, Lcom/miui/gallery/util/uil/PhotoBytesCache;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/Config$BigPhotoConfig;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d0

    const/high16 v3, 0x32000000

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/uil/PhotoBytesCache;-><init>(Ljava/io/File;IILcom/miui/gallery/util/uil/PhotoBytesCache$1;)V

    sput-object v0, Lcom/miui/gallery/util/uil/PhotoBytesCache$Singleton;->sInstance:Lcom/miui/gallery/util/uil/PhotoBytesCache;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/util/uil/PhotoBytesCache;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/miui/gallery/util/uil/PhotoBytesCache$Singleton;->sInstance:Lcom/miui/gallery/util/uil/PhotoBytesCache;

    return-object v0
.end method
