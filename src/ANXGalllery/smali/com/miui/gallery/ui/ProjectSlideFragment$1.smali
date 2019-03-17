.class Lcom/miui/gallery/ui/ProjectSlideFragment$1;
.super Ljava/lang/Object;
.source "ProjectSlideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ProjectSlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ProjectSlideFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ProjectSlideFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/ProjectSlideFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/ui/ProjectSlideFragment$1;->this$0:Lcom/miui/gallery/ui/ProjectSlideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/ui/ProjectSlideFragment$1;->this$0:Lcom/miui/gallery/ui/ProjectSlideFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->access$000(Lcom/miui/gallery/ui/ProjectSlideFragment;)V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/ui/ProjectSlideFragment$1;->this$0:Lcom/miui/gallery/ui/ProjectSlideFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ProjectSlideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 39
    return-void
.end method
