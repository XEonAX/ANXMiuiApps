.class Lcom/miui/gallery/picker/PickerFragment$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickerFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickerFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "itemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 75
    .local v2, "activity":Landroid/app/Activity;
    if-nez v2, :cond_1

    .line 103
    .end local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    if-eqz v2, :cond_2

    instance-of v4, v2, Lcom/miui/security/CrossUserCompatActivity;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/miui/security/CrossUserCompatActivity;

    invoke-virtual {v4}, Lcom/miui/security/CrossUserCompatActivity;->isCrossUserPick()Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    :cond_2
    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .end local p1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    .line 82
    .local v14, "adapter":Landroid/widget/ListAdapter;
    move/from16 v0, p3

    invoke-interface {v14, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/database/Cursor;

    .line 83
    .local v15, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    invoke-virtual {v4, v15}, Lcom/miui/gallery/picker/PickerFragment;->onPhotoItemClick(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    new-instance v16, Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 89
    invoke-virtual {v4, v15}, Lcom/miui/gallery/picker/PickerFragment;->getKey(Landroid/database/Cursor;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 90
    invoke-virtual {v6, v15}, Lcom/miui/gallery/picker/PickerFragment;->getLocalPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 93
    invoke-static {v15}, Lcom/miui/gallery/picker/helper/CursorUtils;->getMimeType(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 94
    invoke-virtual {v11}, Lcom/miui/gallery/picker/PickerFragment;->isPreviewFace()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    invoke-virtual {v12, v15}, Lcom/miui/gallery/picker/PickerFragment;->getFileLength(Landroid/database/Cursor;)J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;ZJ)V

    .line 96
    .local v3, "item":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 97
    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickerFragment;->getPreviewUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 98
    invoke-virtual {v4, v15}, Lcom/miui/gallery/picker/PickerFragment;->getPreviewSelection(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 99
    invoke-virtual {v4, v15}, Lcom/miui/gallery/picker/PickerFragment;->getPreviewSelectionArgs(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/picker/PickerFragment$1;->this$0:Lcom/miui/gallery/picker/PickerFragment;

    .line 100
    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickerFragment;->getPreviewOrder()Ljava/lang/String;

    move-result-object v8

    move-object v4, v2

    move-object v9, v3

    move-object/from16 v10, v16

    .line 96
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPageFromPicker(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
