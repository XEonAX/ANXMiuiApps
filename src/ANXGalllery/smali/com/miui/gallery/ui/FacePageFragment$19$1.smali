.class Lcom/miui/gallery/ui/FacePageFragment$19$1;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment$19;->onConfirm(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment$19;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/FacePageFragment$19;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iput-object p2, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->val$newName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FacePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$600(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$2300(Lcom/miui/gallery/ui/FacePageFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1110
    .local v0, "faceNameEdit":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const v2, 0x7f0c01e8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/FacePageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    .end local v0    # "faceNameEdit":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->val$newName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$302(Lcom/miui/gallery/ui/FacePageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1113
    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$19$1;->this$1:Lcom/miui/gallery/ui/FacePageFragment$19;

    iget-object v1, v1, Lcom/miui/gallery/ui/FacePageFragment$19;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$2400(Lcom/miui/gallery/ui/FacePageFragment;)V

    goto :goto_0
.end method
