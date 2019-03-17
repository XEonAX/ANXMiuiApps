.class public Lcom/miui/gallery/picker/PickPeoplePageFragment;
.super Lcom/miui/gallery/picker/PickerFragment;
.source "PickPeoplePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickPeoplePageFragment$PeoplePagePhotoLoaderCallback;
    }
.end annotation


# instance fields
.field private mIsOnlyPickPeople:Z

.field private mPeopleGridView:Landroid/widget/GridView;

.field private mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

.field private mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

.field private mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickPeoplePageFragment$PeoplePagePhotoLoaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerFragment;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickPeoplePageFragment;)Lcom/miui/gallery/adapter/PeoplePageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickPeoplePageFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickPeoplePageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickPeoplePageFragment;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mIsOnlyPickPeople:Z

    return v0
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "picker_people"

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    new-instance v0, Lcom/miui/gallery/picker/PickPeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/picker/PickPeoplePageFragment$PeoplePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/picker/PickPeoplePageFragment;Lcom/miui/gallery/picker/PickPeoplePageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickPeoplePageFragment$PeoplePagePhotoLoaderCallback;

    .line 144
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePagePhotoLoaderCallback:Lcom/miui/gallery/picker/PickPeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 146
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 152
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 158
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickPeoplePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/PeoplePageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerFragment;->onDestroy()V

    .line 167
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f12008d

    const/4 v3, 0x0

    .line 42
    const v1, 0x7f0400e8

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridView:Landroid/widget/GridView;

    .line 44
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridView:Landroid/widget/GridView;

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 45
    new-instance v1, Lcom/miui/gallery/adapter/PeoplePageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/adapter/PeoplePageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    .line 46
    iget-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeoplePageAdapter:Lcom/miui/gallery/adapter/PeoplePageAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mPeopleGridViewWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    new-instance v2, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/picker/PickPeoplePageFragment$1;-><init>(Lcom/miui/gallery/picker/PickPeoplePageFragment;)V

    .line 48
    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAreHeadersSticky(Z)V

    .line 93
    return-object v0
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public setIsPickPeople(Z)V
    .locals 0
    .param p1, "isOnlyPickPeople"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/miui/gallery/picker/PickPeoplePageFragment;->mIsOnlyPickPeople:Z

    .line 103
    return-void
.end method
