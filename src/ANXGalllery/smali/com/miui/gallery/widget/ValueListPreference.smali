.class public Lcom/miui/gallery/widget/ValueListPreference;
.super Landroid/preference/ListPreference;
.source "ValueListPreference.java"


# instance fields
.field private mShowWhichAsValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/ValueListPreference;->mShowWhichAsValue:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/ValueListPreference;->mShowWhichAsValue:I

    .line 23
    return-void
.end method

.method private getRealValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/gallery/widget/ValueListPreference;->mShowWhichAsValue:I

    packed-switch v0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ValueListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ValueListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 49
    const v2, 0x7f12024f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, "valueView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/widget/ValueListPreference;->getRealValue()Ljava/lang/CharSequence;

    move-result-object v0

    .line 52
    .local v0, "value":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    .end local v0    # "value":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0    # "value":Ljava/lang/CharSequence;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ValueListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010d

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setWhichAsValue(I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/miui/gallery/widget/ValueListPreference;->mShowWhichAsValue:I

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ValueListPreference;->notifyChanged()V

    .line 43
    return-void
.end method
