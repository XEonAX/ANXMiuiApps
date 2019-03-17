.class Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;
.super Ljava/lang/Object;
.source "StoryAlbumFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRemove:Landroid/view/MenuItem;

.field private mShare:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gotoPreviewSelectPage(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 18
    .param p3, "initPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 698
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [I

    .line 677
    .local v12, "selectedPos":[I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 678
    .local v17, "selectedId":[J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_1

    .line 679
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v12, v15

    .line 680
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v17, v15

    .line 678
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 682
    :cond_1
    new-instance v2, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 683
    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemKey(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 684
    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v5

    .line 685
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 686
    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 687
    invoke-static {v8}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v8}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getFileLength(I)J

    move-result-wide v10

    move/from16 v8, p3

    invoke-direct/range {v2 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 689
    .local v2, "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 690
    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$600(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 691
    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v5, p3

    move-object v10, v2

    move-object/from16 v11, v17

    .line 689
    invoke-static/range {v3 .. v14}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[ILjava/lang/String;Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->stopActionMode()V

    .line 694
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 695
    .local v16, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "scenarioId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/Card;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/card/Card;->getScenarioId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v3, "assistant"

    const-string v4, "assistant_card_share_photos"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private removeItemByIds(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "sha1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$2;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;Ljava/util/ArrayList;)V

    .line 655
    .local v1, "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$3;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;)V

    .line 661
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 662
    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3800(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const v4, 0x7f0c05ab

    .line 665
    invoke-virtual {v3, v4}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const v5, 0x7f0c05a9

    .line 666
    invoke-virtual {v4, v5}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const v6, 0x7f0c05aa

    .line 667
    invoke-virtual {v5, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 661
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/app/AlertDialog;

    .line 669
    return-void
.end method

.method private updateMenuState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 717
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->getCheckedItemCount()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 718
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->mShare:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 719
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->mRemove:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->mShare:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 722
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->mRemove:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 603
    const v2, 0x7fffffff

    .line 604
    .local v2, "initPos":I
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 605
    .local v5, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 606
    .local v4, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 607
    .local v6, "sha1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 610
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 611
    .local v3, "key":I
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 612
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$StoryAlbumAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result v3

    .line 613
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getSha1(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v7, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v7}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$400(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumAdapter;->getItemKey(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    if-ge v3, v2, :cond_0

    .line 617
    move v2, v3

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    .end local v3    # "key":I
    :cond_1
    const v7, 0x7fffffff

    if-ne v2, v7, :cond_2

    .line 622
    const/4 v2, 0x0

    .line 624
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 632
    const/4 v7, 0x0

    .line 634
    :goto_1
    return v7

    .line 626
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->removeItemByIds(Ljava/util/ArrayList;)V

    .line 634
    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    .line 629
    :pswitch_1
    invoke-direct {p0, v4, v1, v2}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->gotoPreviewSelectPage(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 624
    :pswitch_data_0
    .packed-switch 0x7f120316
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->updateMenuState()V

    .line 566
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 575
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2700(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f130011

    .line 577
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 578
    const v1, 0x7f120317

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->mRemove:Landroid/view/MenuItem;

    .line 579
    const v1, 0x7f120316

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->mShare:Landroid/view/MenuItem;

    .line 580
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->updateMenuState()V

    .line 581
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1, v3}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    .line 582
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 583
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$1;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 592
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$3300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    .line 593
    return v3

    .line 575
    .end local v0    # "menuResId":I
    :cond_0
    const v0, 0x7f13000b

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2802(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;Z)Z

    .line 703
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$2900(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)V

    .line 704
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4$4;-><init>(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 713
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->this$0:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->access$3200(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;)Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;->access$3300(Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$ActionBarHelper;)V

    .line 714
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment$4;->updateMenuState()V

    .line 571
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method
