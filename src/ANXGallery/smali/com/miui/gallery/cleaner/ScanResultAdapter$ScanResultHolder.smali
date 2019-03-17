.class Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ScanResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScanResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanResultHolder"
.end annotation


# instance fields
.field private mAction:Landroid/widget/TextView;

.field private mContentLayout:Landroid/view/View;

.field private mContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mDescription:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

.field private mScanResult:Lcom/miui/gallery/cleaner/ScanResult;

.field private mSize:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cleaner/ScanResultAdapter;Landroid/view/View;)V
    .locals 4
    .param p1, "this$0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .line 155
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 156
    const v0, 0x7f12002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitle:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    const v0, 0x7f120097

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mSize:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f1200f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mDescription:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f120107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mAction:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mAction:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f1200b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mDivider:Landroid/view/View;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 165
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const/4 v2, 0x0

    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const v0, 0x7f120102

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    aput-object v3, v1, v2

    .line 166
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const/4 v2, 0x1

    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const v0, 0x7f120103

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    aput-object v3, v1, v2

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const/4 v2, 0x2

    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const v0, 0x7f120104

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    aput-object v3, v1, v2

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const/4 v2, 0x3

    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const v0, 0x7f120105

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    aput-object v3, v1, v2

    .line 169
    const v0, 0x7f120106

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayout:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 171
    return-void
.end method


# virtual methods
.method public bindData(Lcom/miui/gallery/cleaner/ScanResult;Z)V
    .locals 10
    .param p1, "result"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p2, "isLast"    # Z

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mScanResult:Lcom/miui/gallery/cleaner/ScanResult;

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$000(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/cleaner/ScanResult;->getMergedTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$000(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/cleaner/ScanResult;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gallery/cleaner/ScanResult;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mDivider:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v0}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$000(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/cleaner/ScanResult;->getDescription()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mDescription:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$100(Lcom/miui/gallery/cleaner/ScanResultAdapter;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p1}, Lcom/miui/gallery/cleaner/ScanResult;->getPaths()[Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "imagePaths":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 199
    array-length v0, v9

    if-le v0, v7, :cond_2

    aget-object v8, v9, v7

    .local v8, "imagePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 202
    invoke-virtual {v1, v8}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .line 203
    invoke-static {v3}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$300(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v4}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$400(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 201
    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 197
    .end local v8    # "imagePath":Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 179
    .end local v7    # "i":I
    .end local v9    # "imagePaths":[Ljava/lang/String;
    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gallery/cleaner/ScanResult;->getDescription()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$200(Lcom/miui/gallery/cleaner/ScanResultAdapter;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mTitleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mContentLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 205
    .restart local v7    # "i":I
    .restart local v9    # "imagePaths":[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mImages:[Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 208
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->mScanResult:Lcom/miui/gallery/cleaner/ScanResult;

    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->this$0:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->access$000(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cleaner/ScanResult;->onClick(Landroid/content/Context;)V

    .line 213
    return-void
.end method
