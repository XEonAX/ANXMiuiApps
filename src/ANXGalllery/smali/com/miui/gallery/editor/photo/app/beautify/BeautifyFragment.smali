.class public Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "BeautifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mTitle:Landroid/widget/TextView;

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 68
    new-instance v0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;)Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mValues:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->performItemSelect(IIZ)V

    return-void
.end method

.method private doRender(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->clear()V

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->render()V

    .line 66
    return-void
.end method

.method private performItemSelect(IIZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "progress"    # I
    .param p3, "skipRender"    # Z

    .prologue
    .line 81
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;

    .line 82
    .local v0, "data":Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;->setSelection(I)V

    .line 83
    if-nez p3, :cond_0

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->doRender(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mDataList:Ljava/util/List;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const v0, 0x7f040038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mValues:[I

    .line 52
    const v0, 0x7f120087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 53
    new-instance v0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mDataList:Ljava/util/List;

    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mAdapter:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 57
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mTitle:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0349

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0, v6, v6}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->performItemSelect(IIZ)V

    .line 60
    return-void
.end method
