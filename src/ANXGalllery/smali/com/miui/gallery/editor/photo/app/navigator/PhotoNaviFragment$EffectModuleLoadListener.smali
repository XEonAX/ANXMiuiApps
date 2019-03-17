.class Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;
.super Ljava/lang/Object;
.source "PhotoNaviFragment.java"

# interfaces
.implements Lcom/miui/gallery/module/GalleryModuleManager$ModuleLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EffectModuleLoadListener"
.end annotation


# instance fields
.field private mNavigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

.field private mNotifyResult:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;Z)V
    .locals 0
    .param p1, "navigatorData"    # Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    .param p2, "notifyResult"    # Z

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNavigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    .line 208
    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNotifyResult:Z

    .line 209
    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 7

    .prologue
    .line 218
    const-string v3, "PhotoNaviFragment"

    const-string v4, "Module %s load failed. Notify result %s"

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNavigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNotifyResult:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNotifyResult:Z

    if-nez v3, :cond_0

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 224
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNavigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget v3, v3, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "effectName":Ljava/lang/String;
    const v3, 0x7f0c036b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLoadSuccess()V
    .locals 3

    .prologue
    .line 213
    const-string v0, "PhotoNaviFragment"

    const-string v1, "Module %s load success"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$EffectModuleLoadListener;->mNavigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    return-void
.end method
