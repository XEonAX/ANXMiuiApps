.class public interface abstract Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
.super Ljava/lang/Object;
.source "StickyGridHeadersBaseAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# virtual methods
.method public abstract getCountForHeader(I)I
.end method

.method public abstract getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getNumHeaders()I
.end method

.method public abstract shouldDrawDivider()Z
.end method
