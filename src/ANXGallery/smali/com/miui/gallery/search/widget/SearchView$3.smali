.class Lcom/miui/gallery/search/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/widget/SearchView;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/miui/gallery/search/widget/SearchView$3;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$3;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$3;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/widget/SearchView$3;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView$3;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v2}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;->onQueryTextChanged(Landroid/view/View;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$3;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$100(Lcom/miui/gallery/search/widget/SearchView;)V

    .line 98
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 90
    return-void
.end method
