.class Lcom/miui/gallery/search/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/SearchFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/SearchFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/gallery/search/SearchFragment$2;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$2;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->requestFocus()Z

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$2;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->selectAll(Z)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$2;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->showInputMethod()Z

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$2;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchFragment$2;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/SearchFragment;->access$100(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setSearchViewListener(Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;)V

    .line 189
    return-void
.end method
