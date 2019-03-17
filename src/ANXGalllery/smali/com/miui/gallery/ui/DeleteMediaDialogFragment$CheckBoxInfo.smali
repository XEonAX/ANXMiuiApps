.class Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;
.super Ljava/lang/Object;
.source "DeleteMediaDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBoxInfo"
.end annotation


# instance fields
.field final defaultValue:Z

.field final message:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

.field final type:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
    .param p2, "type"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p2, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->type:I

    .line 178
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->genMessage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->message:Ljava/lang/String;

    .line 179
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->genDefaultValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->defaultValue:Z

    .line 180
    return-void
.end method

.method private genDefaultValue(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 192
    packed-switch p1, :pswitch_data_0

    .line 196
    :pswitch_0
    return v0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private genMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 187
    const-string v0, ""

    :goto_0
    return-object v0

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c014f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
