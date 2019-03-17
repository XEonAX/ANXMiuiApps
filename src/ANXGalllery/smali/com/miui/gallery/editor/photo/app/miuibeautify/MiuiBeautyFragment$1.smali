.class Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;
.super Ljava/lang/Object;
.source "MiuiBeautyFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 10
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 230
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$000(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    move-result-object v8

    aget-object v1, v8, p3

    .line 231
    .local v1, "childFragmentData":Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->newMenu()Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;

    move-result-object v2

    .line 232
    .local v2, "childMenuFragment":Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$100(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->setCallback(Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;)V

    .line 233
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$200(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    .line 234
    .local v3, "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$300(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 262
    :goto_0
    return v6

    .line 237
    :cond_0
    instance-of v8, v3, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    if-eqz v8, :cond_3

    .line 238
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$400(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 239
    const-string v7, "MiuiBeautyFragment"

    const-string v8, "detect task not done"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v8, v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;->beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->needFace()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$500(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 243
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0c0365

    invoke-static {v6, v8}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    move v6, v7

    .line 244
    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 246
    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .line 247
    .local v0, "beautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->setOnBeautyProcessListener(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;)V

    .line 248
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8, v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$600(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;Z)V

    .line 249
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 250
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    const v8, 0x7f1201bb

    invoke-virtual {v5, v8, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    .line 251
    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->setCompareOrigin(Z)V

    .line 252
    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->enableComparison(Z)V

    .line 253
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v8, v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$302(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;Z)Z

    .line 254
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$700(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->updateBottomBar(Z)V

    .line 256
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v6, p3}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$802(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;I)I

    .line 257
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "name"

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$900(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->access$800(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;

    iget-object v6, v6, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;->name:Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v6, "_miuibeautify"

    const-string v8, "miui_beauty_item_click"

    invoke-static {v6, v8, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .end local v0    # "beautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_3
    move v6, v7

    .line 262
    goto/16 :goto_0
.end method
