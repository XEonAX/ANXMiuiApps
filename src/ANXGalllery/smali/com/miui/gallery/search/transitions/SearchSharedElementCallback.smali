.class public Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;
.super Landroid/support/v4/app/SharedElementCallback;
.source "SearchSharedElementCallback.java"


# instance fields
.field private mOriginalSharedElementStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/SharedElementCallback;-><init>()V

    .line 46
    return-void
.end method

.method private onCaptureSharedElementStates(Landroid/view/View;)Ljava/util/Map;
    .locals 4
    .param p1, "sharedElement"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v1, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 144
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 146
    const-string v2, "searchSharedElement:snapshot:image_drawable"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 157
    const-string v2, "searchSharedElement:snapshot:view_background"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    return-object v1

    .line 148
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 149
    const-string v3, "searchSharedElement:snapshot:textview_text"

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "searchSharedElement:snapshot:textview_hint"

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v3, "searchSharedElement:snapshot:textview_text_color"

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v3, "searchSharedElement:snapshot:textview_hint_color"

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 6
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 113
    const-string v3, "searchSharedElement:snapshot:view_class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 116
    check-cast v2, Landroid/widget/TextView;

    .line 117
    .local v2, "textView":Landroid/widget/TextView;
    const-string v3, "searchSharedElement:snapshot:textview_text"

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "searchSharedElement:snapshot:textview_hint"

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "searchSharedElement:snapshot:textview_text_color"

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v3, "searchSharedElement:snapshot:textview_hint_color"

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v1

    .line 127
    .local v1, "parent":Landroid/os/Parcelable;
    if-eqz v1, :cond_1

    .line 128
    const-string v3, "searchSharedElement:snapshot:parent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    :cond_1
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 133
    check-cast v2, Landroid/widget/TextView;

    .line 134
    .restart local v2    # "textView":Landroid/widget/TextView;
    const-string v3, "searchSharedElement:snapshot:textview_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string v3, "searchSharedElement:snapshot:textview_hint"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 138
    .end local v1    # "parent":Landroid/os/Parcelable;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2
    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "view":Landroid/view/View;
    instance-of v5, p2, Landroid/os/Bundle;

    if-eqz v5, :cond_8

    move-object v0, p2

    .line 168
    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    move-object v5, p2

    .line 169
    check-cast v5, Landroid/os/Bundle;

    const-string v6, "searchSharedElement:snapshot:parent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, p1, v5}, Landroid/support/v4/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "parentCreateView":Landroid/view/View;
    const-class v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "searchSharedElement:snapshot:view_class"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, "imageView":Landroid/widget/ImageView;
    instance-of v5, v2, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    move-object v5, v2

    .line 173
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v5, v2

    .line 174
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "parentCreateView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 179
    :cond_0
    :goto_0
    move-object v4, v1

    .line 204
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 205
    const-string v5, "SearchSharedElementCallback"

    const-string v6, "What? Invalid snapshot, %s"

    invoke-static {v5, v6, p2}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    new-instance v4, Landroid/view/View;

    .end local v4    # "view":Landroid/view/View;
    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 208
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    return-object v4

    .line 176
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    .restart local v2    # "parentCreateView":Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_4
    const-class v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "searchSharedElement:snapshot:view_class"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 182
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v3, "textView":Landroid/widget/TextView;
    const-string v5, "searchSharedElement:snapshot:textview_text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const-string v5, "searchSharedElement:snapshot:textview_hint"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 185
    const-string v5, "searchSharedElement:snapshot:textview_text_color"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    const-string v5, "searchSharedElement:snapshot:textview_hint_color"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 187
    move-object v4, v3

    .line 194
    .end local v3    # "textView":Landroid/widget/TextView;
    :goto_2
    instance-of v5, v2, Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    .line 195
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "parentCreateView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 188
    .restart local v2    # "parentCreateView":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_6

    .line 189
    move-object v4, v2

    goto :goto_2

    .line 191
    :cond_6
    const-string v5, "SearchSharedElementCallback"

    const-string v6, "What? Invalid params, %s"

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    new-instance v4, Landroid/view/View;

    .end local v4    # "view":Landroid/view/View;
    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_2

    .line 196
    :cond_7
    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 200
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "parentCreateView":Landroid/view/View;
    :cond_8
    instance-of v5, p2, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 201
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 85
    iget-object v3, p0, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->mOriginalSharedElementStates:Landroid/util/SparseArray;

    if-eqz v3, :cond_5

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 88
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 89
    .local v1, "sharedElement":Landroid/view/View;
    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->mOriginalSharedElementStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 92
    .local v2, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 95
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    move-object v3, v1

    .line 96
    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "searchSharedElement:snapshot:image_drawable"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_2
    :goto_2
    const-string v3, "searchSharedElement:snapshot:view_background"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 97
    :cond_3
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 98
    check-cast v3, Landroid/widget/TextView;

    const-string v4, "searchSharedElement:snapshot:textview_text"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 99
    check-cast v3, Landroid/widget/TextView;

    const-string v4, "searchSharedElement:snapshot:textview_hint"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 100
    check-cast v3, Landroid/widget/TextView;

    const-string v4, "searchSharedElement:snapshot:textview_text_color"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v3, v1

    .line 101
    check-cast v3, Landroid/widget/TextView;

    const-string v4, "searchSharedElement:snapshot:textview_hint_color"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 105
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->mOriginalSharedElementStates:Landroid/util/SparseArray;

    .line 107
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 53
    .local v2, "size":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->mOriginalSharedElementStates:Landroid/util/SparseArray;

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 56
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 57
    .local v1, "sharedElement":Landroid/view/View;
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 58
    .local v3, "snapshot":Landroid/view/View;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->onCaptureSharedElementStates(Landroid/view/View;)Ljava/util/Map;

    move-result-object v4

    .line 64
    .local v4, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_2

    .line 65
    iget-object v5, p0, Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;->mOriginalSharedElementStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :cond_2
    instance-of v5, v1, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    instance-of v5, v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    move-object v5, v1

    .line 71
    check-cast v5, Landroid/widget/ImageView;

    move-object v6, v3

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 72
    :cond_4
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    move-object v5, v1

    .line 73
    check-cast v5, Landroid/widget/TextView;

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, v1

    .line 74
    check-cast v5, Landroid/widget/TextView;

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    move-object v5, v1

    .line 75
    check-cast v5, Landroid/widget/TextView;

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v5, v1

    .line 76
    check-cast v5, Landroid/widget/TextView;

    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_2

    .line 80
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v3    # "snapshot":Landroid/view/View;
    .end local v4    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    return-void
.end method
