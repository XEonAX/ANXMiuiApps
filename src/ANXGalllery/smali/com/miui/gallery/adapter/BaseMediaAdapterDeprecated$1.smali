.class Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$1;
.super Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$OnScrollListenerWrapper;
.source "BaseMediaAdapterDeprecated.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->generateWrapScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
    .param p2, "wrapped"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$1;->this$0:Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;

    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$OnScrollListenerWrapper;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$OnScrollListenerWrapper;->onScroll(Landroid/widget/AbsListView;III)V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$1;->this$0:Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->onViewScrolled(Landroid/widget/AbsListView;III)V

    .line 77
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$OnScrollListenerWrapper;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated$1;->this$0:Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->onViewScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 71
    return-void
.end method
