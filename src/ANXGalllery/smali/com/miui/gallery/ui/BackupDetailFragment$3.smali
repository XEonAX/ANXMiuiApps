.class Lcom/miui/gallery/ui/BackupDetailFragment$3;
.super Ljava/lang/Object;
.source "BackupDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BackupDetailFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BackupDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BackupDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BackupDetailFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

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
    .line 256
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->startAuthenticatePrivacyPassword(Landroid/app/Fragment;)V

    .line 280
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "localGroupId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, -0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "selection":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 262
    invoke-static {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemKey(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 263
    invoke-static {v6}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 265
    invoke-static {v8}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 266
    invoke-static {v9}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 267
    invoke-static {v9}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemSecretKey(I)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 268
    invoke-static {v9}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getFileLength(I)J

    move-result-wide v12

    move/from16 v9, p3

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 270
    .local v3, "item":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 271
    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 272
    invoke-static {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->access$100(Lcom/miui/gallery/ui/BackupDetailFragment;)Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getSecretCount()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    sub-int v9, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 273
    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 274
    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->getCurrentSortOrder()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    iget-wide v14, v4, Lcom/miui/gallery/ui/BackupDetailFragment;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    iget-object v0, v4, Lcom/miui/gallery/ui/BackupDetailFragment;->mAlbumName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    .line 276
    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->getSupportOperationMask()I

    move-result v17

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object v10, v2

    move-object v13, v3

    .line 270
    invoke-static/range {v5 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/BackupDetailFragment$3;->this$0:Lcom/miui/gallery/ui/BackupDetailFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/BackupDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "click_micro_thumb"

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 272
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
