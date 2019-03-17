.class public Lcom/miui/gallery/share/DescriptPreference;
.super Landroid/preference/Preference;
.source "DescriptPreference.java"


# instance fields
.field private mDescriptDetail:Ljava/lang/CharSequence;

.field private mDescriptDetailVisibility:I

.field private mDescriptTitle:Ljava/lang/CharSequence;

.field private mDescriptTitleVisibility:I

.field private mRootRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/share/DescriptPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v1, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptTitleVisibility:I

    .line 18
    const/16 v0, 0x8

    iput v0, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptDetailVisibility:I

    .line 26
    const v0, 0x7f040141

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/DescriptPreference;->setLayoutResource(I)V

    .line 27
    invoke-virtual {p0, v1}, Lcom/miui/gallery/share/DescriptPreference;->setPersistent(Z)V

    .line 28
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 61
    iget-object v3, p0, Lcom/miui/gallery/share/DescriptPreference;->mRootRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/share/DescriptPreference;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 66
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 70
    const v3, 0x7f12028e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, "titleView":Landroid/widget/TextView;
    iget v3, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptTitleVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v3, 0x7f12028f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "detailView":Landroid/widget/TextView;
    iget v3, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptDetailVisibility:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptDetail:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/share/DescriptPreference;->mRootRef:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/share/DescriptPreference;->refresh()V

    .line 34
    return-void
.end method

.method public setDescriptDetail(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptDetail:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method

.method public setDescriptDetailVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptDetailVisibility:I

    .line 58
    return-void
.end method

.method public setDescriptTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/miui/gallery/share/DescriptPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/DescriptPreference;->setDescriptTitle(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public setDescriptTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/share/DescriptPreference;->mDescriptTitle:Ljava/lang/CharSequence;

    .line 42
    return-void
.end method
