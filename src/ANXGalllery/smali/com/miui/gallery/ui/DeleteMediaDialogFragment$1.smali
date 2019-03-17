.class Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteMediaDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;->this$0:Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->access$000(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V

    .line 81
    return-void
.end method
