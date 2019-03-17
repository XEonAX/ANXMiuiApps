.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;
.super Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeLineWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;)V
    .locals 0
    .param p2, "wrapped"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .line 1273
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Landroid/widget/ListAdapter;)V

    .line 1274
    iput-object p2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 1275
    return-void
.end method


# virtual methods
.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v0

    return v0
.end method

.method public getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v2, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1290
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/CheckableView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1291
    check-cast v0, Lcom/miui/gallery/ui/CheckableView;

    .line 1292
    .local v0, "checkableView":Lcom/miui/gallery/ui/CheckableView;
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v2, v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/miui/gallery/ui/CheckableView;I)V

    .line 1294
    .end local v0    # "checkableView":Lcom/miui/gallery/ui/CheckableView;
    :cond_0
    return-object v1
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    return v0
.end method

.method public shouldDrawDivider()Z
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;->mWrapped:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->shouldDrawDivider()Z

    move-result v0

    return v0
.end method
