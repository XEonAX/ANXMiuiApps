.class Lcom/miui/gallery/search/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/search/widget/SearchView$1;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$1;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/search/widget/SearchView$1;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-static {v0}, Lcom/miui/gallery/search/widget/SearchView;->access$000(Lcom/miui/gallery/search/widget/SearchView;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/widget/SearchView$1;->this$0:Lcom/miui/gallery/search/widget/SearchView;

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;->onFocusChanged(Landroid/view/View;Z)V

    .line 67
    :cond_0
    return-void
.end method
