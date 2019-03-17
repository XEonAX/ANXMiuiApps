.class Lcom/miui/gallery/collage/widget/ControlPopupWindow$1;
.super Ljava/lang/Object;
.source "ControlPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/widget/ControlPopupWindow;->init(Landroid/content/Context;Z)V
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
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$1;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$1;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$1;->this$0:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;->onDismiss()V

    .line 44
    :cond_0
    return-void
.end method
