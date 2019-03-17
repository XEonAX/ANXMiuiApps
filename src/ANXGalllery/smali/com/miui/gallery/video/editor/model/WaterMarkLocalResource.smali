.class public Lcom/miui/gallery/video/editor/model/WaterMarkLocalResource;
.super Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;
.source "WaterMarkLocalResource.java"


# instance fields
.field public assetId:Ljava/lang/String;

.field public assetName:Ljava/lang/String;

.field public update:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V
    .locals 0
    .param p1, "moduleFactory"    # Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;-><init>(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    .line 13
    return-void
.end method
