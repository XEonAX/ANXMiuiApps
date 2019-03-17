.class Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;
.super Ljava/lang/Object;
.source "ControlPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/ControlPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;->onReplace()V

    goto :goto_0

    .line 77
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;->onRotate()V

    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;->onMirror()V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x7f12007f -> :sswitch_1
        0x7f120120 -> :sswitch_0
        0x7f120121 -> :sswitch_2
    .end sparse-switch
.end method
