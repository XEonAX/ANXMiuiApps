.class Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/resultpage/SearchResultFragment;->onLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->moreThanOnePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->access$000(Lcom/miui/gallery/search/resultpage/SearchResultFragment;)Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/display/BaseSuggestionAdapter;->showLoadCompleteView()V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/SearchResultFragment$2;->this$0:Lcom/miui/gallery/search/resultpage/SearchResultFragment;

    iget-object v0, v0, Lcom/miui/gallery/search/resultpage/SearchResultFragment;->mStatusHandleHelper:Lcom/miui/gallery/search/StatusHandleHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/search/StatusHandleHelper;->refreshInfoViews()V

    .line 148
    :cond_0
    return-void
.end method
