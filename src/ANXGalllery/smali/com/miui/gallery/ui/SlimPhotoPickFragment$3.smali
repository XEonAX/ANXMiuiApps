.class Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;
.super Landroid/database/DataSetObserver;
.source "SlimPhotoPickFragment.java"


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
    .line 109
    iput-object p1, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$100(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$200(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/AlbumDetailTimeLineAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$102(Lcom/miui/gallery/ui/SlimPhotoPickFragment;Z)Z

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$000(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setAllItemsCheckState(Z)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlimPhotoPickFragment$3;->this$0:Lcom/miui/gallery/ui/SlimPhotoPickFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/SlimPhotoPickFragment;->access$300(Lcom/miui/gallery/ui/SlimPhotoPickFragment;)V

    .line 117
    return-void
.end method
