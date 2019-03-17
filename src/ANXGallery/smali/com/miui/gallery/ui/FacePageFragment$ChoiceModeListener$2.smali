.class Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceAlbumHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;
    .param p1, "x1"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;

    .prologue
    .line 980
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->doRemove(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    return-void
.end method

.method private doRemove(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V
    .locals 2
    .param p1, "folderItem"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->doMoveFacesToAnother(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;[J)V

    .line 1027
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->access$3500(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1028
    const-string v0, "face"

    const-string v1, "face_remove"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    return-void
.end method


# virtual methods
.method public onGetFolderItem(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V
    .locals 10
    .param p1, "folderItem"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$3100(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemIds()[J

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 985
    new-instance v1, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2$1;-><init>(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V

    .line 992
    .local v1, "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2$2;-><init>(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;)V

    .line 1000
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, ""

    .line 1002
    .local v3, "title":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x7f0c0409

    invoke-virtual {v0, v6}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x7f0c0319

    invoke-virtual {v0, v6}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1005
    .local v5, "positiveButtonText":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0c0408

    .line 1006
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 1013
    .local v4, "message":Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/high16 v6, 0x1040000

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showConfirmAlertWithCancel(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/app/AlertDialog;

    .line 1022
    .end local v1    # "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "cancelListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v5    # "positiveButtonText":Ljava/lang/String;
    :cond_0
    return-void

    .line 1008
    .restart local v1    # "confirmListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v2    # "cancelListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x104000a

    invoke-virtual {v0, v6}, Lcom/miui/gallery/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1009
    .restart local v5    # "positiveButtonText":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->this$1:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x7f0c012f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1010
    invoke-interface {p1}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1009
    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery/activity/BaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .restart local v4    # "message":Ljava/lang/CharSequence;
    goto :goto_0
.end method
