.class public Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;
.super Landroid/app/Fragment;
.source "ChildMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment$OnBeautyProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;
    }
.end annotation


# static fields
.field private static sAnimAppearDelay:I

.field private static sAnimAppearDuration:I

.field private static sAnimDisappearDuration:I

.field private static sAnimOffset:I


# instance fields
.field protected mCallbacks:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

.field private mExtraTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mExtraTable:Ljava/util/Map;

    .line 97
    return-void
.end method


# virtual methods
.method public getBeautyParameterTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mExtraTable:Ljava/util/Map;

    return-object v0
.end method

.method protected final notifyBeautyParameterChanged()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    invoke-interface {v0, p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;->onBeautyParameterChanged(Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;)V

    .line 91
    return-void
.end method

.method public onBeautyProcessEnd()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onBeautyProcessStart()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimOffset:I

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimOffset:I

    .line 57
    :cond_0
    sget v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimAppearDuration:I

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimAppearDuration:I

    .line 61
    :cond_1
    sget v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimDisappearDuration:I

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimDisappearDuration:I

    .line 65
    :cond_2
    sget v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimAppearDelay:I

    if-nez v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimAppearDelay:I

    .line 69
    :cond_3
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

    .line 32
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 33
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_0

    .line 34
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    sget v5, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimOffset:I

    int-to-float v5, v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 35
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 36
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 37
    sget v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimAppearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    sget v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimAppearDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 45
    :goto_0
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    return-object v1

    .line 40
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v9, v4, v7

    sget v5, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimOffset:I

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 41
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 42
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 43
    sget v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->sAnimDisappearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 77
    const-string v2, "BEAUTY_EFFECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    .line 78
    .local v0, "beautyEffect":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    if-eqz v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    iget-object v3, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;->changeTitle(Ljava/lang/String;)V

    .line 83
    .end local v0    # "beautyEffect":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    :cond_0
    return-void
.end method

.method public setBeautyParameterTable(Lcom/miui/filtersdk/beauty/BeautyParameterType;F)V
    .locals 3
    .param p1, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .param p2, "value"    # F

    .prologue
    .line 105
    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mExtraTable:Ljava/util/Map;

    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mExtraTable:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public setBeautyParameterTable(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "beautyTable":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mExtraTable:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public setCallback(Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    .line 87
    return-void
.end method
