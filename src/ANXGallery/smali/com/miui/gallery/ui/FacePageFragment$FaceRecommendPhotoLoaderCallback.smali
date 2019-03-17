.class Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/FacePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceRecommendPhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/FacePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/FacePageFragment$1;

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/FacePageFragment;)V

    return-void
.end method

.method private getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    const-string v0, "dateTaken DESC "

    return-object v0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->RECOMMEND_FACES_OF_ONE_PERSON_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 668
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FacePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 669
    .local v0, "loader":Landroid/content/CursorLoader;
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 670
    sget-object v1, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 671
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$2800(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->getOrderBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 673
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$2600(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 679
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$2900(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/PagerGridLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$FaceRecommendPhotoLoaderCallback;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$2600(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/PagerGridLayout;->setAdapter(Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;)V

    .line 680
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 685
    return-void
.end method
