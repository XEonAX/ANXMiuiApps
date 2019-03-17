.class Lcom/miui/gallery/collage/utils/TextEditDialog$2;
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
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$2;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog$2;->this$0:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->dismissSafely()V

    .line 63
    return-void
.end method
