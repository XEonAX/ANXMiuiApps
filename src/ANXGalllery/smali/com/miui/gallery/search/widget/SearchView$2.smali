.class Lcom/miui/gallery/search/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 72
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c017d

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 80
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    iget-object v2, p0, Lcom/miui/gallery/search/widget/SearchView$2;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-virtual {v2}, Lcom/miui/gallery/search/widget/SearchView;->getQueryText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;->onQueryTextSubmit(Landroid/view/View;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method
