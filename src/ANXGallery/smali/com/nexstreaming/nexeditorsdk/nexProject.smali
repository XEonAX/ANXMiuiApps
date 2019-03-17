.class public Lcom/nexstreaming/nexeditorsdk/nexProject;
.super Lcom/nexstreaming/nexeditorsdk/b;
.source "nexProject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexProject$a;,
        Lcom/nexstreaming/nexeditorsdk/nexProject$b;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final kAutoThemeClipDuration:I = 0x1770

.field public static final kAutoThemeTransitionDuration:I = 0x7d0

.field private static sNextId:I


# instance fields
.field private mAudioFadeInTime:I

.field private mAudioFadeOutTime:I

.field mBGMTrimEndTime:I

.field mBGMTrimStartTime:I

.field private mBGMVolumeScale:F

.field private mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field private mEmptyTheme:Z

.field private mEndingTitle:Ljava/lang/String;

.field private mId:I

.field private mLetterbox:Ljava/lang/String;

.field mLoopBGM:Z

.field private mManualVolCtl:I

.field private mOpeningTitle:Ljava/lang/String;

.field private mOverlayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexClip;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectVolume:I

.field private mSecondaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAudioItem;",
            ">;"
        }
    .end annotation
.end field

.field mStartTimeBGM:I

.field private mSubEffectInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateApplyMode:I

.field private mTemplateOverlappedTransition:Z

.field private mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

.field private mThemeId:Ljava/lang/String;

.field private mTopEffectInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUseThemeMusic2BGM:Z

.field private m_externalView_overlayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_externalView_primaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexClip;",
            ">;"
        }
    .end annotation
.end field

.field private m_externalView_secondaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAudioItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "nexProject"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/b;-><init>()V

    .line 54
    const-string v0, "com.nexstreaming.kinemaster.basic"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 57
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 60
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 61
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 64
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 71
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 72
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 73
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 74
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 78
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 79
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    .line 1333
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    .line 1336
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    .line 1338
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 103
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 104
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    .line 105
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] nexProject create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1922
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/b;-><init>()V

    .line 54
    const-string v0, "com.nexstreaming.kinemaster.basic"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 57
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 60
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 61
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 64
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 71
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 72
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 73
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 74
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 78
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 79
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    .line 1333
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    .line 1336
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    .line 1338
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    .line 1923
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mProjectVolume:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 1924
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mManualVolCtl:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 1925
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mAudioFadeInTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 1926
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mAudioFadeOutTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 1928
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mOpeningTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 1929
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mEndingTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 1931
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMVolumeScale:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 1932
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    .line 1934
    iget-boolean v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mUseThemeMusic2BGM:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 1935
    iget-boolean v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mLoopBGM:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 1936
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mStartTimeBGM:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 1937
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    if-nez v0, :cond_0

    .line 1938
    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1942
    :goto_0
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMTrimStartTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimStartTime:I

    .line 1943
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMTrimEndTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    .line 1949
    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTemplateApplyMode:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 1950
    iget-boolean v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTemplateOverlappedTransition:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 1954
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    .line 1956
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-direct {v3, p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;-><init>(Lcom/nexstreaming/nexeditorsdk/b;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1940
    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget-object v1, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    invoke-direct {v0, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;-><init>(Lcom/nexstreaming/nexeditorsdk/b;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    goto :goto_0

    .line 1961
    :cond_1
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSecondaryItems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1962
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;

    .line 1963
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    invoke-direct {v3, p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;-><init>(Lcom/nexstreaming/nexeditorsdk/b;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1968
    :cond_2
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTopEffectInfo:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1969
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTopEffectInfo:Ljava/util/List;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    .line 1972
    :cond_3
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSubEffectInfo:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1973
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSubEffectInfo:Ljava/util/List;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    .line 1976
    :cond_4
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mClipTimeUpdated:Z

    .line 1977
    return-void
.end method

.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexTheme;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/b;-><init>()V

    .line 54
    const-string v0, "com.nexstreaming.kinemaster.basic"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 57
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 60
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 61
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 64
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 71
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 72
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 73
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 74
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 78
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 79
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    .line 1333
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    .line 1336
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    .line 1338
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    .line 133
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 134
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 135
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    .line 136
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] nexProject create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/b;-><init>()V

    .line 54
    const-string v0, "com.nexstreaming.kinemaster.basic"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 57
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 60
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 61
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 64
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 71
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 72
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 73
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 74
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 78
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 79
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    .line 1333
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    .line 1336
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    .line 1338
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    .line 150
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 151
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 152
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    .line 153
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] nexProject create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/b;-><init>()V

    .line 54
    const-string v0, "com.nexstreaming.kinemaster.basic"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 57
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 60
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 61
    const/16 v0, 0xc8

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 62
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 64
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 71
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 72
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 73
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 74
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 78
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 79
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    .line 1333
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    .line 1335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    .line 1336
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    .line 1338
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    .line 170
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 171
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 172
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->sNextId:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    .line 173
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] nexProject create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private addClone(ILcom/nexstreaming/nexeditorsdk/nexClip;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 395
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 397
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    return v1
.end method

.method private addCloneAudio(ILcom/nexstreaming/nexeditorsdk/nexAudioItem;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 403
    invoke-virtual {p2}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 404
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 405
    return v2
.end method

.method private checkAudioTime(II)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 465
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 466
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 470
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getEndTime()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getStartTime()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 471
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    move v3, v2

    .line 476
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 478
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getEndTime()I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getStartTime()I

    move-result v0

    if-le v5, v0, :cond_2

    .line 480
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getStartTime()I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getEndTime()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 481
    add-int/lit8 v3, v3, 0x1

    .line 476
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 485
    :cond_3
    const/4 v0, 0x2

    if-ge v3, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public static clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 4

    .prologue
    .line 1496
    .line 1498
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    if-eqz v0, :cond_0

    .line 1499
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>()V

    move-object v1, v0

    .line 1503
    :goto_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clone src project["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to dest project["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 1505
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTheme:Lcom/nexstreaming/nexeditorsdk/nexTheme;

    .line 1506
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 1507
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 1508
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 1509
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 1511
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 1512
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 1513
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 1514
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 1516
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mClipTimeUpdated:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mClipTimeUpdated:Z

    .line 1517
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 1519
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1520
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->clone(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    goto :goto_1

    .line 1501
    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_2

    .line 1524
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clone(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1527
    :cond_2
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getPrimaryItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1528
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v3

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clone(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addClone(ILcom/nexstreaming/nexeditorsdk/nexClip;)I

    goto :goto_2

    .line 1548
    :cond_3
    const/4 v0, 0x0

    .line 1549
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getAudioItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 1550
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->clone(Lcom/nexstreaming/nexeditorsdk/nexAudioItem;)Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addCloneAudio(ILcom/nexstreaming/nexeditorsdk/nexAudioItem;)I

    .line 1551
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1552
    goto :goto_3

    .line 1553
    :cond_4
    return-object v1
.end method

.method public static createFromSaveString(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 2

    .prologue
    .line 1998
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 1999
    const-class v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;

    .line 2000
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    invoke-direct {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;)V

    return-object v1
.end method

.method private getClipTimeGuideLine(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1344
    .line 1345
    add-int/lit8 v1, p1, -0x1

    .line 1350
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v0

    .line 1354
    :cond_1
    if-ltz v1, :cond_2

    .line 1355
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOffset()I

    move-result v2

    .line 1356
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOverlap()I

    move-result v3

    .line 1357
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v0

    .line 1358
    mul-int v1, v0, v2

    div-int/lit8 v1, v1, 0x64

    sub-int v1, v0, v1

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    move v1, v0

    .line 1361
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOffset()I

    move-result v2

    .line 1362
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v0

    .line 1363
    mul-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1365
    div-int/lit16 v0, v0, 0x1f4

    .line 1366
    mul-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private getTransitionTimeGuideLine(II)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1370
    .line 1371
    add-int/lit8 v2, p1, -0x1

    .line 1372
    add-int/lit8 v3, p1, 0x1

    .line 1378
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 1379
    const/4 v0, 0x0

    .line 1412
    :goto_0
    return v0

    .line 1382
    :cond_0
    if-gez p2, :cond_1

    .line 1383
    const/16 p2, 0x1f4

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v1

    .line 1387
    if-ltz v2, :cond_4

    .line 1388
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOffset()I

    move-result v4

    .line 1389
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOverlap()I

    move-result v5

    .line 1390
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v0

    .line 1391
    mul-int v2, v0, v4

    div-int/lit8 v2, v2, 0x64

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 1392
    mul-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x64

    sub-int v0, v1, v0

    .line 1395
    :goto_1
    sub-int v1, v0, p2

    .line 1397
    if-lez v3, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 1399
    if-le v1, v0, :cond_2

    move v1, v0

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOffset()I

    move-result v2

    .line 1406
    mul-int/lit8 v0, v1, 0x2

    .line 1407
    if-lez v2, :cond_3

    .line 1408
    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    .line 1410
    :cond_3
    div-int/lit16 v0, v0, 0x1f4

    .line 1412
    mul-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private isPrimaryItem(Lcom/nexstreaming/nexeditorsdk/nexClip;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 275
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static logClipOf(ILcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;)V
    .locals 5

    .prologue
    .line 2004
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.m_BGMVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->m_BGMVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCollageDrawInfoID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCollageDrawInfoID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransCodingPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mTransCodingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.m_Brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->m_Brightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.m_ClipVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->m_ClipVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.m_Contrast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->m_Contrast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.m_Saturation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->m_Saturation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mAudioOnOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mAudioOnOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mAVSyncAudioStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mAVSyncAudioStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCustomLUT_A="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCustomLUT_A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCustomLUT_B="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCustomLUT_B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCustomLUT_Power="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCustomLUT_Power:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mEndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mFaceDetected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mFaceDetected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mFacedetectProcessed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mFacedetectProcessed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.misMustDownSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->misMustDownSize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mMediaInfoUseCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mMediaInfoUseCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mOverlappedTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mOverlappedTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mPropertySlowVideoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mPropertySlowVideoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTemplateAudioPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mTemplateAudioPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTemplateEffectID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mTemplateEffectID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTitleEffectEndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mTitleEffectEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTitleEffectStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mTitleEffectStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mExistAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mExistAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mVideoTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoTotalTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mSeekPointCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mSeekPointCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mFramesPerSecond="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mFramesPerSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mAudioCodecType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mAudioCodecType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mMimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mVideoCodecType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoCodecType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mAudioBitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mAudioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mAudioTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mAudioTotalTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mClipType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mClipType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mDisplayWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mExistVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mExistVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mH264Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mH264Level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mH264Profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mH264Profile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mRotateDegreeInMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mRotateDegreeInMeta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mSuppertedResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mSuppertedResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mTotalTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mVideoBitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mVideoRenderMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoRenderMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mVideoHDRType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoHDRType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mVideoTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoTotalTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mInfo.mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mInfo:Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    if-nez v0, :cond_0

    .line 2055
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect= null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :goto_0
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mTransitionEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    if-nez v0, :cond_1

    .line 2074
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect= null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :goto_1
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    if-nez v0, :cond_2

    .line 2093
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop= null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :goto_2
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mDrawInfos:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2129
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mDrawInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 2130
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getCustomLUTA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTA()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getCustomLUTB="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getCustomLUTB()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getEffectID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEffectID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getTitle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getClipID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getClipID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getEndRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getStartRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getContrast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getContrast()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getSubEffectID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getSubEffectID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getTranslateX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getTranslateX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getRotateState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getUserRotateState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]nexClipOf.mDrawInfos.getEndTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getEndTime()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2057
    :cond_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mAutoID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mAutoID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mEffectOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mEffectOverlap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOverlap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mIsResolveOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mIsResolveOptions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mMaxDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMaxDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mMinDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMinDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mOptionsUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mOptionsUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mShowEndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mShowStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mClipEffect.itemMethodType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2076
    :cond_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mAutoID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mAutoID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mEffectOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mEffectOverlap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mEffectOverlap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mIsResolveOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mIsResolveOptions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mMaxDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMaxDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mMinDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mMinDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mOptionsUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mOptionsUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mShowEndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mShowStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mShowStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mTransitionEffect.itemMethodType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mClipEffect:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;

    iget-object v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexEffectOf;->itemMethodType:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$ItemMethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2096
    :cond_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_endPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_endPositionLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_endPositionRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_endPositionTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_startPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_startPositionLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_startPositionLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_startPositionLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_faceBounds_bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_faceBounds_left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_faceBounds_right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_faceBounds_set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget-boolean v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_set:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_faceBounds_top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_facePositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_facePositionLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_facePositionRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_facePositionTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedEndPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedEndPositionLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedEndPositionRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedEndPositionTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedStartPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedStartPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedStartPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]nexClipOf.mCrop.m_rotatedStartPositionBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;->mCrop:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    iget v2, v2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2147
    :cond_3
    return-void
.end method

.method static logFromString(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 2151
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 2152
    const-class v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;

    .line 2154
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nexSaveDataFormatVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->nexSaveDataFormatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mEndingTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-object v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mEndingTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mOpeningTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-object v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mOpeningTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mAudioFadeInTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mAudioFadeInTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mAudioFadeOutTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mAudioFadeOutTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-object v1, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    if-nez v1, :cond_1

    .line 2160
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    const-string v2, "project.mBackGroundMusic= null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :goto_0
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mBGMTrimEndTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMTrimEndTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mBGMTrimStartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMTrimStartTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mBGMVolumeScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMVolumeScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mLoopBGM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-boolean v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mLoopBGM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mManualVolCtl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mManualVolCtl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mProjectVolume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mProjectVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mStartTimeBGM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mStartTimeBGM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mTemplateOverlappedTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-boolean v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTemplateOverlappedTransition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project.mUseThemeMusic2BGM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-boolean v3, v3, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mUseThemeMusic2BGM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-object v1, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    if-nez v1, :cond_2

    .line 2175
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    const-string v1, "project.mPrimaryItems=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2162
    :cond_1
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    const-string v2, "project.mBackGroundMusic= set"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2177
    :cond_2
    const/4 v1, 0x1

    .line 2178
    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    .line 2179
    invoke-static {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->logClipOf(ILcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;)V

    .line 2180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 2181
    goto :goto_1
.end method


# virtual methods
.method public add(IZLcom/nexstreaming/nexeditorsdk/nexClip;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAttachmentState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add() ProjectAlreadyAttachedException index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/ProjectAlreadyAttachedException;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/exception/ProjectAlreadyAttachedException;-><init>()V

    throw v0

    .line 372
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 373
    invoke-virtual {p3, v1, p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 375
    if-eqz p2, :cond_3

    .line 378
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isFaceDetectProcessed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_1
    invoke-virtual {p3, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectNone()V

    .line 383
    invoke-virtual {p3, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 384
    invoke-virtual {p3, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 390
    :goto_0
    return v2

    .line 388
    :cond_3
    invoke-virtual {p3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p3, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I

    goto :goto_0
.end method

.method public add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 342
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->isPrimaryItem(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    move-result v0

    .line 343
    if-gez v0, :cond_0

    .line 348
    :goto_0
    return v0

    .line 345
    :cond_0
    if-ne v0, v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(IZLcom/nexstreaming/nexeditorsdk/nexClip;)I

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(IZLcom/nexstreaming/nexeditorsdk/nexClip;)I

    move-result v0

    goto :goto_0
.end method

.method public addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 422
    invoke-direct {p0, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->checkAudioTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const/4 v0, -0x1

    .line 432
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-virtual {p1, v4, p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 427
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexClip;II)V

    .line 428
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getId()I

    move-result v0

    .line 429
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    new-instance v2, Lcom/nexstreaming/nexeditorsdk/nexProject$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexProject$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 431
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    goto :goto_0
.end method

.method public addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z
    .locals 3

    .prologue
    .line 1228
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    .line 1234
    :goto_0
    return v0

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexProject$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject$b;-><init>(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method adjustmentEffectTime(IIII)I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1048
    invoke-virtual {p0, p2, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v2

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v3

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOffset()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    .line 1050
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v0

    add-int v3, v2, v0

    .line 1052
    invoke-virtual {p0, p1, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v4

    .line 1053
    invoke-virtual {p0, p2, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v5

    move v0, v1

    .line 1055
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1057
    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    .line 1061
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v7

    const v8, -0xf000001

    and-int/2addr v8, p4

    if-ne v7, v8, :cond_0

    .line 1062
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v7

    if-gt v4, v7, :cond_0

    .line 1063
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v7

    if-le v5, v7, :cond_0

    .line 1065
    invoke-virtual {p0, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1066
    sub-int v7, v2, p3

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateAudioPos()I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    add-int/2addr v7, p3

    .line 1067
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I

    .line 1055
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_1
    :goto_1
    if-gt p1, p2, :cond_2

    .line 1076
    invoke-virtual {p0, p1, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 1078
    iput p3, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectStartTime:I

    .line 1079
    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectEndTime:I

    .line 1084
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectShowTime(II)V

    .line 1075
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1087
    :cond_2
    return v3
.end method

.method public allClear(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 779
    .line 781
    if-eqz p1, :cond_1

    .line 782
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 783
    :goto_0
    if-ge v1, v3, :cond_0

    .line 784
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 785
    invoke-virtual {v0, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 783
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 796
    :goto_1
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mClipTimeUpdated:Z

    .line 798
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 799
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 800
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 791
    :goto_2
    if-ge v1, v3, :cond_2

    .line 792
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 791
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public changeAudio(Lcom/nexstreaming/nexeditorsdk/nexAudioItem;II)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 449
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 450
    invoke-direct {p0, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->checkAudioTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 453
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexProject$a;

    invoke-direct {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexProject$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 454
    const/4 v0, -0x1

    .line 461
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->setProjectTime(II)V

    .line 457
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 459
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexProject$a;

    invoke-direct {v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexProject$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 460
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 461
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected clearDrawInfo()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 764
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 766
    :cond_2
    return-void
.end method

.method public clearFaceDetectInfo()V
    .locals 5

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1559
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1562
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1564
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->resetFaceDetectProcessed()V

    .line 1559
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1567
    :cond_1
    return-void
.end method

.method public clearOverlay()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1302
    return-void
.end method

.method public findAudioItem(I)Lcom/nexstreaming/nexeditorsdk/nexAudioItem;
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 512
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 516
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioItem(I)Lcom/nexstreaming/nexeditorsdk/nexAudioItem;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    return-object v0
.end method

.method public getAudioItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAudioItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_secondaryItems:Ljava/util/List;

    return-object v0
.end method

.method public getBGMMasterVolumeScale()F
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    return v0
.end method

.method public getBackgroundMusic()Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object v0
.end method

.method public getBackgroundMusicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 1

    .prologue
    .line 649
    if-eqz p2, :cond_0

    .line 650
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 652
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    goto :goto_0
.end method

.method public getClipDurationTimeGuideLine(I)[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1428
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClipTimeGuideLine(I)I

    move-result v2

    .line 1429
    const/16 v1, 0x2710

    .line 1430
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    .line 1432
    if-le v2, v0, :cond_2

    .line 1433
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 1441
    :goto_0
    return-object v0

    .line 1436
    :cond_0
    if-le v2, v1, :cond_1

    .line 1437
    new-array v0, v4, [I

    aput v2, v0, v5

    add-int/lit16 v1, v2, 0x3e8

    aput v1, v0, v6

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1441
    :cond_2
    new-array v1, v4, [I

    aput v2, v1, v5

    aput v0, v1, v6

    move-object v0, v1

    goto :goto_0

    .line 1433
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getClipMaxSpeedControlList(I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1641
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1674
    :goto_0
    return v2

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    .line 1646
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    if-eqz v0, :cond_5

    .line 1647
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimStartDuration:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->mTrimEndDuration:I

    sub-int v0, v1, v0

    move v3, v0

    .line 1653
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 1654
    add-int/lit8 v4, p1, 0x1

    .line 1655
    if-ltz v0, :cond_4

    .line 1656
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v0

    sub-int v0, v1, v0

    move v1, v0

    .line 1659
    :goto_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 1660
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v5

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v0

    sub-int v0, v5, v0

    .line 1663
    :goto_3
    add-int/2addr v0, v1

    add-int/lit16 v1, v0, 0x1f4

    .line 1664
    const/16 v0, 0xa

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    move v0, v2

    .line 1666
    :goto_4
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1667
    mul-int/lit8 v5, v3, 0x64

    aget v6, v4, v2

    div-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1668
    if-gt v1, v5, :cond_2

    .line 1669
    aget v0, v4, v2

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    move v2, v0

    .line 1674
    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_1

    .line 1664
    :array_0
    .array-data 4
        0xd
        0x19
        0x32
        0x4b
        0x64
        0x7d
        0x96
        0xaf
        0xc8
        0x190
    .end array-data
.end method

.method public getClipPosition(I)I
    .locals 3

    .prologue
    .line 1579
    const/4 v2, -0x1

    .line 1580
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1586
    :goto_1
    return v1

    .line 1580
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getClipPositionTime(I)[I
    .locals 4

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1478
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v1

    .line 1479
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v0

    .line 1480
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method public getEndingTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    return-object v0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 1837
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    return v0
.end method

.method getLastClipIndexWithEffectID(II)I
    .locals 3

    .prologue
    const/high16 v1, 0x1000000

    const/4 v2, 0x1

    .line 1030
    and-int v0, p2, v1

    if-ne v0, v1, :cond_0

    .line 1043
    :goto_0
    return p1

    .line 1035
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1036
    invoke-virtual {p0, p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v0

    const v1, -0xf000001

    and-int/2addr v0, v1

    if-ne v0, p2, :cond_1

    .line 1035
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1041
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method public getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    return-object v0
.end method

.method public getLetterboxEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    return-object v0
.end method

.method public getManualVolumeControl()I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    return v0
.end method

.method public getNextClip(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 677
    :cond_0
    const/4 v0, 0x0

    .line 679
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    goto :goto_0
.end method

.method public getOpeningTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlay(I)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    .locals 3

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1251
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1254
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverlayItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_overlayItems:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->m_externalView_primaryItems:Ljava/util/List;

    return-object v0
.end method

.method public getProjectAudioFadeInTime()I
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    return v0
.end method

.method public getProjectAudioFadeOutTime()I
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    return v0
.end method

.method public getProjectTime2ClipTimePosition(II)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1603
    .line 1607
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1630
    :cond_0
    :goto_0
    return v1

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v2

    .line 1612
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v0

    .line 1613
    if-gt v2, p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1616
    sub-int v1, p2, v2

    .line 1617
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v2

    .line 1619
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v0

    .line 1620
    const/16 v3, 0x64

    if-eq v0, v3, :cond_3

    .line 1621
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    .line 1622
    const/16 v0, 0x19

    .line 1623
    div-int/lit8 v1, v1, 0x2

    .line 1625
    :cond_2
    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1627
    :cond_3
    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getProjectVolume()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    return v0
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1841
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;-><init>()V

    .line 1842
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mProjectVolume:I

    .line 1843
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mManualVolCtl:I

    .line 1844
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mAudioFadeInTime:I

    .line 1845
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mAudioFadeOutTime:I

    .line 1847
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mOpeningTitle:Ljava/lang/String;

    .line 1848
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mEndingTitle:Ljava/lang/String;

    .line 1850
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMVolumeScale:F

    .line 1854
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mUseThemeMusic2BGM:Z

    .line 1855
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mLoopBGM:Z

    .line 1856
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mStartTimeBGM:I

    .line 1857
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-nez v0, :cond_2

    .line 1858
    iput-object v4, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    .line 1862
    :goto_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimStartTime:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMTrimStartTime:I

    .line 1863
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBGMTrimEndTime:I

    .line 1869
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    iput v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTemplateApplyMode:I

    .line 1870
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    iput-boolean v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTemplateOverlappedTransition:Z

    .line 1874
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1875
    iput-object v4, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    .line 1884
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1885
    iput-object v4, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSecondaryItems:Ljava/util/List;

    .line 1894
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1895
    iput-object v4, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTopEffectInfo:Ljava/util/List;

    .line 1900
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1901
    iput-object v4, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSubEffectInfo:Ljava/util/List;

    .line 1906
    :goto_2
    return-object v1

    .line 1860
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    move-result-object v0

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    goto :goto_0

    .line 1877
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    .line 1878
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1879
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isMotionTrackedVideo()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1880
    iget-object v3, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mPrimaryItems:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexClipOf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1887
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSecondaryItems:Ljava/util/List;

    .line 1888
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 1889
    iget-object v3, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSecondaryItems:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioItemOf;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1897
    :cond_6
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mTopEffectInfo:Ljava/util/List;

    goto :goto_1

    .line 1903
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSubEffectInfo:Ljava/util/List;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;->mSubEffectInfo:Ljava/util/List;

    goto :goto_2
.end method

.method public getSecondaryItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexClip;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemplageOverlappedTransitionMode()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    return v0
.end method

.method public getTemplateApplyMode()I
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    return v0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopDrawInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTopEffectInfo:Ljava/util/List;

    return-object v0
.end method

.method public getTotalClipCount(Z)I
    .locals 1

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTotalTime()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 850
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move v1, v0

    move v2, v0

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 855
    iget v3, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    if-ge v2, v3, :cond_0

    iget v2, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 852
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 861
    if-nez v1, :cond_3

    move v2, v0

    .line 865
    :cond_2
    :goto_1
    return v2

    .line 863
    :cond_3
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 864
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 865
    iget v2, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    goto :goto_1
.end method

.method public getTotalVisualClipCount()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 312
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 314
    :goto_0
    if-ge v3, v4, :cond_2

    .line 315
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 316
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 317
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getTrimCount()I

    move-result v0

    .line 318
    if-nez v0, :cond_0

    move v0, v1

    .line 319
    :cond_0
    add-int/2addr v0, v2

    .line 314
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 321
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 324
    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public getTransitionDurationTimeGuideLine(II)[I
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 1456
    const/16 v1, 0x1f4

    .line 1457
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTransitionTimeGuideLine(II)I

    move-result v2

    .line 1458
    if-le v1, v2, :cond_0

    .line 1459
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1461
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 1459
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public indexOf(Lcom/nexstreaming/nexeditorsdk/nexClip;)I
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 684
    return v0
.end method

.method public makeKineMasterIntent()Landroid/content/Intent;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1691
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1692
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexProject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] make intent start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    new-instance v12, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    invoke-direct {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;-><init>()V

    .line 1694
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1695
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1696
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1698
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 1699
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 1701
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1703
    :pswitch_1
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->isSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->c()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    move-result-object v0

    .line 1705
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSolidColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->a(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    move-result-object v0

    .line 1706
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getImageClipDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1707
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1708
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1709
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1710
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1711
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getColorEffectID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1712
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1713
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1714
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1715
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVignetteEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;

    .line 1716
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$e;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    goto/16 :goto_0

    .line 1718
    :cond_0
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->b()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    move-result-object v0

    .line 1719
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v8, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    .line 1720
    invoke-virtual/range {v0 .. v8}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a(FFFFFFFF)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    move-result-object v0

    .line 1721
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getImageClipDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1722
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1723
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1724
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1725
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1726
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getColorEffectID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1727
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1728
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1729
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1730
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVignetteEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;

    .line 1731
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    goto/16 :goto_0

    .line 1735
    :pswitch_2
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    move-result-object v0

    .line 1736
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    move-result-object v0

    .line 1737
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v8, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    .line 1738
    invoke-virtual/range {v0 .. v8}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->a(FFFFFFFF)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    move-result-object v0

    .line 1739
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->c(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    move-result-object v0

    .line 1740
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->a(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    move-result-object v0

    .line 1741
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->b(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    move-result-object v1

    .line 1742
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    :goto_1
    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1743
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1744
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1745
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1746
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1747
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getColorEffectID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1748
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1749
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1750
    invoke-virtual {v9, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1751
    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVignetteEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;

    .line 1752
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$g;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    goto/16 :goto_0

    :cond_1
    move v0, v11

    .line 1742
    goto :goto_1

    .line 1758
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    .line 1759
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->d()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1760
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1761
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getStartTime()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->c(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1762
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getEndTime()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->d(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1763
    invoke-virtual {v1, v11}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->b(Z)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1764
    invoke-virtual {v1, v11}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a(Z)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1765
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getStartTrimTime()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1766
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getEndTrimTime()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->b(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v3

    .line 1767
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getAudioOnOff()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v10

    :goto_3
    invoke-virtual {v3, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->c(Z)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v1

    .line 1768
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->getClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipVolume()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->e(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    .line 1769
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    goto :goto_2

    :cond_3
    move v1, v11

    .line 1767
    goto :goto_3

    .line 1772
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_5

    .line 1773
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->d()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1774
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 1775
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->c(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    .line 1776
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->d(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    .line 1777
    invoke-virtual {v0, v10}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->b(Z)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 1778
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a(Z)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimStartTime:I

    .line 1779
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    .line 1780
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->b(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    .line 1781
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getBGMMasterVolumeScale()F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->e(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;

    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$a;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    .line 1786
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1787
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v1

    instance-of v1, v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;

    if-eqz v1, :cond_6

    .line 1788
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getOverlayImage()Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;

    .line 1790
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getPositionX()I

    move-result v3

    mul-int/lit16 v3, v3, 0x500

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    .line 1791
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getPositionY()I

    move-result v4

    mul-int/lit16 v4, v4, 0x2d0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    .line 1806
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->e()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1807
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->d(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1808
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->a(F)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1809
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->e(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1810
    invoke-virtual {v1, v11}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getGlowColor(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->g(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1811
    invoke-virtual {v1, v11}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getOutlineColor(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->h(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1812
    invoke-virtual {v1, v11}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getShadowColor(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->f(I)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v5

    .line 1813
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getFontId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->e(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    move-result-object v1

    .line 1814
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTime()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1815
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTime()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1816
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;

    move-result-object v1

    const/4 v5, 0x0

    .line 1817
    invoke-virtual {v1, v5}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;->a(F)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;

    move-result-object v1

    int-to-float v3, v3

    int-to-float v4, v4

    .line 1818
    invoke-virtual {v1, v3, v4}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;->a(FF)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;

    move-result-object v1

    .line 1819
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getAlpha()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;->c(F)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;

    move-result-object v1

    .line 1820
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotate()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;->b(F)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;

    move-result-object v1

    .line 1821
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getScaledX()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;->d(F)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;

    move-result-object v1

    .line 1822
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1823
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getLayerExpression()Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1824
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getLayerExpressionDuration()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1825
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getLayerExpression()Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1826
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getLayerExpressionDuration()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1827
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getLayerExpression()Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterExpression;->getNames(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;

    .line 1828
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$f;->b()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    goto/16 :goto_4

    .line 1832
    :cond_7
    invoke-virtual {v12}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;->f()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public move(ILcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 699
    if-gez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    if-eq p1, v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 709
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(Lcom/nexstreaming/nexeditorsdk/nexClip;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 731
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->isPrimaryItem(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    move-result v0

    .line 732
    if-gez v0, :cond_0

    move v2, v0

    .line 748
    :goto_0
    return v2

    .line 736
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 737
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 746
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAttachmentState(ZLcom/nexstreaming/nexeditorsdk/b;)V

    .line 747
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 739
    :goto_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexAudioItem;->mClip:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-ne v0, p1, :cond_3

    .line 741
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mSecondaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 739
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public removeOverlay(I)Z
    .locals 4

    .prologue
    .line 1272
    const/4 v1, 0x0

    .line 1273
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1274
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1275
    const/4 v1, 0x1

    .line 1276
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOverlayItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 1282
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public saveToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1916
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    .line 1917
    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;

    invoke-direct {v1}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;-><init>()V

    .line 1918
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    move-result-object v2

    iput-object v2, v1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat;->project:Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexProjectOf;

    .line 1919
    invoke-virtual {v0, v1}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBGMMasterVolumeScale(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 811
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 812
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    .line 818
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 819
    return-void

    .line 813
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 814
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    goto :goto_0

    .line 816
    :cond_1
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMVolumeScale:F

    goto :goto_0
.end method

.method public setBackgroundConfig(IZZ)V
    .locals 1

    .prologue
    .line 605
    iput-boolean p2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mUseThemeMusic2BGM:Z

    .line 606
    iput-boolean p3, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLoopBGM:Z

    .line 607
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mStartTimeBGM:I

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 609
    return-void
.end method

.method public setBackgroundMusicPath(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 546
    if-nez p1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v1, :cond_0

    .line 548
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 550
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 561
    :goto_0
    return v0

    .line 553
    :cond_1
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_2

    .line 555
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 556
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBackGroundMusic:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 557
    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    goto :goto_0

    .line 561
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundTrim(II)V
    .locals 1

    .prologue
    .line 618
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimStartTime:I

    .line 619
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mBGMTrimEndTime:I

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 621
    return-void
.end method

.method public setLetterboxEffect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mLetterbox:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setManualVolumeControl(I)V
    .locals 0

    .prologue
    .line 1135
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mManualVolCtl:I

    .line 1136
    return-void
.end method

.method public setProjectAudioFadeInTime(I)V
    .locals 1

    .prologue
    .line 1107
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeInTime:I

    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 1109
    return-void
.end method

.method public setProjectAudioFadeOutTime(I)V
    .locals 1

    .prologue
    .line 1161
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mAudioFadeOutTime:I

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 1163
    return-void
.end method

.method public setProjectVolume(I)V
    .locals 0

    .prologue
    .line 1117
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mProjectVolume:I

    .line 1118
    return-void
.end method

.method public setTemplageOverlappedTransitionMode(Z)V
    .locals 0

    .prologue
    .line 915
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateOverlappedTransition:Z

    .line 916
    return-void
.end method

.method public setTemplateApplyMode(I)V
    .locals 0

    .prologue
    .line 878
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mTemplateApplyMode:I

    .line 879
    return-void
.end method

.method public setThemeId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEmptyTheme:Z

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mThemeId:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mOpeningTitle:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mEndingTitle:Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateTimeLine(Z)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mNeedLoadList:Z

    .line 190
    return-void
.end method

.method public swap(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 715
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 716
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mPrimaryItems:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_0
.end method

.method public updateProject()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 930
    invoke-virtual {p0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v7

    .line 932
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mClipTimeUpdated:Z

    if-nez v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v2

    .line 936
    :cond_1
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexProject;->mClipTimeUpdated:Z

    .line 938
    if-eqz v7, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTemplateApplyMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v2, v4

    .line 943
    goto :goto_0

    :cond_2
    move v5, v2

    move v3, v2

    move v0, v2

    move v1, v2

    .line 955
    :goto_1
    if-ge v5, v7, :cond_7

    .line 956
    invoke-virtual {p0, v5, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    .line 957
    iput v1, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 959
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 972
    :goto_2
    :pswitch_0
    add-int v8, v1, v0

    .line 974
    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getType()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 984
    :goto_3
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTemplateApplyMode()I

    move-result v9

    if-ne v9, v10, :cond_6

    .line 985
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getShowStartTime()I

    move-result v3

    iput v3, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectStartTime:I

    .line 986
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect()Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->getShowEndTime()I

    move-result v3

    iput v3, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectEndTime:I

    .line 987
    sub-int v3, v8, v1

    .line 988
    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v9

    add-int/2addr v3, v9

    .line 1001
    :goto_4
    iput v8, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 1002
    sub-int v6, v8, v1

    .line 955
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v6

    goto :goto_1

    .line 961
    :pswitch_1
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getImageClipDuration()I

    move-result v0

    goto :goto_2

    .line 964
    :pswitch_2
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateOverlappedTransition()Z

    move-result v0

    if-nez v0, :cond_3

    .line 965
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getDuration()I

    move-result v0

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect()Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_2

    .line 968
    :cond_3
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getDuration()I

    move-result v0

    goto :goto_2

    .line 977
    :cond_4
    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOverlap()I

    move-result v1

    if-eqz v1, :cond_5

    .line 978
    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getOverlap()I

    move-result v9

    div-int/2addr v1, v9

    goto :goto_3

    :cond_5
    move v1, v2

    .line 980
    goto :goto_3

    .line 993
    :cond_6
    iput v3, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectStartTime:I

    .line 994
    sub-int v3, v8, v1

    .line 996
    iput v3, v6, Lcom/nexstreaming/nexeditorsdk/nexClip;->mTitleEffectEndTime:I

    .line 997
    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->getDuration()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_4

    .line 1005
    :cond_7
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTemplateApplyMode()I

    move-result v0

    if-ne v0, v10, :cond_9

    move v0, v2

    .line 1009
    :goto_5
    if-ge v2, v7, :cond_9

    .line 1010
    invoke-virtual {p0, v2, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 1012
    if-nez v1, :cond_8

    .line 1013
    add-int/lit8 v2, v2, 0x1

    .line 1014
    goto :goto_5

    .line 1017
    :cond_8
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastClipIndexWithEffectID(II)I

    move-result v3

    .line 1019
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTemplateEffectID()I

    move-result v1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->adjustmentEffectTime(IIII)I

    move-result v0

    .line 1021
    add-int/lit8 v2, v3, 0x1

    .line 1022
    goto :goto_5

    :cond_9
    move v2, v4

    .line 1024
    goto/16 :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
