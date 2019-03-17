.class Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSortByClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumDetailFragment;Lcom/miui/gallery/ui/AlbumDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumDetailFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumDetailFragment$1;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;-><init>(Lcom/miui/gallery/ui/AlbumDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 366
    .local v0, "loader":Landroid/content/Loader;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 380
    :goto_0
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 381
    return-void

    .line 368
    :sswitch_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    move-object v1, v0

    check-cast v1, Landroid/content/CursorLoader;

    sget-object v3, Lcom/miui/gallery/widget/SortByHeader$SortBy;->DATE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-static {v2, v1, v3}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$100(Lcom/miui/gallery/ui/AlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 369
    const-string v1, "album_detail"

    const-string/jumbo v2, "sort_by_date"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    move-object v1, v0

    check-cast v1, Landroid/content/CursorLoader;

    sget-object v3, Lcom/miui/gallery/widget/SortByHeader$SortBy;->NAME:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-static {v2, v1, v3}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$100(Lcom/miui/gallery/ui/AlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    .line 373
    const-string v1, "album_detail"

    const-string/jumbo v2, "sort_by_name"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :sswitch_2
    const-string v1, "album_detail"

    const-string/jumbo v2, "sort_by_size"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumDetailFragment$OnSortByClickListener;->this$0:Lcom/miui/gallery/ui/AlbumDetailFragment;

    move-object v1, v0

    check-cast v1, Landroid/content/CursorLoader;

    sget-object v3, Lcom/miui/gallery/widget/SortByHeader$SortBy;->SIZE:Lcom/miui/gallery/widget/SortByHeader$SortBy;

    invoke-static {v2, v1, v3}, Lcom/miui/gallery/ui/AlbumDetailFragment;->access$100(Lcom/miui/gallery/ui/AlbumDetailFragment;Landroid/content/CursorLoader;Lcom/miui/gallery/widget/SortByHeader$SortBy;)V

    goto :goto_0

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120090 -> :sswitch_0
        0x7f120093 -> :sswitch_1
        0x7f120096 -> :sswitch_2
    .end sparse-switch
.end method
