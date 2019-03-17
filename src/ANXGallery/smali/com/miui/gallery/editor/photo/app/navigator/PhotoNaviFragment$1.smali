.class Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;
.super Ljava/lang/Object;
.source "PhotoNaviFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 11
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const v3, 0x7f0c036f

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->access$000(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    .line 82
    .local v9, "navigatorData":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    iget-boolean v0, v9, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->isPlugin:Z

    if-eqz v0, :cond_3

    .line 83
    invoke-static {}, Lcom/miui/gallery/module/GalleryModuleManager;->getInstance()Lcom/miui/gallery/module/GalleryModuleManager;

    move-result-object v8

    .line 84
    .local v8, "moduleManager":Lcom/miui/gallery/module/GalleryModuleManager;
    iget-object v0, v9, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    iget v1, v9, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->name:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "effectName":Ljava/lang/String;
    iget-object v0, v9, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->pluginModuleName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/miui/gallery/module/GalleryModuleManager;->isModuleLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v7, v2, v5

    invoke-virtual {v1, v3, v2}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 118
    .end local v7    # "effectName":Ljava/lang/String;
    .end local v8    # "moduleManager":Lcom/miui/gallery/module/GalleryModuleManager;
    :goto_0
    return v10

    .line 92
    .restart local v7    # "effectName":Ljava/lang/String;
    .restart local v8    # "moduleManager":Lcom/miui/gallery/module/GalleryModuleManager;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    const v2, 0x7f0c0370

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v7, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    const v2, 0x7f0c0369

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    const v3, 0x7f0c0368

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v7, v4, v5

    .line 99
    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c036c

    const v4, 0x7f0c036e

    new-instance v5, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;

    invoke-direct {v5, p0, v9}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1$1;-><init>(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;)V

    const/4 v6, 0x0

    .line 98
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->access$200(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-static {v0, v9, v5, v10}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->access$100(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;ZZ)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v7, v2, v5

    invoke-virtual {v1, v3, v2}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    .end local v7    # "effectName":Ljava/lang/String;
    .end local v8    # "moduleManager":Lcom/miui/gallery/module/GalleryModuleManager;
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;

    iget-object v1, v9, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->effect:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;->access$300(Lcom/miui/gallery/editor/photo/app/navigator/PhotoNaviFragment;Lcom/miui/gallery/editor/photo/core/Effect;)V

    goto :goto_0
.end method
