.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;
.super Ljava/lang/Object;
.source "CloudSpaceStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->refresh(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$CloudStatusData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->gotoMiCloudVipPage(Landroid/content/Context;)V

    .line 114
    const-string v0, "Sync"

    const-string/jumbo v1, "sync_cloud_space_enlarge"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method
