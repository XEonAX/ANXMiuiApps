.class public Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "MarkPeopleDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$PeopleItemViewHolder;,
        Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCancelButtonListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelView:Landroid/view/View;

.field private mDataView:Landroid/support/v7/widget/RecyclerView;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mLoadMoreButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLoadMoreButtonText:Ljava/lang/String;

.field private mLoadMoreView:Landroid/widget/TextView;

.field private mPeopleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;

.field private mShowCancelButton:Z

.field private mSingleView:Landroid/view/View;

.field private mSingleViewStub:Landroid/view/ViewStub;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mShowCancelButton:Z

    .line 256
    new-instance v0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$3;-><init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 273
    invoke-static {}, Lcom/miui/gallery/people/PeopleDisplayHelper;->getDefaultPeopleDisplayOptionsBuilder()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->onClickPeople(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;Landroid/widget/ImageView;Lcom/miui/gallery/people/model/People;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Lcom/miui/gallery/people/model/People;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->bindPeopleCover(Landroid/widget/ImageView;Lcom/miui/gallery/people/model/People;)V

    return-void
.end method

.method private bindPeopleCover(Landroid/widget/ImageView;Lcom/miui/gallery/people/model/People;)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "people"    # Lcom/miui/gallery/people/model/People;

    .prologue
    .line 294
    invoke-virtual {p2}, Lcom/miui/gallery/people/model/People;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    .line 295
    invoke-virtual {p2}, Lcom/miui/gallery/people/model/People;->getCoverImageId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 296
    invoke-virtual {p2}, Lcom/miui/gallery/people/model/People;->getCoverFaceRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p2}, Lcom/miui/gallery/people/model/People;->getCoverType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v5

    move-object v0, p1

    .line 294
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/people/PeopleDisplayHelper;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 297
    return-void
.end method

.method private configCancelButton()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mShowCancelButton:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private configDataView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    const v1, 0x7f1200d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/people/model/People;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->bindPeopleCover(Landroid/widget/ImageView;Lcom/miui/gallery/people/model/People;)V

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$2;-><init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private configLoadMoreButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 202
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v1, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$1;-><init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;)V

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 202
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .end local v0    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private onClickPeople(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 300
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/people/model/People;

    invoke-interface {v1, p1, v0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;->onPeopleSelected(ILcom/miui/gallery/people/model/People;)V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public configTitle()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelButtonListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelButtonListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 133
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelButtonListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelButtonListener:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 138
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDialog:Landroid/app/Dialog;

    const/16 v2, -0xa

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x7f1201a1 -> :sswitch_0
        0x7f1201a5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    const-string v1, "markItemDecorInsetsDirty"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/MiscUtil;->invokeSafely(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v0, "MarkPeopleDialogFragment_Title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitle:Ljava/lang/String;

    .line 71
    const-string v0, "MarkPeopleDialogFragment_LoadMoreButtonText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    .line 72
    const-string v0, "MarkPeopleDialogFragment_ShowCancelButton"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mShowCancelButton:Z

    .line 73
    const-string v0, "MarkPeopleDialogFragment_PeopleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "MarkPeopleDialogFragment_PeopleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    .line 78
    :cond_0
    new-instance v10, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v10, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400aa

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 80
    .local v9, "contentView":Landroid/view/View;
    invoke-virtual {v10, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 83
    const v0, 0x7f1201a2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitleView:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1201a1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelView:Landroid/view/View;

    .line 85
    const v0, 0x7f1201a5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreView:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f1201a3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    .line 87
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0254

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0253

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 92
    .local v6, "itemVerticalPadding":I
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;

    iget-object v8, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    move v3, v1

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/widget/recyclerview/GridLayoutInnerPaddingItemDecoration;-><init>(IIIIIIZLandroid/support/v7/widget/GridLayoutManager;)V

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDataView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 96
    const v0, 0x7f1201a4

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mSingleViewStub:Landroid/view/ViewStub;

    .line 98
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configTitle()V

    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configCancelButton()V

    .line 100
    invoke-direct {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configLoadMoreButton()V

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configDataView()V

    .line 103
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 104
    .local v11, "window":Landroid/view/Window;
    if-eqz v11, :cond_1

    .line 105
    const/16 v0, 0x50

    invoke-virtual {v11, v0}, Landroid/view/Window;->setGravity(I)V

    .line 106
    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-virtual {v11, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 109
    :cond_1
    iput-object v10, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "MarkPeopleDialogFragment_Title"

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string v0, "MarkPeopleDialogFragment_LoadMoreButtonText"

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    const-string v0, "MarkPeopleDialogFragment_ShowCancelButton"

    iget-boolean v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mShowCancelButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "MarkPeopleDialogFragment_PeopleList"

    iget-object v1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 126
    :cond_2
    return-void
.end method

.method public setCancelButton(ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "showCancelButton"    # Z
    .param p2, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mShowCancelButton:Z

    .line 160
    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mCancelButtonListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configCancelButton()V

    .line 162
    return-void
.end method

.method public setLoadMoreButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonText:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mLoadMoreButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 167
    invoke-direct {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configLoadMoreButton()V

    .line 168
    return-void
.end method

.method public setPeopleList(Ljava/util/ArrayList;Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;)V
    .locals 1
    .param p2, "peopleSelectListener"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/people/model/People;",
            ">;",
            "Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/people/model/People;>;"
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleList:Ljava/util/ArrayList;

    .line 172
    iput-object p2, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mPeopleSelectListener:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$OnPeopleSelectListener;

    .line 173
    invoke-direct {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configDataView()V

    .line 174
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 177
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->mTitle:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configTitle()V

    .line 156
    return-void
.end method
