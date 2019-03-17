.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextManager;
.super Ljava/lang/Object;
.source "TextManager.java"


# direct methods
.method public static loadModule()V
    .locals 4

    .prologue
    .line 9
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    const-string v1, "com.miui.gallery.extra.videoeditor.v1000"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "com.miui.gallery.extra.videoeditor.v1000"

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/module/GalleryModuleManager;->loadModule(ZLcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;Ljava/lang/String;)V

    .line 11
    :cond_0
    return-void
.end method
