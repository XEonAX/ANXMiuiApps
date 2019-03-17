.class public Lcom/miui/gallery/video/editor/widget/EffectActionBar;
.super Landroid/widget/LinearLayout;
.source "EffectActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;
    }
.end annotation


# instance fields
.field private mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

.field private mCancelButton:Landroid/widget/ImageView;

.field private mOkButton:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;->onApplyAction()V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;->onCancelAction()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x7f1202c8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f1202ca

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mOkButton:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f1202c8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mCancelButton:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f1202c9

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mTitle:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mOkButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    .line 77
    return-void
.end method

.method public setActionListener(Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mActionListener:Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method
