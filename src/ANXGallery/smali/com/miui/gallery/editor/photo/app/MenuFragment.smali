.class public abstract Lcom/miui/gallery/editor/photo/app/MenuFragment;
.super Lcom/miui/gallery/editor/photo/app/EditorFragment;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/miui/gallery/editor/photo/core/RenderFragment;",
        "P:",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<*TF;>;>",
        "Lcom/miui/gallery/editor/photo/app/EditorFragment;"
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
.field mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

.field private mDiscardBtn:Landroid/view/View;

.field mEffect:Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<*>;"
        }
    .end annotation
.end field

.field private mGestureFragment:Landroid/app/Fragment;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRenderCallbacks:Lcom/miui/gallery/editor/photo/core/RenderFragment$Callbacks;

.field private mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private mSaveBtn:Landroid/view/View;

.field protected final mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/miui/gallery/editor/photo/app/MenuFragment$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "relative_y"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/MenuFragment$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->VIEW_RELATIVE_Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    .local p1, "effect":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<TP;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/EditorFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/miui/gallery/editor/photo/app/MenuFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/miui/gallery/editor/photo/app/MenuFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$3;-><init>(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderCallbacks:Lcom/miui/gallery/editor/photo/core/RenderFragment$Callbacks;

    .line 45
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mEffect:Lcom/miui/gallery/editor/photo/core/Effect;

    .line 46
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    .line 47
    return-void
.end method


# virtual methods
.method protected createGestureFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method createRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->createFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method protected final decodeOrigin()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onLoadOrigin()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final genProgressDialog(Ljava/lang/String;)Lmiui/app/ProgressDialog;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    const/4 v2, 0x0

    .line 194
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "progressDialog":Lmiui/app/ProgressDialog;
    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 197
    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 200
    return-object v0
.end method

.method protected final getGestureFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mGestureFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method protected final getPreRenderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/RenderData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onLoadRenderData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final getPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onLoadPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;

    return-object v0
.end method

.method protected hideProcessDialog()V
    .locals 0

    .prologue
    .line 207
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    return-void
.end method

.method protected notifyDiscard()V
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    invoke-interface {v0, p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onDiscard(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    .line 178
    return-void
.end method

.method protected notifySave()V
    .locals 4

    .prologue
    .line 181
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 182
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/miui/gallery/editor/photo/app/MenuFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;

    invoke-interface {v1, p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment$Callbacks;->onSave(Lcom/miui/gallery/editor/photo/app/MenuFragment;)V

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/EditorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MenuFragment:display_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/RenderFragment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MenuFragment:gesture_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mGestureFragment:Landroid/app/Fragment;

    .line 75
    sget v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimOffset:I

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimOffset:I

    .line 78
    :cond_0
    sget v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimAppearDuration:I

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimAppearDuration:I

    .line 81
    :cond_1
    sget v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimDisappearDuration:I

    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimDisappearDuration:I

    .line 84
    :cond_2
    sget v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimAppearDelay:I

    if-nez v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimAppearDelay:I

    .line 87
    :cond_3
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 10
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 51
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 52
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_0

    .line 53
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    sget v5, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimOffset:I

    int-to-float v5, v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 54
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 55
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 56
    sget v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimAppearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 57
    sget v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimAppearDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 64
    :goto_0
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    return-object v1

    .line 59
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;->VIEW_RELATIVE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v9, v4, v7

    sget v5, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimOffset:I

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 60
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 61
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 62
    sget v3, Lcom/miui/gallery/editor/photo/app/MenuFragment;->sAnimDisappearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 54
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/EditorFragment;->onDestroy()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;

    .line 132
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/EditorFragment;->onDestroyView()V

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 121
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 122
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mGestureFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mGestureFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 125
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/EditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 93
    const v1, 0x7f12013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mSaveBtn:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mSaveBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mSaveBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    const v1, 0x7f12013a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mDiscardBtn:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mDiscardBtn:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mDiscardBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/RenderFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 106
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mRenderFragment:Lcom/miui/gallery/editor/photo/core/RenderFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 107
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mGestureFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/MenuFragment;->mGestureFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 110
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 111
    return-void
.end method

.method protected showProcessDialog()V
    .locals 0

    .prologue
    .line 204
    .local p0, "this":Lcom/miui/gallery/editor/photo/app/MenuFragment;, "Lcom/miui/gallery/editor/photo/app/MenuFragment<TF;TP;>;"
    return-void
.end method
