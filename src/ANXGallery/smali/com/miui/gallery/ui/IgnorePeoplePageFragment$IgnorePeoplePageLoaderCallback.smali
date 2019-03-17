.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgnorePeoplePageLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 258
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "loader":Landroid/content/CursorLoader;
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->IGNORE_PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 260
    sget-object v1, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 261
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 266
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 267
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$800(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$900(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/ViewStub;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$802(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Landroid/view/View;)Landroid/view/View;

    .line 270
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$800(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f12020e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$800(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1200c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c02f2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$1000(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$800(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$IgnorePeoplePageLoaderCallback;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$1100(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 276
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 281
    return-void
.end method
