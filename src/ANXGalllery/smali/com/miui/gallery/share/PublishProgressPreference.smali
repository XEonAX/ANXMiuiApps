.class public Lcom/miui/gallery/share/PublishProgressPreference;
.super Landroid/preference/Preference;
.source "PublishProgressPreference.java"


# instance fields
.field private mOpenPublic:Z

.field private mProgressOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 13
    iput-boolean v0, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mProgressOn:Z

    .line 14
    iput-boolean v0, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mOpenPublic:Z

    .line 18
    const v0, 0x7f040140

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/PublishProgressPreference;->setLayoutResource(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 24
    const v2, 0x7f12028c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "progressBar":Landroid/view/View;
    iget-boolean v2, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mProgressOn:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-boolean v2, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mProgressOn:Z

    if-eqz v2, :cond_0

    .line 28
    const v2, 0x7f12028d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    .local v1, "text":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mOpenPublic:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0c03e7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 25
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 29
    .restart local v1    # "text":Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0c0509

    goto :goto_1
.end method

.method public setProgress(ZZ)V
    .locals 0
    .param p1, "progressOn"    # Z
    .param p2, "openPublic"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mProgressOn:Z

    .line 35
    iput-boolean p2, p0, Lcom/miui/gallery/share/PublishProgressPreference;->mOpenPublic:Z

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/share/PublishProgressPreference;->notifyChanged()V

    .line 37
    return-void
.end method
