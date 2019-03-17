.class Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;
.super Ljava/lang/Object;
.source "MovieStoryPickFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
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
    .line 68
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 69
    .local v2, "cursor":Landroid/database/Cursor;
    new-instance v14, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(Landroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Lcom/miui/gallery/model/ImageLoadParams;

    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 72
    invoke-static {v4}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getItemKey(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 73
    invoke-static {v6}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 76
    invoke-static {v10}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 77
    invoke-static {v11}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Z

    move-result v11

    iget-object v12, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 78
    invoke-static {v12}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->getFileLength(I)J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;ZJ)V

    .line 80
    .local v3, "item":Lcom/miui/gallery/model/ImageLoadParams;
    iget-object v4, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    invoke-static {v4}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 81
    invoke-static {v5}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$300(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 82
    invoke-static {v6, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 83
    invoke-static {v7, v2}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;

    .line 84
    invoke-static {v8}, Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;->access$600(Lcom/miui/gallery/movie/ui/fragment/MovieStoryPickFragment;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    move-object v10, v14

    .line 80
    invoke-static/range {v4 .. v10}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPageFromPicker(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/util/ArrayList;)V

    .line 87
    return-void
.end method
