.class Lcom/miui/gallery/util/uil/MicroThumbCache$2;
.super Lmiui/util/Pools$Manager;
.source "MicroThumbCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/uil/MicroThumbCache;->ensureInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/uil/MicroThumbCache;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/uil/MicroThumbCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/uil/MicroThumbCache;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/util/uil/MicroThumbCache$2;->this$0:Lcom/miui/gallery/util/uil/MicroThumbCache;

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/miui/gallery/util/uil/MicroThumbCache;->access$000()I

    move-result v0

    invoke-static {}, Lcom/miui/gallery/util/uil/MicroThumbCache;->access$000()I

    move-result v1

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->getThumbConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/MicroThumbCache$2;->createInstance()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
