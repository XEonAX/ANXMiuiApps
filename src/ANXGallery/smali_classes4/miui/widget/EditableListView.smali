.class public Lmiui/widget/EditableListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/EditableListView$ItemCheckFilter;,
        Lmiui/widget/EditableListView$MultiChoiceModeListener;
    }
.end annotation


# instance fields
.field private SU:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    .line 71
    return-void
.end method

.method private eP()Lcom/miui/internal/widget/EditableListViewDelegate;
    .locals 2

    .line 74
    iget-object v0, p0, Lmiui/widget/EditableListView;->SU:Lcom/miui/internal/widget/EditableListViewDelegate;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;-><init>()V

    iput-object v0, p0, Lmiui/widget/EditableListView;->SU:Lcom/miui/internal/widget/EditableListViewDelegate;

    .line 76
    iget-object v0, p0, Lmiui/widget/EditableListView;->SU:Lcom/miui/internal/widget/EditableListViewDelegate;

    const-class v1, Landroid/widget/ListView;

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V

    .line 77
    iget-object v0, p0, Lmiui/widget/EditableListView;->SU:Lcom/miui/internal/widget/EditableListViewDelegate;

    new-instance v1, Lmiui/widget/EditableListView$1;

    invoke-direct {v1, p0}, Lmiui/widget/EditableListView$1;-><init>(Lmiui/widget/EditableListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lmiui/widget/EditableListView;->SU:Lcom/miui/internal/widget/EditableListViewDelegate;

    return-object v0
.end method


# virtual methods
.method public clearChoices()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->clearChoices()V

    .line 125
    return-void
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 150
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public isAllItemsChecked()Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v0

    return v0
.end method

.method public isInActionMode()Z
    .locals 1

    .line 159
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isInActionMode()Z

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .line 134
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public isItemIdChecked(J)Z
    .locals 1

    .line 145
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemIdChecked(J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 18
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    .line 120
    return-void
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V

    .line 189
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    .line 130
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 100
    return-void
.end method

.method protected updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 180
    return-void
.end method

.method protected updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 1

    .line 170
    invoke-direct {p0}, Lmiui/widget/EditableListView;->eP()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 171
    return-void
.end method
