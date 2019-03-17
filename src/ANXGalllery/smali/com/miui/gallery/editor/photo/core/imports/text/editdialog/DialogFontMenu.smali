.class Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;
.super Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
.source "DialogFontMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;",
        "Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

.field private mFontDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

.field private mFontRequest:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;

.field private mInitializeData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mTextStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

.field private mTypeFaceInited:Z

.field private mWholeView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "configChangeListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    .prologue
    .line 51
    const v0, 0x7f0c04dd

    const v1, 0x7f0202b8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceInited:Z

    .line 52
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mListener:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mCurrentTextStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->downloadResource(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceInited:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;)Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mInitializeData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    return-object v0
.end method

.method private downloadResource(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->downloadFontResource(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadCallback;)V

    .line 129
    return-void
.end method

.method private initTypeFace()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->loadResourceData()V

    .line 155
    :cond_1
    return-void
.end method

.method private isEquals(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z
    .locals 1
    .param p1, "a"    # Landroid/graphics/Typeface;
    .param p2, "b"    # Landroid/graphics/Typeface;

    .prologue
    .line 229
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResourceData()V
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/TextTools;->isZhCNLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getLocalTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/TextTools;->checkResourceExist(Ljava/util/List;)V

    .line 161
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;->notifyDataSetChanged()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v2, "DialogFontMenu"

    const-string v3, "loadResourceData start."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    .local v0, "startTime":J
    new-instance v2, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;

    invoke-direct {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontRequest:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;

    .line 169
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontRequest:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$3;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;J)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    goto :goto_0
.end method


# virtual methods
.method initSubMenuView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040156

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mWholeView:Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mWholeView:Landroid/view/ViewGroup;

    const v1, 0x7f1202a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 59
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFontConfig;->init(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->initTypeFace()V

    .line 61
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mWholeView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 4
    .param p1, "initializeData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mInitializeData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .line 134
    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceInited:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 146
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    if-nez v3, :cond_3

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 136
    .local v2, "typeface":Landroid/graphics/Typeface;
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    if-eqz v3, :cond_0

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 141
    .local v1, "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->isEquals(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;->setSelection(I)V

    .line 143
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTypeFaceAdapter:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceAdapter;->notifyDataSetChanged()V

    .line 139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    .end local v1    # "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic initializeData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->initializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V

    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontRequest:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontRequest:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontResourceRequest;->cancel()V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mFontDownloadManager:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/FontDownloadManager;->cancelAll()V

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;->mTextStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 218
    .local v0, "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    if-nez v0, :cond_4

    .line 226
    .end local v0    # "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    :cond_3
    return-void

    .line 221
    .restart local v0    # "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    :cond_4
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->setState(I)V

    goto :goto_0
.end method
