.class public Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;
.super Landroid/graphics/BitmapFactory$Options;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/DecodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryOptions"
.end annotation


# instance fields
.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-void
.end method


# virtual methods
.method public getFD()Landroid/os/ParcelFileDescriptor;
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;->uri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method
