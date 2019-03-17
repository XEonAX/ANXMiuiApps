.class Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;
.super Ljava/lang/Object;
.source "PickHomePageFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickHomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePagePhotoLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickHomePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickHomePageFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickHomePageFragment;Lcom/miui/gallery/picker/PickHomePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickHomePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickHomePageFragment$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickHomePageFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/picker/PickHomePageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickHomePageFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 118
    sget-object v1, Lcom/miui/gallery/picker/PickerHomePageAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 119
    const-string v1, "alias_sort_time DESC "

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickHomePageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-eq v1, v2, :cond_1

    .line 121
    const-string v1, "alias_show_in_homepage=1 AND serverType=?"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickHomePageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v1, v2, :cond_2

    .line 127
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_1
    return-object v0

    .line 123
    :cond_1
    const-string v1, "alias_show_in_homepage=1"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickHomePageFragment;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/helper/Picker$MediaType;->VIDEO:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v1, v2, :cond_0

    .line 129
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/picker/PickHomePageFragment$HomePagePhotoLoaderCallback;->this$0:Lcom/miui/gallery/picker/PickHomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickHomePageFragment;->access$000(Lcom/miui/gallery/picker/PickHomePageFragment;)Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;

    move-result-object v0

    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/helper/PickableBaseTimeLineAdapterWrapper;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 138
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 142
    return-void
.end method
