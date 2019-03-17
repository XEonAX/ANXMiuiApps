.class public Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;
.super Lcom/miui/gallery/share/GridPreferenceBase;
.source "BabyAlbumSharerPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/share/GridPreferenceBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->setSelectable(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f04002e

    return v0
.end method

.method protected updateGrid(Landroid/view/View;)V
    .locals 23
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 108
    :goto_0
    return-void

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 39
    .local v3, "adapterCount":I
    const/4 v15, 0x0

    .line 40
    .local v15, "parentSharerCount":I
    const v20, 0x7f1200db

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 41
    .local v6, "fatherGrid":Landroid/view/ViewGroup;
    const v20, 0x7f1200dc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 42
    .local v10, "motherGrid":Landroid/view/ViewGroup;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 44
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_7

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    .line 46
    .local v17, "type":I
    if-eqz v17, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 48
    :cond_1
    if-nez v17, :cond_4

    move-object/from16 v16, v6

    .line 50
    .local v16, "parentView":Landroid/view/ViewGroup;
    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 51
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 52
    .local v4, "convertView":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v8, v4, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 53
    .local v19, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->getTagInfo()I

    move-result v20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 54
    if-nez v4, :cond_6

    .line 55
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 44
    .end local v4    # "convertView":Landroid/view/View;
    .end local v16    # "parentView":Landroid/view/ViewGroup;
    .end local v19    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v16, v10

    .line 48
    goto :goto_2

    .line 51
    .restart local v16    # "parentView":Landroid/view/ViewGroup;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 58
    .restart local v4    # "convertView":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, v19

    if-eq v4, v0, :cond_2

    .line 59
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    const-string v21, "convert view must be reused!"

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 65
    .end local v4    # "convertView":Landroid/view/View;
    .end local v16    # "parentView":Landroid/view/ViewGroup;
    .end local v17    # "type":I
    .end local v19    # "view":Landroid/view/View;
    :cond_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b00c8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 69
    const v20, 0x102000a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/GridLayout;

    .line 70
    .local v13, "otherFamilyMemberGrids":Landroid/widget/GridLayout;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mColumnCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 71
    invoke-virtual {v13}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mColumnWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mColumnCount:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    invoke-virtual {v13}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v20

    if-nez v20, :cond_8

    .line 74
    invoke-virtual {v13}, Landroid/widget/GridLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 78
    :cond_8
    invoke-virtual {v13}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v12

    .line 80
    .local v12, "oldChildCount":I
    const/4 v9, 0x0

    .local v9, "itemPos":I
    const/4 v7, 0x0

    .local v7, "gridPos":I
    :goto_4
    if-ge v9, v3, :cond_d

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    .line 82
    .restart local v17    # "type":I
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 83
    invoke-virtual {v13}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v0, v7, :cond_b

    .line 84
    invoke-virtual {v13, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 85
    .restart local v4    # "convertView":Landroid/view/View;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9, v4, v13}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 86
    .local v18, "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->getTagInfo()I

    move-result v20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 87
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mColumnWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    if-nez v4, :cond_c

    .line 89
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/share/baby/BabyAlbumSharerPreference;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 80
    .end local v4    # "convertView":Landroid/view/View;
    .end local v18    # "v":Landroid/view/View;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 84
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 91
    .restart local v4    # "convertView":Landroid/view/View;
    .restart local v18    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, v18

    if-eq v4, v0, :cond_9

    .line 92
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    const-string v21, "convert view must be reused!"

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 99
    .end local v4    # "convertView":Landroid/view/View;
    .end local v17    # "type":I
    .end local v18    # "v":Landroid/view/View;
    :cond_d
    sub-int v11, v3, v15

    .line 100
    .local v11, "newChildCount":I
    if-ge v11, v12, :cond_e

    .line 101
    sub-int v20, v12, v11

    move/from16 v0, v20

    invoke-virtual {v13, v11, v0}, Landroid/widget/GridLayout;->removeViews(II)V

    .line 103
    :cond_e
    const v20, 0x7f1200b8

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, "divider":Landroid/view/View;
    if-lez v15, :cond_f

    if-gtz v11, :cond_10

    :cond_f
    const/16 v20, 0x8

    :goto_6
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 104
    :cond_10
    const/16 v20, 0x0

    goto :goto_6
.end method
