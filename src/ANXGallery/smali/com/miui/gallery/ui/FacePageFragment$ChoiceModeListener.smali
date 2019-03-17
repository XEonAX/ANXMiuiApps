.class Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/FacePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceModeListener"
.end annotation


# instance fields
.field private mMode:Landroid/view/ActionMode;

.field private mRemoveFromFaceAlbumListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 1

    .prologue
    .line 872
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    new-instance v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;-><init>(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mRemoveFromFaceAlbumListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/FacePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/FacePageFragment$1;

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method private enableOrDisableMenuItem(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 899
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 900
    .local v0, "menu":Landroid/view/Menu;
    const v1, 0x7f120300

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 901
    const v1, 0x7f120303

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 902
    const v1, 0x7f120301

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 903
    const v1, 0x7f120302

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 904
    return-void
.end method

.method private getSelectedPhotoIds()[J
    .locals 10

    .prologue
    .line 1044
    iget-object v7, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v7

    .line 1045
    invoke-virtual {v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 1046
    .local v3, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v6, "trueSelectedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 1048
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1049
    .local v2, "key":I
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1050
    iget-object v7, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v7}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemPhotoId(I)J

    move-result-wide v4

    .line 1051
    .local v4, "photoId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .end local v4    # "photoId":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v2    # "key":I
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [J

    .line 1056
    .local v1, "ids":[J
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1057
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v1, v0

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1059
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 21
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 908
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 969
    const/4 v3, 0x0

    .line 971
    :goto_0
    return v3

    .line 911
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mRemoveFromFaceAlbumListener:Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/FacePageFragment;->access$3200(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;)V

    .line 971
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 914
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mMode:Landroid/view/ActionMode;

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->getSelectedPhotoIds()[J

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/ui/FacePageFragment;->access$3300(Lcom/miui/gallery/ui/FacePageFragment;Landroid/view/ActionMode;[J)V

    goto :goto_1

    .line 917
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v4, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$1;-><init>(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;Landroid/view/ActionMode;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 922
    invoke-static {v5}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItems()Ljava/util/List;

    move-result-object v5

    .line 917
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->doProduceCreation(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Ljava/util/List;)V

    .line 923
    const-string v3, "face"

    const-string v4, "produce"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 926
    :pswitch_3
    const v8, 0x7fffffff

    .line 927
    .local v8, "initPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v20

    .line 928
    .local v20, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 929
    .local v19, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 930
    .local v17, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 931
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v18

    .line 932
    .local v18, "key":I
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemKey(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    move/from16 v0, v18

    if-ge v0, v8, :cond_0

    .line 936
    move/from16 v8, v18

    .line 930
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 941
    .end local v18    # "key":I
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v15, v3, [I

    .line 942
    .local v15, "selectedPos":[I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [J

    .line 943
    .local v14, "selectedId":[J
    const/16 v16, 0x0

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 944
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v15, v16

    .line 945
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v14, v16

    .line 943
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 948
    :cond_2
    const v3, 0x7fffffff

    if-ne v8, v3, :cond_3

    .line 949
    const/4 v8, 0x0

    .line 951
    :cond_3
    new-instance v2, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 952
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemKey(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 953
    invoke-static {v5}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/miui/gallery/adapter/FacePageAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v5

    .line 954
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 955
    invoke-static {v7}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/miui/gallery/adapter/FacePageAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 956
    invoke-static {v9}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/miui/gallery/adapter/FacePageAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v10}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/miui/gallery/adapter/FacePageAdapter;->getFileLength(I)J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 958
    .local v2, "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    sget-object v7, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 960
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/FacePageAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 961
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$100(Lcom/miui/gallery/ui/FacePageFragment;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 962
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$200(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    .line 958
    invoke-static/range {v6 .. v15}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[I)V

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    .line 965
    const-string v3, "face"

    const-string v4, "face_send"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x7f120300
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemCount()I

    move-result v0

    .line 1040
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->enableOrDisableMenuItem(Z)V

    .line 1041
    return-void

    .line 1040
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mMode:Landroid/view/ActionMode;

    .line 878
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/BuildUtil;->isMiuiSdkGte15(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f13000d

    .line 880
    .local v0, "menuResId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 881
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->enableOrDisableMenuItem(Z)V

    .line 882
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$3000(Lcom/miui/gallery/ui/FacePageFragment;I)V

    .line 883
    const/4 v1, 0x1

    return v1

    .line 878
    .end local v0    # "menuResId":I
    :cond_0
    const v0, 0x7f130004

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->mMode:Landroid/view/ActionMode;

    .line 977
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$3000(Lcom/miui/gallery/ui/FacePageFragment;I)V

    .line 978
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 894
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemCount()I

    move-result v0

    .line 895
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->enableOrDisableMenuItem(Z)V

    .line 896
    return-void

    .line 895
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$3000(Lcom/miui/gallery/ui/FacePageFragment;I)V

    .line 889
    const/4 v0, 0x0

    return v0
.end method
