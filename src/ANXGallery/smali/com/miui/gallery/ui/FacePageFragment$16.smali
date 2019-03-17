.class Lcom/miui/gallery/ui/FacePageFragment$16;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->addRecommendGroupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 640
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/FacePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 641
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c012b

    new-instance v4, Lcom/miui/gallery/ui/FacePageFragment$16$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/FacePageFragment$16$1;-><init>(Lcom/miui/gallery/ui/FacePageFragment$16;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 650
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const v5, 0x7f0c012d

    .line 651
    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const v5, 0x7f0c012c

    .line 652
    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 653
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 654
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 655
    .local v2, "positiveButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$16;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FacePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 656
    return-void
.end method
