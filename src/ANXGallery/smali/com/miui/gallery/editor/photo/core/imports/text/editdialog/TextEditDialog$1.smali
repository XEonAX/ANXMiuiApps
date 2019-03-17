.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;
.super Ljava/lang/Object;
.source "TextEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->initView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
