.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;
.super Ljava/lang/Object;
.source "DialogStyleMenu.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->initializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 76
    const-string v0, "DialogStyleMenu"

    const-string v1, "onLayoutChange"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$000(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;->access$000(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 79
    return-void
.end method
