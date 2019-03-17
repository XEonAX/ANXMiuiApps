.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;
.super Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTimeLineWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V
    .locals 0
    .param p2, "wrapped"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 1236
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Landroid/widget/ListAdapter;)V

    .line 1237
    iput-object p2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .line 1238
    return-void
.end method


# virtual methods
.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1248
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v2, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1250
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/CheckableView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1251
    check-cast v0, Lcom/miui/gallery/ui/CheckableView;

    .line 1252
    .local v0, "checkableView":Lcom/miui/gallery/ui/CheckableView;
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getGroupIndexByItemIndex(I)I

    move-result v2

    invoke-static {v3, v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/miui/gallery/ui/CheckableView;I)V

    .line 1254
    .end local v0    # "checkableView":Lcom/miui/gallery/ui/CheckableView;
    :cond_0
    return-object v1
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->shouldDrawDivider()Z

    move-result v0

    return v0
.end method
