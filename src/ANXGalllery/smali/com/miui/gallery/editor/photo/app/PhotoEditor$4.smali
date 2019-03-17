.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
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
    .line 583
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sampleExit(Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 708
    :goto_0
    return-void

    .line 703
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 704
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "step_count"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getStepCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string/jumbo v1, "total_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$1000(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v1

    const-string v2, "_main"

    invoke-virtual {v1, v2, p1, v0}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private sampleNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 3
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$800(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "enter"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method


# virtual methods
.method public onDiscard()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)V

    .line 685
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 686
    const-string v0, "cancelled"

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->sampleExit(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public onExport()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->showExportDialog()V

    .line 692
    const-string v0, "exported"

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->sampleExit(Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public onNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 16
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isPreviewEnable()Z

    move-result v13

    if-nez v13, :cond_1

    .line 587
    :cond_0
    const-string v13, "PhotoEditor"

    const-string v14, "has not load preview when click"

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_0
    return-void

    .line 590
    :cond_1
    sget-object v13, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v11

    .line 591
    .local v11, "provider":Lcom/miui/gallery/editor/photo/core/SdkProvider;
    invoke-virtual {v11}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->initialized()Z

    move-result v13

    if-nez v13, :cond_2

    .line 592
    const-string v13, "PhotoEditor"

    const-string v14, "SdkProvider: %s has not initialized when click"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/editor/photo/core/Effect;->name()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 596
    :cond_2
    const-string v13, "PhotoEditor"

    const-string v14, "navigate %s"

    move-object/from16 v0, p1

    invoke-static {v13, v14, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v13

    if-eqz v13, :cond_3

    .line 599
    const-string v13, "PhotoEditor"

    const-string v14, "last effect editor is still active"

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$500(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)[Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v14

    aget-object v3, v13, v14

    .line 604
    .local v3, "data":Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    iget-object v14, v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->renderTag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/editor/photo/core/RenderFragment;

    .line 605
    .local v12, "renderView":Lcom/miui/gallery/editor/photo/core/RenderFragment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    iget-object v14, v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->gestureTag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 607
    .local v5, "gestureView":Landroid/app/Fragment;
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->newMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;

    move-result-object v8

    .line 609
    .local v8, "menu":Lcom/miui/gallery/editor/photo/app/MenuFragment;
    const/4 v6, 0x0

    .line 611
    .local v6, "hasTransaction":Z
    if-nez v12, :cond_4

    .line 612
    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->createRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v12

    .line 615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 616
    invoke-virtual {v13, v12}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f120231

    iget-object v15, v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->renderTag:Ljava/lang/String;

    .line 617
    invoke-virtual {v13, v14, v12, v15}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 618
    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    .line 619
    const/4 v6, 0x1

    .line 622
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->isSupportBitmap(Landroid/graphics/Bitmap;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v12}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->getUnSupportStringRes()I

    move-result v14

    invoke-static {v13, v14}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 628
    :cond_5
    if-nez v5, :cond_6

    .line 629
    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->createGestureFragment()Landroid/app/Fragment;

    move-result-object v5

    .line 630
    if-eqz v5, :cond_6

    .line 632
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 633
    invoke-virtual {v13, v5}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f120231

    iget-object v15, v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->gestureTag:Ljava/lang/String;

    .line 634
    invoke-virtual {v13, v14, v5, v15}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 635
    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    .line 636
    const/4 v6, 0x1

    .line 640
    :cond_6
    if-eqz v6, :cond_7

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 645
    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 646
    .local v1, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    const-string v14, "MenuFragment:display_fragment"

    invoke-virtual {v13, v1, v14, v12}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 647
    if-eqz v5, :cond_8

    .line 648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    const-string v14, "MenuFragment:gesture_fragment"

    invoke-virtual {v13, v1, v14, v5}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 650
    :cond_8
    invoke-virtual {v8, v1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    const-string v14, "navigator"

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    .line 654
    .local v9, "navi":Landroid/app/Fragment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    const-string v14, "preview"

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    .line 656
    .local v10, "preview":Landroid/app/Fragment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 657
    .local v4, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v4, v9}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 658
    invoke-virtual {v13, v10}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v13

    const/4 v14, 0x0

    .line 659
    invoke-virtual {v13, v14}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f120185

    iget-object v15, v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->menuTag:Ljava/lang/String;

    .line 660
    invoke-virtual {v13, v14, v8, v15}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 661
    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 668
    instance-of v13, v12, Lcom/miui/gallery/editor/photo/core/GLFragment;

    if-eqz v13, :cond_9

    .line 669
    new-instance v7, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    invoke-direct {v7}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;-><init>()V

    .line 670
    .local v7, "mask":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v13, "overwrite_background"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    invoke-virtual {v7, v2}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v13

    const v14, 0x7f120231

    const-string v15, "gl_mask_in"

    .line 674
    invoke-virtual {v13, v14, v7, v15}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v13

    .line 675
    invoke-virtual {v13}, Landroid/app/FragmentTransaction;->commit()I

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v13}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 679
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "mask":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$4;->sampleNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V

    goto/16 :goto_0
.end method
