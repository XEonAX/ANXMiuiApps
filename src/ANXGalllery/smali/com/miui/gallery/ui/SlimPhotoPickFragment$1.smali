.class Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;
.super Ljava/lang/Object;
.source "SlimPhotoPickFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlimPhotoPickFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/DocumentProviderUtils;->startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V

    .line 94
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v2

    .line 86
    .local v2, "slimIds":[J
    invoke-static {}, Lcom/miui/gallery/cleaner/slim/SlimController;->getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cleaner/slim/SlimController;->start([J)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/activity/PhotoSlimActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "slimCount"

    array-length v4, v2

    int-to-float v4, v4

    sget-object v5, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->SLIM_COUNT_STAGE:[I

    invoke-static {v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "cleaner"

    const-string v4, "cleaner_slim_used"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    iget-object v3, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$1;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->finish()V

    goto :goto_0
.end method
