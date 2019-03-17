.class Lcom/miui/gallery/ui/PeoplePageFragment$7;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;->showAndSetRelationDialog([JLandroid/view/ActionMode;)V
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
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;Landroid/view/ActionMode;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PeoplePageFragment;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7;->val$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7;->val$selectIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelationSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 781
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$7;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 788
    return-void
.end method
