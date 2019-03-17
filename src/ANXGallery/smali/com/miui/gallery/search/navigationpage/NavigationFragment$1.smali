.class Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;
.super Ljava/lang/Object;
.source "NavigationFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/navigationpage/NavigationFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

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

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/gallery/search/SearchFragmentCallback;->requestIME(Z)V

    .line 70
    :cond_0
    return v1
.end method
