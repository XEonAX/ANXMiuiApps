.class Lcom/miui/gallery/ui/PeoplePageFragment$4;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;->showIgnoreFaceAlbumAlert([JLandroid/view/ActionMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

.field final synthetic val$mode:Landroid/view/ActionMode;

.field final synthetic val$selectIds:[J


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$4;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$4;->val$selectIds:[J

    iput-object p3, p0, Lcom/miui/gallery/ui/PeoplePageFragment$4;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$4;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$4;->val$selectIds:[J

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$4;->val$mode:Landroid/view/ActionMode;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$2400(Lcom/miui/gallery/ui/PeoplePageFragment;[JLandroid/view/ActionMode;)V

    .line 722
    const-string v0, "people"

    const-string v1, "people_ignore_album"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method
