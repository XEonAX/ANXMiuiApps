.class Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialTypeManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;
    }
.end annotation


# instance fields
.field private mCallbacks:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterHideAnim:Landroid/view/animation/Animation;

.field private mEnterShowAnim:Landroid/view/animation/Animation;

.field private mEnterView:Landroid/widget/ImageView;

.field private mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

.field private mOperationMask:I

.field private mRecognitionCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

.field private mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

.field private mSupportEnter:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    const/4 v2, -0x1

    .line 4039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4127
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    .line 4040
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 4041
    invoke-static {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mSupportEnter:Z

    .line 4042
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    .line 4043
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 4044
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mOperationMask:I

    .line 4045
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f12023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    .line 4046
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4047
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateEnterViewPosition()V

    .line 4048
    return-void

    .line 4041
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4044
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v1, "support_operation_mask"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method static synthetic access$6700(Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    .prologue
    .line 4028
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->getCurrentItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4028
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onRecognized(Lcom/miui/gallery/model/BaseDataItem;)V

    return-void
.end method

.method private getCallback(Lcom/miui/gallery/model/BaseDataItem;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;
    .locals 10
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v4, 0x0

    .line 4201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSpecialTypeFlags()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 4210
    :cond_0
    :goto_0
    return-object v4

    .line 4204
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 4205
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 4206
    .local v2, "type":J
    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/model/BaseDataItem;->isSpecialType(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4207
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;

    goto :goto_0

    .line 4204
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getCurrentItem()Lcom/miui/gallery/model/BaseDataItem;
    .locals 3

    .prologue
    .line 4214
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    if-nez v2, :cond_0

    .line 4215
    const/4 v1, 0x0

    .line 4219
    :goto_0
    return-object v1

    .line 4217
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 4218
    .local v0, "currentIndex":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 4219
    .local v1, "currentItem":Lcom/miui/gallery/model/BaseDataItem;
    goto :goto_0
.end method

.method private onRecognized(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 6
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4138
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    if-nez v3, :cond_0

    .line 4147
    :goto_0
    return-void

    .line 4141
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 4142
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 4143
    .local v4, "type":J
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;

    .line 4144
    .local v0, "callback":Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v4, v5}, Lcom/miui/gallery/model/BaseDataItem;->isSpecialType(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v0, p1, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;->onRecognized(Lcom/miui/gallery/model/BaseDataItem;Z)V

    .line 4141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4144
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 4146
    .end local v0    # "callback":Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;
    .end local v4    # "type":J
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateEnterView(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0
.end method

.method private submitRecognizeTask(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4121
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    if-nez v0, :cond_0

    .line 4122
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionCallback:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    .line 4124
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->execute(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 4125
    return-void
.end method

.method private updateEnterView()V
    .locals 1

    .prologue
    .line 4095
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4099
    :goto_0
    return-void

    .line 4098
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->getCurrentItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateEnterView(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0
.end method

.method private updateEnterView(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 5
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/16 v4, 0x8

    .line 4150
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mSupportEnter:Z

    if-nez v2, :cond_1

    .line 4177
    :cond_0
    :goto_0
    return-void

    .line 4154
    :cond_1
    const/4 v1, 0x0

    .line 4155
    .local v1, "resId":I
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->getCallback(Lcom/miui/gallery/model/BaseDataItem;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;

    move-result-object v0

    .line 4156
    .local v0, "callback":Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;
    if-eqz v0, :cond_2

    .line 4157
    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;->getEnterDrawableId()I

    move-result v1

    .line 4159
    :cond_2
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4160
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4161
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 4162
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterShowAnim:Landroid/view/animation/Animation;

    if-nez v2, :cond_3

    .line 4163
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050017

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterShowAnim:Landroid/view/animation/Animation;

    .line 4165
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4166
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4169
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4170
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterHideAnim:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    .line 4171
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050018

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterHideAnim:Landroid/view/animation/Animation;

    .line 4173
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4174
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEnterViewPosition()V
    .locals 3

    .prologue
    .line 4085
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mSupportEnter:Z

    if-eqz v1, :cond_0

    .line 4086
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4087
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_0

    .line 4088
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4089
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4092
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTypeCallback(JLcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "callback"    # Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;

    .prologue
    .line 4057
    if-nez p3, :cond_0

    .line 4061
    :goto_0
    return-void

    .line 4060
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public onActionBarVisibilityChanged()V
    .locals 0

    .prologue
    .line 4074
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateEnterView()V

    .line 4075
    return-void
.end method

.method public onActivityResult()V
    .locals 0

    .prologue
    .line 4070
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateEnterView()V

    .line 4071
    return-void
.end method

.method public onActivityTransition()V
    .locals 2

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4067
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4181
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->getCurrentItem()Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 4182
    .local v1, "currentItem":Lcom/miui/gallery/model/BaseDataItem;
    if-nez v1, :cond_1

    .line 4198
    :cond_0
    :goto_0
    return-void

    .line 4186
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4190
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2600(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4191
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2700(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 4194
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->getCallback(Lcom/miui/gallery/model/BaseDataItem;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;

    move-result-object v0

    .line 4195
    .local v0, "callback":Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;
    if-eqz v0, :cond_0

    .line 4196
    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$Callback;->onEnterClick(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4223
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mEnterView:Landroid/widget/ImageView;

    .line 4224
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mFragment:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 4225
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 4226
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    if-eqz v0, :cond_0

    .line 4227
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->release()V

    .line 4228
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mRecognitionTask:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    .line 4230
    :cond_0
    return-void
.end method

.method public onUiOrientationChanged()V
    .locals 1

    .prologue
    .line 4078
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4082
    :goto_0
    return-void

    .line 4081
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateEnterViewPosition()V

    goto :goto_0
.end method

.method public updateItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4102
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4118
    :goto_0
    return-void

    .line 4106
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->hasFace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4107
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->mOperationMask:I

    and-int/2addr v0, v1

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4108
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onRecognized(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0

    .line 4112
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isSpecialTypeRecognized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4113
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onRecognized(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0

    .line 4117
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->submitRecognizeTask(Lcom/miui/gallery/model/BaseDataItem;)V

    goto :goto_0
.end method
