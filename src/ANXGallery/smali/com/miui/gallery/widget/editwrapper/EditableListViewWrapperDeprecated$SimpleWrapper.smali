.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    iput-object p2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    .line 1123
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1171
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1172
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1173
    check-cast v0, Lcom/miui/gallery/ui/Checkable;

    .line 1174
    .local v0, "checkable":Lcom/miui/gallery/ui/Checkable;
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInChoiceMode()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1175
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckState(I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 1176
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->resetViewPropertyIfNeed(Landroid/view/View;Landroid/view/View;I)V

    .line 1180
    return-object v1

    .line 1178
    .end local v0    # "checkable":Lcom/miui/gallery/ui/Checkable;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must be instance of Checkable!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrapped()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1142
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1147
    return-void
.end method
