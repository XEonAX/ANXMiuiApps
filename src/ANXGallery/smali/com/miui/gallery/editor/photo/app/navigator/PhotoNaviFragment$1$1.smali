.class Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;
.super Ljava/lang/Object;
.source "PhotoNaviFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;

.field final synthetic val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;->this$1:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;->this$1:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;->val$navigatorData:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->access$100(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V

    .line 108
    :cond_0
    return-void
.end method
