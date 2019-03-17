.class Lcom/miui/gallery/ui/FacePageFragment$1;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 146
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/adapter/FacePageAdapter;

    move-result-object v0

    .line 147
    .local v0, "adapter":Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
    new-instance v1, Lcom/miui/gallery/model/ImageLoadParams;

    .line 148
    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getItemKey(I)J

    move-result-wide v2

    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getLocalPath(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 150
    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getItemDecodeRectF(I)Landroid/graphics/RectF;

    move-result-object v6

    .line 151
    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getMimeType(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 152
    invoke-virtual {v0, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getFileLength(I)J

    move-result-wide v10

    move v7, p3

    invoke-direct/range {v1 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;ZJ)V

    .line 154
    .local v1, "item":Lcom/miui/gallery/model/ImageLoadParams;
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    .line 156
    invoke-virtual {v0}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getCount()I

    move-result v6

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 157
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$100(Lcom/miui/gallery/ui/FacePageFragment;)[Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 158
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$200(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    .line 159
    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$300(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v11

    move-object v3, p1

    move v5, p3

    move-object v10, v1

    .line 154
    invoke-static/range {v2 .. v11}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$1;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/FacePageFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "click_micro_thumb"

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 162
    return-void
.end method
