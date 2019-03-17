.class public Lcom/miui/gallery/widget/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;,
        Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;
    }
.end annotation


# instance fields
.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView;->initHeaderGridView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView;->initHeaderGridView()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView;->initHeaderGridView()V

    .line 80
    return-void
.end method

.method private initHeaderGridView()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 64
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/HeaderGridView;->setGravity(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public getFooterViewCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 86
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 230
    iget-object v2, p0, Lcom/miui/gallery/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/widget/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 231
    :cond_0
    new-instance v0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;

    iget-object v2, p0, Lcom/miui/gallery/widget/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/gallery/widget/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, p1}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 234
    .local v0, "hadapter":Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView;->getNumColumns()I

    move-result v1

    .line 235
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 236
    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 238
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    .end local v0    # "hadapter":Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 240
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 94
    return-void
.end method
