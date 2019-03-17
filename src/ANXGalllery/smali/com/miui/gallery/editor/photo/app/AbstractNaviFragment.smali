.class public abstract Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
.super Landroid/app/Fragment;
.source "AbstractNaviFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;,
        Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    }
.end annotation


# static fields
.field private static final VIEW_RELATIVE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnimAppearDelay:I

.field private static sAnimAppearDuration:I

.field private static sAnimDisappearDuration:I

.field private static sAnimOffset:I


# instance fields
.field mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;",
            ">;"
        }
    .end annotation
.end field

.field private mExportable:Z

.field private mNavigatorCreated:Z

.field private mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "relative_y"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->VIEW_RELATIVE_Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const v6, 0x7f0201ef

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 144
    new-instance v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 170
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/Effect;->values()[Lcom/miui/gallery/editor/photo/core/Effect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f1

    const v4, 0x7f0c0352

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->FILTER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201ed

    const v4, 0x7f0c0348

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->ADJUST:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0c034c

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v6, v3, v4}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f0

    const v4, 0x7f0c0351

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->DOODLE:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f5

    const v4, 0x7f0c0374

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201ee

    const v4, 0x7f0c0349

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->BEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0c0356

    sget-object v4, Lcom/miui/gallery/editor/photo/core/Effect;->LONG_CROP:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v6, v3, v4}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f6

    const v4, 0x7f0c038b

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->TEXT:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f3

    const v4, 0x7f0c0366

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->MOSAIC:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f4

    const v4, 0x7f0c0371

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->REMOVER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f02019a

    const v4, 0x7f0c0357

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/Effect;->ordinal()I

    move-result v1

    new-instance v2, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    const v3, 0x7f0201f2

    const v4, 0x7f0c0354

    sget-object v5, Lcom/miui/gallery/editor/photo/core/Effect;->FRAME:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;-><init>(IILcom/miui/gallery/editor/photo/core/Effect;)V

    aput-object v2, v0, v1

    .line 206
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, "content":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mData:Ljava/util/List;

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 161
    .local v1, "effect":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 162
    const-string v2, "AbstractNaviFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid effect index of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mData:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mSupportedData:[Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v1    # "effect":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected final getNaviData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected final notifyNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 1
    .param p1, "effect"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;->onNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$Callbacks;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal state: no callbacks bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sget v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimOffset:I

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimOffset:I

    .line 53
    :cond_1
    sget v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimAppearDuration:I

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimAppearDuration:I

    .line 56
    :cond_2
    sget v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimDisappearDuration:I

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimDisappearDuration:I

    .line 60
    :cond_3
    sget v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimAppearDelay:I

    if-nez v0, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimAppearDelay:I

    .line 63
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->initialize()V

    .line 64
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 10
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 103
    const-string v3, "AbstractNaviFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 v3, 0x2002

    if-ne v3, p1, :cond_0

    if-eqz p2, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    .line 108
    :cond_0
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 109
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_1

    .line 110
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    sget v5, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 111
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 112
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 113
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 115
    sget v3, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimAppearDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 116
    sget v3, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimAppearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 118
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_1
    sget-object v3, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->VIEW_RELATIVE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v9, v4, v7

    sget v5, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 119
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 120
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 121
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    sget v3, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->sAnimDisappearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 111
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 119
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onCreateNavigator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 68
    const v3, 0x7f0400ce

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 69
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->onCreateNavigator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "navi":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 71
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mNavigatorCreated:Z

    .line 72
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x2

    const v4, 0x7f12013a

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    invoke-virtual {v0, v2, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iput-boolean v5, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mNavigatorCreated:Z

    goto :goto_0
.end method

.method protected onNavigatorCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mNavigatorCreated:Z

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 86
    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->onNavigatorCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    :cond_0
    const v1, 0x7f1201eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "export":Landroid/view/View;
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mExportable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f12013a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method setExportEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1201eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    :goto_0
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;->mExportable:Z

    .line 134
    return-void

    .line 131
    :cond_0
    const-string v0, "AbstractNaviFragment"

    const-string/jumbo v1, "shouldn\'t call when not visible"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
