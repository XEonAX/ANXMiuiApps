.class Lcom/miui/gallery/ui/FacePageFragment$18;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->doDelete(Landroid/view/ActionMode;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(I[J)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "deleteIds"    # [J

    .prologue
    const/4 v6, 0x0

    .line 1069
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-nez v1, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v0

    .line 1073
    .local v0, "faceIds":[J
    invoke-static {v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->ignoreFaces([J)V

    .line 1074
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const v3, 0x7f0c014d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1075
    if-lez p1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1, v6}, Lcom/miui/gallery/util/SoundUtils;->playSoundForOperation(Landroid/content/Context;I)V

    .line 1079
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$18;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 1080
    const-string v1, "face"

    const-string v2, "face_delete"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
