.class Lcom/miui/gallery/ui/PhotoListFragmentBase$1;
.super Ljava/lang/Object;
.source "PhotoListFragmentBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoListFragmentBase;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoListFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoListFragmentBase;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 76
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getViewAdapter()Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;

    move-result-object v2

    .line 77
    .local v2, "adapter":Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    .line 78
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemKey(I)J

    move-result-wide v4

    .line 79
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 81
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    .line 82
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v10

    .line 83
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getItemSecretKey(I)[B

    move-result-object v11

    .line 84
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getFileLength(I)J

    move-result-wide v12

    move/from16 v9, p3

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 86
    .local v3, "item":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    .line 87
    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 88
    invoke-virtual {v2}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->getCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getSelection()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    .line 89
    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    .line 90
    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getCurrentSortOrder()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    iget-wide v14, v4, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    iget-object v0, v4, Lcom/miui/gallery/ui/PhotoListFragmentBase;->mAlbumName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    .line 92
    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getSupportOperationMask()I

    move-result v17

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object v13, v3

    .line 86
    invoke-static/range {v5 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/PhotoListFragmentBase$1;->this$0:Lcom/miui/gallery/ui/PhotoListFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoListFragmentBase;->getPageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "click_micro_thumb"

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    return-void
.end method
