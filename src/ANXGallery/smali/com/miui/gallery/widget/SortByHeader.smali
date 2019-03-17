.class public Lcom/miui/gallery/widget/SortByHeader;
.super Landroid/widget/LinearLayout;
.source "SortByHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/SortByHeader$SortBy;
    }
.end annotation


# instance fields
.field private mDateTimeContainer:Landroid/view/View;

.field private mNameContainer:Landroid/view/View;

.field private mOnSortByClickListener:Landroid/view/View$OnClickListener;

.field private mSizeContainer:Landroid/view/View;

.field private mSortByDateArrow:Landroid/widget/ImageView;

.field private mSortByDateTime:Landroid/widget/TextView;

.field private mSortByFileName:Landroid/widget/TextView;

.field private mSortByFileSize:Landroid/widget/TextView;

.field private mSortByNameArrow:Landroid/widget/ImageView;

.field private mSortBySizeArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f120090

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mDateTimeContainer:Landroid/view/View;

    .line 55
    const v0, 0x7f120093

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mNameContainer:Landroid/view/View;

    .line 56
    const v0, 0x7f120096

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSizeContainer:Landroid/view/View;

    .line 58
    const v0, 0x7f120091

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateTime:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f120092

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f120094

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileName:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f120095

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f120097

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileSize:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f120098

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/SortByHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    .line 64
    return-void
.end method

.method public setOnSortByClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/widget/SortByHeader;->mOnSortByClickListener:Landroid/view/View$OnClickListener;

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mDateTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/widget/SortByHeader;->mOnSortByClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mNameContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/widget/SortByHeader;->mOnSortByClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSizeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/widget/SortByHeader;->mOnSortByClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public updateCurrentSortView(Lcom/miui/gallery/widget/SortByHeader$SortBy;I)V
    .locals 5
    .param p1, "currentSortBy"    # Lcom/miui/gallery/widget/SortByHeader$SortBy;
    .param p2, "sortbyIndicatorResource"    # I

    .prologue
    const v4, 0x7f02027c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    sget-object v0, Lcom/miui/gallery/widget/SortByHeader$1;->$SwitchMap$com$miui$gallery$widget$SortByHeader$SortBy:[I

    invoke-virtual {p1}, Lcom/miui/gallery/widget/SortByHeader$SortBy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByFileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortBySizeArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByDateArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/widget/SortByHeader;->mSortByNameArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
