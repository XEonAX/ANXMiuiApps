.class public Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScreenRecorderHomeAdapter.java"

# interfaces
.implements Lcom/miui/screenrecorder/widget/StickyGridHeadersSimpleAdapter;
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;,
        Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;,
        Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenRecorderAdapter"


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsInEditMode:Z

.field private mRadio:F

.field private mSelectedItem:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private newHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radio"    # F
    .param p3, "width"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput p3, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mWidth:I

    .line 46
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->newHeight:I

    .line 48
    iput p2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mRadio:F

    .line 49
    return-void
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->imageCropWithRect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private imageCropWithRect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const/4 v4, 0x0

    .line 284
    :goto_0
    return-object v4

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 281
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 282
    .local v0, "height":I
    const/4 v1, 0x0

    .line 283
    .local v1, "retX":I
    iget v4, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->newHeight:I

    sub-int v2, v0, v4

    .line 284
    .local v2, "retY":I
    iget v4, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->newHeight:I

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 57
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 65
    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 61
    new-instance v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/screenrecorder/data/GridItem;

    invoke-direct {v1, v2}, Lcom/miui/screenrecorder/data/GridItem;-><init>(Lcom/miui/screenrecorder/data/GridItem;)V

    .line 62
    .local v1, "item":Lcom/miui/screenrecorder/data/GridItem;
    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/GridItem;->getHeaderId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v1

    .line 181
    :cond_1
    if-nez p2, :cond_2

    .line 182
    new-instance v0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;-><init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;)V

    .line 183
    .local v0, "viewHolder":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;
    iget-object v1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 184
    const v1, 0x7f0b000a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;->textView:Landroid/widget/TextView;

    .line 185
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    :goto_1
    iget-object v2, v0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/GridItem;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/GridItem;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v1, p2

    .line 191
    goto :goto_0

    .line 187
    .end local v0    # "viewHolder":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;

    .restart local v0    # "viewHolder":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$HeadViewHolder;
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0b0001

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 111
    iget-object v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v5, v6

    .line 167
    :goto_0
    return-object v5

    .line 115
    :cond_1
    if-nez p2, :cond_4

    .line 116
    new-instance v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;

    invoke-direct {v4, p0, v6}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;-><init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;)V

    .line 117
    .local v4, "viewHolder":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;
    iget-object v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030006

    invoke-virtual {v5, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 119
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    iget v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mRadio:F

    iget v7, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const v5, 0x7f0b000b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 123
    const v5, 0x7f0b000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 124
    const v5, 0x7f0b000e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 125
    const v5, 0x7f0b000f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 126
    const v5, 0x7f0b0010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    .line 127
    const v5, 0x7f0b0011

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    .line 128
    const v5, 0x7f0b000c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->discriptView:Landroid/view/View;

    .line 129
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    iget-object v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/data/GridItem;

    .line 134
    .local v0, "item":Lcom/miui/screenrecorder/data/GridItem;
    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/GridItem;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 136
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v7, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->discriptView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "lastPath":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v8, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 140
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    const/high16 v7, 0x7f0b0000

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 141
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->discriptView:Landroid/view/View;

    const v6, 0x7f020009

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    :cond_2
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/screenrecorder/tools/MSRImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/screenrecorder/tools/MSRImageLoader;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 144
    invoke-virtual {v5, v6, v7, p0}, Lcom/miui/screenrecorder/tools/MSRImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 147
    .end local v1    # "lastPath":Ljava/lang/String;
    :cond_3
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/GridItem;->getDuration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/GridItem;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/data/GridItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-boolean v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mIsInEditMode:Z

    if-eqz v5, :cond_6

    .line 151
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v5, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 155
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    const v6, 0x7f020012

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080027

    .line 157
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v5, p2

    .line 167
    goto/16 :goto_0

    .line 131
    .end local v0    # "item":Lcom/miui/screenrecorder/data/GridItem;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "viewHolder":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;
    goto/16 :goto_1

    .line 159
    .restart local v0    # "item":Lcom/miui/screenrecorder/data/GridItem;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_5
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    const v6, 0x7f020013

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08005a

    .line 161
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 164
    :cond_6
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->playImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v5, v4, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$ViewHolder;->selectImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public insertData(ILcom/miui/screenrecorder/data/GridItem;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/miui/screenrecorder/data/GridItem;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    .line 71
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "datalist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setData(Ljava/util/ArrayList;)V

    .line 289
    invoke-virtual {p0}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->notifyDataSetChanged()V

    .line 290
    return-void
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 233
    const-string v0, "ScreenRecorderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading image cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x7f0b0000

    const/4 v6, 0x1

    .line 221
    const-string v3, "ScreenRecorderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading image Complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 223
    .local v1, "hasBgColor":Z
    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 225
    .local v0, "disView":Landroid/view/View;
    new-instance v2, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;-><init>(Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;Landroid/view/View;Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$1;)V

    .line 226
    .local v2, "task":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;
    new-array v3, v6, [Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    .end local v0    # "disView":Landroid/view/View;
    .end local v2    # "task":Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter$GetBackgroundColorTask;
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 215
    const-string v0, "ScreenRecorderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading image failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 211
    return-void
.end method

.method public setIsEditMode(Z)V
    .locals 0
    .param p1, "isEditMode"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mIsInEditMode:Z

    .line 86
    return-void
.end method

.method public setSelectedItem(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "selectedItem":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mSelectedItem:Ljava/util/HashSet;

    .line 79
    iget-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mSelectedItem:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->mSelectedItem:Ljava/util/HashSet;

    .line 82
    :cond_0
    return-void
.end method
