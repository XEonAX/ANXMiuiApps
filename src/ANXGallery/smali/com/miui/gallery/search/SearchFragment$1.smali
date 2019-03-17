.class Lcom/miui/gallery/search/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/SearchFragment;->configSearchView()V
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
    .line 160
    iput-object p1, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->requestFocus()Z

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->selectAll(Z)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setCursorVisible(Z)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v1}, Lcom/miui/gallery/search/SearchFragment;->access$100(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/widget/SearchView;->setSearchViewListener(Lcom/miui/gallery/search/widget/SearchView$SearchViewListener;)V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/search/SearchFragment$1;->this$0:Lcom/miui/gallery/search/SearchFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchFragment;->access$000(Lcom/miui/gallery/search/SearchFragment;)Lcom/miui/gallery/search/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/widget/SearchView;->showInputMethod()Z

    .line 168
    return-void
.end method
