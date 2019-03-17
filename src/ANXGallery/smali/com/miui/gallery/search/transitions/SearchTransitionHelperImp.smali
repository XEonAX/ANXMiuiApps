.class public Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;
.super Lcom/miui/gallery/search/transitions/SearchTransitionHelper;
.source "SearchTransitionHelperImp.java"


# instance fields
.field private mSharedElementCallback:Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;


# direct methods
.method public constructor <init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;)V
    .locals 1
    .param p1, "fragment"    # Lmiui/app/Fragment;
    .param p2, "enterTransitionListener"    # Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/search/transitions/SearchTransitionHelper;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;)V

    .line 30
    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mSharedElementCallback:Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;

    .line 23
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$1;-><init>(Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;)V

    goto :goto_0
.end method

.method private generateTransition(Z)Landroid/transition/Transition;
    .locals 10
    .param p1, "enter"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    iget-object v7, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mFragment:Lmiui/app/Fragment;

    const v8, 0x7f0c0460

    invoke-virtual {v7, v8}, Lmiui/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "inputName":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mFragment:Lmiui/app/Fragment;

    const v8, 0x7f0c045f

    invoke-virtual {v7, v8}, Lmiui/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "iconName":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mFragment:Lmiui/app/Fragment;

    const v8, 0x7f0c0461

    invoke-virtual {v7, v8}, Lmiui/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "iconVoice":Ljava/lang/String;
    new-instance v6, Landroid/transition/TransitionSet;

    invoke-direct {v6}, Landroid/transition/TransitionSet;-><init>()V

    .line 61
    .local v6, "transition":Landroid/transition/TransitionSet;
    iget-object v7, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v7}, Lmiui/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090046

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 63
    new-instance v7, Landroid/transition/ChangeTransform;

    invoke-direct {v7}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v6, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 64
    new-instance v7, Landroid/transition/ChangeBounds;

    invoke-direct {v7}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v6, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 65
    new-instance v7, Landroid/transition/ChangeClipBounds;

    invoke-direct {v7}, Landroid/transition/ChangeClipBounds;-><init>()V

    invoke-virtual {v6, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 67
    new-instance v2, Lcom/miui/gallery/search/transitions/FadeOutInTransform;

    invoke-direct {v2}, Lcom/miui/gallery/search/transitions/FadeOutInTransform;-><init>()V

    .line 68
    .local v2, "fadeTransform":Lcom/miui/gallery/search/transitions/FadeOutInTransform;
    invoke-virtual {v2, v3}, Lcom/miui/gallery/search/transitions/FadeOutInTransform;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 69
    invoke-virtual {v2, v4}, Lcom/miui/gallery/search/transitions/FadeOutInTransform;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 70
    invoke-virtual {v6, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 72
    new-instance v0, Lcom/miui/gallery/search/transitions/ChangeImage;

    invoke-direct {v0}, Lcom/miui/gallery/search/transitions/ChangeImage;-><init>()V

    .line 73
    .local v0, "changeImage":Lcom/miui/gallery/search/transitions/ChangeImage;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/search/transitions/ChangeImage;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 74
    invoke-virtual {v0, v5}, Lcom/miui/gallery/search/transitions/ChangeImage;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 75
    invoke-virtual {v0, v4}, Lcom/miui/gallery/search/transitions/ChangeImage;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 76
    invoke-virtual {v6, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 78
    new-instance v1, Lcom/miui/gallery/search/transitions/ChangeTextView;

    invoke-direct {v1}, Lcom/miui/gallery/search/transitions/ChangeTextView;-><init>()V

    .line 79
    .local v1, "changeTextView":Lcom/miui/gallery/search/transitions/ChangeTextView;
    invoke-virtual {v1, v5}, Lcom/miui/gallery/search/transitions/ChangeTextView;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 80
    invoke-virtual {v6, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    new-instance v7, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp$2;-><init>(Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;)V

    invoke-virtual {v6, v7}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 110
    .end local v0    # "changeImage":Lcom/miui/gallery/search/transitions/ChangeImage;
    .end local v1    # "changeTextView":Lcom/miui/gallery/search/transitions/ChangeTextView;
    .end local v2    # "fadeTransform":Lcom/miui/gallery/search/transitions/FadeOutInTransform;
    .end local v3    # "iconName":Ljava/lang/String;
    .end local v4    # "iconVoice":Ljava/lang/String;
    .end local v5    # "inputName":Ljava/lang/String;
    .end local v6    # "transition":Landroid/transition/TransitionSet;
    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static supportSharedElementTransition()Z
    .locals 2

    .prologue
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configTransition()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->supportSharedElementTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0}, Lmiui/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->generateTransition(Z)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mFragment:Lmiui/app/Fragment;

    invoke-virtual {v0}, Lmiui/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->generateTransition(Z)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    .line 51
    :cond_0
    return-void
.end method

.method public getSharedElementCallback()Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelperImp;->mSharedElementCallback:Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;

    return-object v0
.end method
