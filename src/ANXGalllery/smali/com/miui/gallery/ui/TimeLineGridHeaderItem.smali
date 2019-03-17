.class public abstract Lcom/miui/gallery/ui/TimeLineGridHeaderItem;
.super Landroid/widget/LinearLayout;
.source "TimeLineGridHeaderItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;


# instance fields
.field protected mDateTime:Landroid/widget/TextView;

.field protected mLocation:Landroid/widget/TextView;

.field private mSelectGroupOrNot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->setLayoutDirection(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f120091

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f1202c0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f120101

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lmiui/R$string;->select_all:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 52
    if-eqz p1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    const v1, 0x7f020266

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lmiui/R$string;->deselect_all:I

    .line 65
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .line 64
    :cond_0
    sget v1, Lmiui/R$string;->select_all:I

    goto :goto_0
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
