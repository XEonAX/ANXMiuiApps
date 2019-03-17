.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
.super Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
.source "TextFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;
    }
.end annotation


# instance fields
.field private mBubbleText:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field private mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

.field private mTextConfigDataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

.field private mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

.field private mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    .line 105
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    .line 137
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 342
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object p1
.end method

.method private performSetDialog(Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;I)V
    .locals 4
    .param p1, "textConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    .param p2, "newIndex"    # I

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->getBaseDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    move-result-object v0

    .line 182
    .local v0, "baseDialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .line 183
    .local v2, "newData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    const/4 v1, 0x0

    .line 184
    .local v1, "isNew":Z
    if-nez v2, :cond_0

    .line 185
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    move-result-object v2

    .line 186
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->isWatermark()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->getWatermarkInfo()Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->watermarkInitSelf(Lcom/miui/gallery/editor/photo/core/imports/text/watermark/WatermarkInfo;)V

    .line 191
    :goto_0
    const/4 v1, 0x1

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;->isWatermark()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mBubbleText:Ljava/lang/String;

    iput-object v3, v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->text:Ljava/lang/String;

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v3, v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->enableStatusForCurrentItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;Z)V

    .line 197
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    .line 198
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setItemDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V

    .line 199
    return-void

    .line 189
    :cond_2
    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->configSelfByInit(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V
    .locals 5
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    .end local p2    # "param":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local p2    # "param":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "param":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "newIndex":I
    move-object v2, p1

    .line 161
    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;

    .line 162
    .local v2, "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    if-eq v1, v4, :cond_0

    .line 165
    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentIndex:I

    invoke-virtual {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    move-result-object v3

    .line 166
    .local v3, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getDialogStatusData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    .line 167
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemTextDialogConfig()Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    move-result-object v0

    .line 168
    .local v0, "lastTextConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->isWatermark()Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    iget-object v4, v3, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->text:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mBubbleText:Ljava/lang/String;

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->removeLastItem()V

    .line 173
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->addNewItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;)V

    .line 174
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isItemActivation()Z

    move-result v4

    if-nez v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setLastItemActivation()V

    .line 177
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->performSetDialog(Lcom/miui/gallery/editor/photo/core/imports/text/TextConfig;I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public getTextConfigDataByIndex(I)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 283
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .line 284
    .local v0, "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .end local v0    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;-><init>()V

    .line 286
    .restart local v0    # "textStatusData":Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->setEmpty()V

    .line 287
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextConfigDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 47
    const v3, 0x7f04006e

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 48
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .line 49
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .line 50
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$ConfigListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$1;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setConfigChangeListener(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V

    .line 52
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setTextEditorListener(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;)V

    .line 53
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setTextWatch(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditDialog:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$StatusListener;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->setStatusListener(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;)V

    .line 56
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 60
    .local v2, "paddingTop":I
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v3, v1, v2, v1, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setPadding(IIII)V

    .line 62
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v0, v3, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 63
    return-object v0
.end method

.method protected onExport()Lcom/miui/gallery/editor/photo/core/RenderData;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextRenderData;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->export()Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextRenderData;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;)V

    return-object v0
.end method

.method protected onSample()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemTextDialogConfig()Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;

    move-result-object v3

    .line 75
    .local v3, "textConfig":Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;
    if-eqz v3, :cond_0

    .line 76
    invoke-interface {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/base/ITextDialogConfig;->getSampleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-eqz v5, :cond_1

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "font_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "color_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemBold()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    const-string v5, "bold"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemShadow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    const-string/jumbo v5, "shadow"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v2

    .line 89
    .local v2, "textAlignment":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    sget-object v5, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    if-eq v2, v5, :cond_4

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "align_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment;->mTextEditorView:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getItemTransparent()F

    move-result v4

    .line 93
    .local v4, "transparent":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 94
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, ".0"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transparent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    float-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v0    # "decimalFormat":Ljava/text/DecimalFormat;
    :cond_5
    return-object v1
.end method

.method public remove(Lcom/miui/gallery/editor/photo/core/Metadata;)V
    .locals 0
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Metadata;

    .prologue
    .line 204
    return-void
.end method

.method public render()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
