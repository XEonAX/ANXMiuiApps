.class public Lcom/xiaomi/scanner/ui/FlashButton;
.super Landroid/widget/FrameLayout;
.source "FlashButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

.field private toggleButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/FlashButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/FlashButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v0, 0x7f0d00fb

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    .line 42
    const v0, 0x7f0d00fa

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/FlashButton;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 60
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

    invoke-interface {v0, p2}, Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;->onTurnFlash(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public resetFlashView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->toggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/FlashButton;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 54
    :cond_1
    return-void
.end method

.method public setOnTurnFlashListener(Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;)V
    .locals 0
    .param p1, "onTurnFlashListener"    # Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/FlashButton;->onTurnFlashListener:Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;

    .line 28
    return-void
.end method
