.class Lcom/miui/gallery/ui/HomePageFragment$3;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment;->inflateEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$3;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$3;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->startCameraActivity(Landroid/content/Context;)V

    .line 374
    return-void
.end method
