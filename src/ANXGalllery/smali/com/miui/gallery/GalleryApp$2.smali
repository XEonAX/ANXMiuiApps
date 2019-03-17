.class Lcom/miui/gallery/GalleryApp$2;
.super Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;
.source "GalleryApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/GalleryApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/GalleryApp;


# direct methods
.method constructor <init>(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/gallery/GalleryApp$2;->this$0:Lcom/miui/gallery/GalleryApp;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfig()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/Config$ImageLoaderConfig;->getConfig(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    return-object v0
.end method
