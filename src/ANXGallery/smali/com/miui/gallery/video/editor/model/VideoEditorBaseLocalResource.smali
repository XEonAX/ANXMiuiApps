.class public Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;
.super Lcom/miui/gallery/video/editor/model/LocalResource;
.source "VideoEditorBaseLocalResource.java"


# instance fields
.field private mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V
    .locals 0
    .param p1, "moduleFactory"    # Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/model/LocalResource;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .line 11
    return-void
.end method
