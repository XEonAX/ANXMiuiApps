.class Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$2;
.super Ljava/lang/Object;
.source "SuggestionFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$2;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$2;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment$2;->this$0:Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/suggestionpage/SuggestionFragment;->getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/SearchFragmentCallback;->requestIME(Z)V

    .line 158
    :cond_0
    return v1
.end method
