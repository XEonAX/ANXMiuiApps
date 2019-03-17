.class public abstract Lcom/miui/gallery/share/GridPreferenceBase;
.super Landroid/preference/Preference;
.source "GridPreferenceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;,
        Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected final mClickListener:Landroid/view/View$OnClickListener;

.field protected mColumnCount:I

.field protected mColumnWidth:I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mItemClickListener:Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/share/GridPreferenceBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/share/GridPreferenceBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/miui/gallery/share/GridPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/GridPreferenceBase$1;-><init>(Lcom/miui/gallery/share/GridPreferenceBase;)V

    iput-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mClickListener:Landroid/view/View$OnClickListener;

    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreferenceBase;->getLayoutResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/GridPreferenceBase;->setLayoutResource(I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/share/GridPreferenceBase;)Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/GridPreferenceBase;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mItemClickListener:Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method protected abstract getLayoutResourceId()I
.end method

.method protected getTagInfo()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreferenceBase;->getLayoutResourceId()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/miui/gallery/share/GridPreferenceBase;->updateGrid(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mAdapter:Landroid/widget/ListAdapter;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/GridPreferenceBase$MyDataSetObserver;-><init>(Lcom/miui/gallery/share/GridPreferenceBase;)V

    iput-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreferenceBase;->update()V

    .line 85
    return-void
.end method

.method public setColumnCountAndWidth(II)V
    .locals 0
    .param p1, "columnCount"    # I
    .param p2, "columnWidth"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mColumnCount:I

    .line 89
    iput p2, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mColumnWidth:I

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreferenceBase;->notifyChanged()V

    .line 91
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/share/GridPreferenceBase;->mItemClickListener:Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;

    .line 95
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/miui/gallery/share/GridPreferenceBase;->notifyChanged()V

    .line 99
    return-void
.end method

.method protected abstract updateGrid(Landroid/view/View;)V
.end method
