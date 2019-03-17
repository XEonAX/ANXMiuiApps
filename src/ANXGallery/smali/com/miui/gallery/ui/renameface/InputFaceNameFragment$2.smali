.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$100(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$200(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    const v4, 0x7f0c026b

    .line 180
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v0, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Z

    move-result v2

    .line 184
    .local v2, "isRepeatName":Z
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->showSetRelationDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$700(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
