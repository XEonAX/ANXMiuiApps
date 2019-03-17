.class public Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "PeopleFaceMergeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;,
        Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;,
        Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PageChangeListener;,
        Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

.field private mPagerAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;

.field private mPagerIndicator:Lcom/miui/gallery/widget/PagerIndicator;

.field private mPeopleSelectListener:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;

.field private mViewPager:Lcom/miui/gallery/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Lcom/miui/gallery/ui/renameface/FolderItemsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPagerAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Lcom/miui/gallery/widget/PagerIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPagerIndicator:Lcom/miui/gallery/widget/PagerIndicator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPeopleSelectListener:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;

    return-object v0
.end method

.method private initPagerLoader(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V
    .locals 5
    .param p1, "faceSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "selectedFoldersLocalId":[J
    if-eqz p1, :cond_0

    .line 79
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 83
    :cond_0
    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;[J)V

    iput-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    .line 95
    return-void
.end method

.method private setCancelButtonClickListener(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 104
    new-instance v0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$2;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->cancel()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "merge_action_from_album"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 49
    .local v0, "faceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mItems:Ljava/util/ArrayList;

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPagerAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;

    .line 52
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->initPagerLoader(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    .line 53
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400e6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "dialogView":Landroid/view/View;
    const v5, 0x7f120211

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/PagerIndicator;

    iput-object v5, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPagerIndicator:Lcom/miui/gallery/widget/PagerIndicator;

    .line 59
    const v5, 0x7f120210

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/widget/ViewPager;

    iput-object v5, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    .line 60
    iget-object v5, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v6, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPagerAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/ViewPager;->setAdapter(Lcom/miui/gallery/widget/PagerAdapter;)V

    .line 61
    iget-object v5, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    new-instance v6, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PageChangeListener;

    invoke-direct {v6, p0, v8}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PageChangeListener;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/ViewPager;->setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V

    .line 62
    const v5, 0x7f120213

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "cancelButton":Landroid/widget/Button;
    const v5, 0x7f12020f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 64
    .local v3, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "people_face_Merge_title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->setCancelButtonClickListener(Landroid/widget/Button;Landroid/app/Dialog;)V

    .line 69
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 70
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 71
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 72
    return-object v1
.end method

.method public setPeopleSelectListener(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->mPeopleSelectListener:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeopleSelectListener;

    .line 118
    return-void
.end method
