.class public Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImmersionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;,
        Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;,
        Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnItemCheckChangeListener:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/menu/ImmersionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->buildVisibleItems(Lcom/miui/gallery/widget/menu/ImmersionMenu;Ljava/util/ArrayList;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mOnItemCheckChangeListener:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;

    return-object v0
.end method

.method private buildVisibleItems(Lcom/miui/gallery/widget/menu/ImmersionMenu;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/widget/menu/ImmersionMenu;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/menu/ImmersionMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/widget/menu/ImmersionMenuItem;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 40
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->size()I

    move-result v0

    .line 42
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 43
    invoke-virtual {p1, v1}, Lcom/miui/gallery/widget/menu/ImmersionMenu;->getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    .line 44
    .local v2, "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f1200e8

    const v9, 0x7f12002b

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->getItemViewType(I)I

    move-result v4

    .line 93
    .local v4, "type":I
    const/4 v1, 0x0

    .line 94
    .local v1, "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
    if-nez v4, :cond_4

    .line 95
    if-nez p2, :cond_0

    .line 96
    iget-object v5, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04009b

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;

    .end local v1    # "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
    invoke-direct {v1, p0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;-><init>(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)V

    .line 98
    .restart local v1    # "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
    const v5, 0x7f1200d8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->iconView:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->textView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->summaryText:Landroid/widget/TextView;

    .line 101
    const v5, 0x7f120143

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->informationText:Landroid/widget/TextView;

    .line 102
    const v5, 0x7f12019b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->redDotView:Landroid/view/View;

    .line 103
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 122
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_3

    move-object v1, v3

    .line 123
    check-cast v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;

    .line 124
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    .line 125
    .local v2, "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 127
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_1
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->iconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 134
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_1
    :goto_2
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->informationText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 141
    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getInformation()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 142
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->informationText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->informationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->getInformation()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    :goto_3
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->redDotView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 150
    iget-object v7, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->redDotView:Landroid/view/View;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isRedDotDisplayed()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .end local v2    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    :cond_3
    return-object p2

    .line 105
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 106
    if-nez p2, :cond_5

    .line 107
    iget-object v5, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04009a

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;

    .end local v1    # "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
    invoke-direct {v1, p0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;-><init>(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;)V

    .restart local v1    # "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;
    move-object v0, v1

    .line 109
    check-cast v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;

    .line 110
    .local v0, "checkHolder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->textView:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->summaryText:Landroid/widget/TextView;

    .line 112
    const v5, 0x7f1200c0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->checkBox:Landroid/widget/CheckBox;

    .line 113
    iget-object v5, v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    .end local v0    # "checkHolder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;

    .line 117
    .restart local v0    # "checkHolder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->getItem(I)Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    move-result-object v2

    .line 118
    .restart local v2    # "item":Lcom/miui/gallery/widget/menu/ImmersionMenuItem;
    iput-object v2, v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->data:Lcom/miui/gallery/widget/menu/ImmersionMenuItem;

    .line 119
    iget-object v5, v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/menu/ImmersionMenuItem;->isChecked()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "checkHolder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_6
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 137
    :cond_7
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 145
    :cond_8
    iget-object v5, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$TextHolder;->informationText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 150
    :cond_9
    const/4 v5, 0x4

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public setOnItemCheckChangeListener(Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mOnItemCheckChangeListener:Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$OnItemCheckChangeListener;

    .line 53
    return-void
.end method

.method public toggleCheckableItem(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 59
    check-cast v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;

    .line 60
    .local v0, "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
    iget-object v2, v0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->performClick()Z

    .line 63
    .end local v0    # "holder":Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter$CheckableHolder;
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public update(Lcom/miui/gallery/widget/menu/ImmersionMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/gallery/widget/menu/ImmersionMenu;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->buildVisibleItems(Lcom/miui/gallery/widget/menu/ImmersionMenu;Ljava/util/ArrayList;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/gallery/widget/menu/ImmersionMenuAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method
