.class Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;
.super Landroid/app/Dialog;
.source "ImageSelectionTipFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ImageSelectionTipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSelectionTipDialog"
.end annotation


# instance fields
.field private mPositiveBtn:Landroid/widget/Button;

.field private mPositiveListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/ImageSelectionTipFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/ImageSelectionTipFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->this$0:Lcom/miui/gallery/ui/ImageSelectionTipFragment;

    .line 74
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x7f12017b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v2, 0x7f040099

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->setContentView(I)V

    .line 82
    const v2, 0x7f12017b

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->mPositiveBtn:Landroid/widget/Button;

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 86
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 87
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 88
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    return-void
.end method

.method public setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/gallery/ui/ImageSelectionTipFragment$ImageSelectionTipDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 96
    return-object p0
.end method
