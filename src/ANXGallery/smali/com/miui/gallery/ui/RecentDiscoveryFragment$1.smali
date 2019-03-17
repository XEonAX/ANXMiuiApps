.class Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;
.super Ljava/lang/Object;
.source "RecentDiscoveryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getGridViewOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20
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
    .line 205
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getAdapter()Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;

    move-result-object v2

    .line 206
    .local v2, "adapter":Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    .line 207
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemKey(I)J

    move-result-wide v4

    .line 208
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/miui/gallery/Config$ThumbConfig;->sMicroRecentTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 210
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    .line 211
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v10

    .line 212
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getItemSecretKey(I)[B

    move-result-object v11

    .line 213
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getFileLength(I)J

    move-result-wide v12

    move/from16 v9, p3

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;[BJ)V

    .line 215
    .local v3, "item":Lcom/miui/gallery/model/ImageLoadParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 216
    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 217
    invoke-virtual {v2}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSelection()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 218
    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 219
    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-wide v14, v4, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    iget-object v0, v4, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->mAlbumName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    .line 221
    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getSupportOperationMask()I

    move-result v17

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object v13, v3

    .line 215
    invoke-static/range {v5 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;I)V

    .line 222
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/RecentDiscoveryAdapter;->getDateModified(I)J

    move-result-wide v18

    .line 223
    .local v18, "dateModified":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->access$100(Lcom/miui/gallery/ui/RecentDiscoveryFragment;)J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_0

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->access$102(Lcom/miui/gallery/ui/RecentDiscoveryFragment;J)J

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/RecentDiscoveryFragment$1;->this$0:Lcom/miui/gallery/ui/RecentDiscoveryFragment;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/RecentDiscoveryFragment;->getPageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "click_micro_thumb"

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 228
    return-void
.end method
