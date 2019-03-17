.class Lcom/miui/gallery/collage/utils/TextEditDialog$1;
.super Ljava/lang/Object;
.source "TextEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/utils/TextEditDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/utils/TextEditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$1;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$1;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-static {v0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->access$100(Lcom/miui/gallery/collage/utils/TextEditDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
