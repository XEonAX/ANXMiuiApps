.class Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;
.super Ljava/lang/Object;
.source "DeleteMediaDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogInfo"
.end annotation


# instance fields
.field checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

.field message:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V

    return-void
.end method
