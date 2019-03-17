.class public Lcom/miui/gallery/widget/VideoSeekBar;
.super Landroid/widget/SeekBar;
.source "VideoSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    instance-of v9, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_4

    .line 28
    const/4 v3, 0x0

    .local v3, "hasNinePatch":Z
    move-object v6, p1

    .line 29
    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 30
    .local v6, "layers":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 31
    .local v2, "count":I
    new-array v8, v2, [Landroid/graphics/drawable/Drawable;

    .line 32
    .local v8, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 33
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 34
    .local v5, "id":I
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    .local v0, "child":Landroid/graphics/drawable/Drawable;
    const v9, 0x102000d

    if-eq v5, v9, :cond_0

    const v9, 0x102000f

    if-ne v5, v9, :cond_1

    :cond_0
    instance-of v9, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v9, :cond_1

    .line 36
    new-instance v1, Lcom/miui/gallery/widget/LevelNinePathDrawable;

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/miui/gallery/widget/LevelNinePathDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 37
    .local v1, "child":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    move-object v0, v1

    .line 39
    .end local v1    # "child":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "child":Landroid/graphics/drawable/Drawable;
    :cond_1
    aput-object v0, v8, v4

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    .end local v5    # "id":I
    :cond_2
    if-eqz v3, :cond_4

    .line 43
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 44
    .local v7, "newLayers":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    .line 45
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v9

    invoke-virtual {v7, v4, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 47
    :cond_3
    move-object p1, v7

    .line 51
    .end local v2    # "count":I
    .end local v3    # "hasNinePatch":Z
    .end local v4    # "i":I
    .end local v6    # "layers":Landroid/graphics/drawable/LayerDrawable;
    .end local v7    # "newLayers":Landroid/graphics/drawable/LayerDrawable;
    .end local v8    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method
