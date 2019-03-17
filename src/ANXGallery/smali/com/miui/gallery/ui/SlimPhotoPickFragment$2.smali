.class Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;
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
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isAllItemsChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 101
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$2;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAllItemsCheckState(Z)V

    .line 102
    if-nez v0, :cond_0

    .line 103
    const-string v1, "cleaner"

    const-string/jumbo v2, "slim_select_all_cancel"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void

    .line 100
    .end local v0    # "checked":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
