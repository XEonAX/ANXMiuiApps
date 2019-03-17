.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;->onPermissionsChecked([Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    const-string v0, "PhotoEditor"

    const-string v1, "activity end"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    const-string v1, "com.miui.gallery.extra.videoeditor.v1000"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "PhotoEditor"

    const-string/jumbo v1, "typeface is loaded"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const-string v3, "com.miui.gallery.extra.videoeditor.v1000"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$LoadModuleJob;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Ljava/lang/String;Lcom/miui/gallery/editor/photo/app/PhotoEditor$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method
