.class Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;
.super Ljava/lang/Object;
.source "PhotoNaviFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->loadEffectModule(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

.field final synthetic val$localOnly:Z

.field final synthetic val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

.field final synthetic val$notifyResult:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iput-boolean p3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$localOnly:Z

    iput-boolean p4, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$notifyResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 193
    const-string v0, "PhotoNaviFragment"

    const-string v1, "Module %s load start"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$localOnly:Z

    new-instance v2, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-boolean v4, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$notifyResult:Z

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;-><init>(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;Z)V

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$2;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/module/GalleryModuleManager;->loadModule(ZLcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method
