.class Lcom/miui/gallery/ui/HomePageFragment$2;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment;->onStartup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 207
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/miui/gallery/model/ImageLoadParams;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 208
    invoke-static {v1}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getItemKey(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 209
    invoke-static {v3}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 211
    invoke-static {v5}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 212
    invoke-static {v6}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 213
    invoke-static {v6}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getFileLength(I)J

    move-result-wide v8

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 215
    .local v0, "item":Lcom/miui/gallery/model/ImageLoadParams;
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {}, Lcom/miui/gallery/ui/HomePageFragment;->access$100()Landroid/net/Uri;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment$2;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    .line 216
    invoke-static {v2}, Lcom/miui/gallery/ui/HomePageFragment;->access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/adapter/HomePageAdapter;->getCount()I

    move-result v5

    const-string v6, "alias_show_in_homepage=1 AND sha1 NOT NULL"

    const/4 v7, 0x0

    const-string v8, "alias_sort_time DESC "

    move-object v2, p1

    move v4, p3

    move-object v9, v0

    .line 215
    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;)V

    .line 219
    const-string v1, "home"

    const-string v2, "click_micro_thumb"

    int-to-long v4, p3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 221
    return-void
.end method
