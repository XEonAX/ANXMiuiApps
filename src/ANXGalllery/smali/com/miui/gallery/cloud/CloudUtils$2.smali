.class final Lcom/miui/gallery/cloud/CloudUtils$2;
.super Ljava/lang/Object;
.source "CloudUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/CloudUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fileExtension:Ljava/lang/String;

.field final synthetic val$toSaveBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudUtils$2;->val$toSaveBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/miui/gallery/cloud/CloudUtils$2;->val$fileExtension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudUtils$2;->val$toSaveBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudUtils$2;->val$fileExtension:Ljava/lang/String;

    .line 1208
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 1207
    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/GalleryUtils;->saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    .line 1209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handle(Ljava/io/FileOutputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1205
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils$2;->handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
