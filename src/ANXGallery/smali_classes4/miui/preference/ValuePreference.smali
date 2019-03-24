.class public Lmiui/preference/ValuePreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private EA:Landroid/graphics/drawable/Drawable;

.field private Ex:Ljava/lang/CharSequence;

.field private Ey:I

.field private Ez:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    sget v0, Lmiui/R$attr;->valuePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getRightArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 157
    iget-object v0, p0, Lmiui/preference/ValuePreference;->EA:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-object v0, p0, Lmiui/preference/ValuePreference;->Ex:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValueRes()I
    .locals 1

    .line 96
    iget v0, p0, Lmiui/preference/ValuePreference;->Ey:I

    return v0
.end method

.method public isShowRightArrow()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lmiui/preference/ValuePreference;->Ez:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .line 162
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 163
    sget v0, Lmiui/R$id;->value_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getValue()Ljava/lang/CharSequence;

    move-result-object v3

    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_1
    :goto_0
    sget v0, Lcom/miui/internal/R$id;->arrow_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 175
    if-eqz p1, :cond_4

    .line 176
    iget-boolean v0, p0, Lmiui/preference/ValuePreference;->Ez:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-boolean v0, p0, Lmiui/preference/ValuePreference;->Ez:Z

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lmiui/preference/ValuePreference;->EA:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lmiui/preference/ValuePreference;->EA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_4
    :goto_2
    return-void
.end method

.method public setRightArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 141
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/preference/ValuePreference;->EA:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiui/preference/ValuePreference;->EA:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 143
    :cond_1
    iput-object p1, p0, Lmiui/preference/ValuePreference;->EA:Landroid/graphics/drawable/Drawable;

    .line 144
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 146
    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->notifyChanged()V

    .line 148
    :cond_3
    return-void
.end method

.method public setRightArrowRes(I)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/preference/ValuePreference;->setRightArrowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lmiui/preference/ValuePreference;->Ez:Z

    .line 124
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 87
    iput p1, p0, Lmiui/preference/ValuePreference;->Ey:I

    .line 88
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lmiui/preference/ValuePreference;->Ex:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/ValuePreference;->Ey:I

    .line 75
    iput-object p1, p0, Lmiui/preference/ValuePreference;->Ex:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->notifyChanged()V

    .line 78
    :cond_0
    return-void
.end method
