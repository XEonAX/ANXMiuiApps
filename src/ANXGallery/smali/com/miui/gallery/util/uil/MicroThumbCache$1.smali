.class Lcom/miui/gallery/util/uil/MicroThumbCache$1;
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
        "Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;",
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
    .line 68
    iput-object p1, p0, Lcom/miui/gallery/util/uil/MicroThumbCache$1;->this$0:Lcom/miui/gallery/util/uil/MicroThumbCache;

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/util/uil/MicroThumbCache$1;->createInstance()Lcom/miui/gallery/util/uil/BlobCache$LookupRequest;

    move-result-object v0

    return-object v0
.end method
