.class public Lmiui/preference/SeekBarDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private Ew:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget p1, Lcom/miui/internal/R$layout;->seekbar_dialog:I

    invoke-virtual {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 27
    invoke-virtual {p0}, Lmiui/preference/SeekBarDialogPreference;->createActionButtons()V

    .line 30
    invoke-virtual {p0}, Lmiui/preference/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/preference/SeekBarDialogPreference;->Ew:Landroid/graphics/drawable/Drawable;

    .line 31
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Lmiui/widget/SeekBar;
    .locals 1

    .line 61
    sget v0, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lmiui/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method protected createActionButtons()V
    .locals 1

    .line 38
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lmiui/preference/SeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 39
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lmiui/preference/SeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 40
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 46
    sget v0, Lcom/miui/internal/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lmiui/preference/SeekBarDialogPreference;->Ew:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lmiui/preference/SeekBarDialogPreference;->Ew:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 50
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    return-void
.end method
