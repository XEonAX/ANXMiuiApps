.class public Lcom/miui/gallery/ui/PeoplePageGridHeaderItem;
.super Landroid/widget/RelativeLayout;
.source "PeoplePageGridHeaderItem.java"


# instance fields
.field protected mGroupName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridHeaderItem;->mGroupName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 20
    const v0, 0x7f120215

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PeoplePageGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridHeaderItem;->mGroupName:Landroid/widget/TextView;

    .line 21
    return-void
.end method
