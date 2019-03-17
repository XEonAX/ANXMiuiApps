.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;
.super Landroid/widget/BaseAdapter;
.source "CloudSpaceStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->mList:Ljava/util/List;

    .line 249
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->getItem(I)Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 265
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 271
    if-nez p2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->this$0:Lcom/miui/gallery/ui/CloudSpaceStatusFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040050

    invoke-virtual {v2, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 273
    new-instance v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;

    invoke-direct {v0, p0, v6}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V

    .line 274
    .local v0, "holder":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;
    const v2, 0x7f12002d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 275
    const v2, 0x7f120119

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mTitleDivider:Landroid/view/View;

    .line 276
    const v2, 0x7f12011a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendTitle:Landroid/widget/TextView;

    .line 277
    const v2, 0x7f1200e8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 278
    const v2, 0x7f12011c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummayDivider:Landroid/view/View;

    .line 279
    const v2, 0x7f12011d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendSummary:Landroid/widget/TextView;

    .line 280
    const v2, 0x7f12011e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mValue:Landroid/widget/TextView;

    .line 281
    const v2, 0x7f12011f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mRightArrow:Landroid/view/View;

    .line 282
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    .end local v0    # "holder":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;

    .line 285
    .restart local v0    # "holder":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;->getItem(I)Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;

    move-result-object v1

    .line 286
    .local v1, "item":Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
    if-eqz v1, :cond_1

    .line 287
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mAppendTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendTitle:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mAppendTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mTitleDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :goto_0
    iget-object v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mSummary:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mAppendSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 300
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendSummary:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mAppendSummary:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummayDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :goto_1
    iget-object v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 313
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mValue:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :goto_2
    iget-object v5, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mRightArrow:Landroid/view/View;

    iget-boolean v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mIsShowArrow:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v2, v1, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_7

    .line 321
    new-instance v2, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$1;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    :cond_1
    :goto_4
    return-object p2

    .line 293
    :cond_2
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mTitleDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummayDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 308
    :cond_4
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mSummayDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mAppendSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 316
    :cond_5
    iget-object v2, v0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v2, v4

    .line 318
    goto :goto_3

    .line 328
    :cond_7
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4
.end method
