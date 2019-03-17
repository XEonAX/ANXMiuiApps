.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 91
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$002(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;I)I

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->access$100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 84
    :cond_0
    return-void
.end method
