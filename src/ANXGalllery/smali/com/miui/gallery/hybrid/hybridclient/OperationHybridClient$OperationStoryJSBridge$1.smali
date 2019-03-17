.class Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;
.super Ljava/lang/Object;
.source "OperationHybridClient.java"

# interfaces
.implements Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;->saveImage(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;->this$1:Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge;

    iput-object p2, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/GalleryUtils;->saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handle(Ljava/io/FileOutputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient$OperationStoryJSBridge$1;->handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
