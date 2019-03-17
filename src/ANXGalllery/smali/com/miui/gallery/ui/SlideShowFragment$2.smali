.class Lcom/miui/gallery/ui/SlideShowFragment$2;
.super Ljava/lang/Object;
.source "SlideShowFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SlideShowFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlideShowFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlideShowFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlideShowFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/ui/SlideShowFragment$2;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment$2;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlideShowFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideShowFragment$2;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlideShowFragment;->finish()V

    .line 79
    :cond_0
    return v1
.end method
