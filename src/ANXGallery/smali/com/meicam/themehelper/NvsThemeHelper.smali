.class public Lcom/meicam/themehelper/NvsThemeHelper;
.super Ljava/lang/Object;
.source "NvsThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT1_SIZE:I = 0x47

.field private static final DEFAULT_FONT2_SIZE:I = 0x21

.field private static final DEFAULT_FONT_COLOR:I = -0x1

.field private static final FONT_MAX_LENGTH:Ljava/lang/String; = "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

.field private static final NVS_MAX_IMAGE_FILE_COUNT:I = 0x14

.field private static final NVS_MAX_TIME_LINE_LENGTH:J = 0x55d4a80L

.field private static final NVS_MIN_IMAGE_FILE_COUNT:I = 0x3

.field private static final NVS_USE_ALL_PHOTO:I = -0x2

.field private static final NVS_USE_CURRENT_DURATION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NvsThemeHelper"

.field public static m_timelineRatio:F

.field public static rand:Ljava/util/Random;


# instance fields
.field private clipMaxLen:J

.field private coverEndROI:Landroid/graphics/RectF;

.field private coverStartROI:Landroid/graphics/RectF;

.field private mMusicFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicFileDesc;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeAssetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

.field private m_cafStickerId:Ljava/lang/StringBuilder;

.field private m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

.field private m_caption1Text:Ljava/lang/String;

.field private m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

.field private m_caption2Text:Ljava/lang/String;

.field private m_captionBitmapPath1:Ljava/lang/String;

.field private m_captionBitmapPath2:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_defaultRhythm10sPath:Ljava/lang/String;

.field private m_defaultRhythmPath:Ljava/lang/String;

.field private m_fxTransClipCount:I

.field private m_inputIamgeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;"
        }
    .end annotation
.end field

.field private m_is10sMode:Z

.field private m_maxTotalTime:J

.field private m_musicVolumeGain:F

.field private m_selectedExtMusicIdx:I

.field private m_selectedLocalMusic:Ljava/lang/String;

.field private m_selectedLocalMusicEnd:J

.field private m_selectedLocalMusicStart:J

.field private m_selectedMusicType:I

.field private m_showCaption:Z

.field private m_stickerId1:Ljava/lang/String;

.field private m_stickerId2:Ljava/lang/String;

.field private m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field private m_themeAssetID:Ljava/lang/String;

.field private m_timeline:Lcom/meicam/sdk/NvsTimeline;

.field private seed:J

.field private timeBase:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/meicam/themehelper/NvsThemeHelper;->rand:Ljava/util/Random;

    .line 112
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 74
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->seed:J

    .line 76
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    .line 77
    const-wide/16 v0, 0xa

    iget-wide v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->clipMaxLen:J

    .line 80
    iput-boolean v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 81
    iput-boolean v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    .line 86
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 87
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 88
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    .line 100
    iput v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 102
    iput v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 103
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 104
    iput-wide v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 105
    iput-wide v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 107
    const-wide/32 v0, 0x55d4a80

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_maxTotalTime:J

    .line 109
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverStartROI:Landroid/graphics/RectF;

    .line 110
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverEndROI:Landroid/graphics/RectF;

    .line 113
    iput v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    .line 2598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    .line 2599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    return-void
.end method

.method private addCaption(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 21
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    if-eqz v3, :cond_6

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1628
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1635
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1636
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v19, "file1":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1638
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 1641
    .end local v19    # "file1":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1642
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v20, "file2":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1644
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1648
    .end local v20    # "file2":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId1:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId2:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 1649
    :cond_4
    const-string v3, "meicam"

    const-string v4, "m_stickerId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_5
    :goto_1
    return-void

    .line 1630
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 1631
    const-wide/16 v4, 0x0

    const-wide v6, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v10, v10

    mul-double/2addr v6, v10

    double-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/meicam/sdk/NvsTimeline;->addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    goto/16 :goto_0

    .line 1653
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    if-eqz v3, :cond_5

    .line 1656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1657
    .local v8, "sticker1ID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1659
    .local v14, "sticker2ID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    const/16 v4, 0x47

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->manageStringLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 1661
    .local v17, "caption_text1_manage":Ljava/lang/String;
    const/16 v3, 0x47

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->createCaptionBitmap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1663
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v2, "bitmap_file1":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1665
    const-wide/16 v4, 0x0

    const-wide v6, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v10, v10

    mul-double/2addr v6, v10

    double-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/meicam/sdk/NvsTimeline;->addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1679
    .end local v2    # "bitmap_file1":Ljava/io/File;
    .end local v17    # "caption_text1_manage":Ljava/lang/String;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    const/16 v4, 0x21

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->manageString2Length(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1681
    .local v18, "caption_text2_manage":Ljava/lang/String;
    const/16 v3, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->createCaptionBitmap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    .line 1682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1683
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v16, "bitmap_file2":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1685
    const-wide/16 v10, 0x0

    const-wide v4, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v12, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Lcom/meicam/sdk/NvsTimeline;->addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    goto/16 :goto_1

    .line 1672
    .end local v16    # "bitmap_file2":Ljava/io/File;
    .end local v18    # "caption_text2_manage":Ljava/lang/String;
    .restart local v2    # "bitmap_file1":Ljava/io/File;
    .restart local v17    # "caption_text1_manage":Ljava/lang/String;
    :cond_9
    const-string v3, "meicam"

    const-string v4, "bitmap_file1 not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1675
    .end local v2    # "bitmap_file1":Ljava/io/File;
    :cond_a
    const-string v3, "meicam"

    const-string v4, "caption1_path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1692
    .end local v17    # "caption_text1_manage":Ljava/lang/String;
    .restart local v16    # "bitmap_file2":Ljava/io/File;
    .restart local v18    # "caption_text2_manage":Ljava/lang/String;
    :cond_b
    const-string v3, "meicam"

    const-string v4, "bitmap_file2 not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1695
    .end local v16    # "bitmap_file2":Ljava/io/File;
    :cond_c
    const-string v3, "meicam"

    const-string v4, "caption2_path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private addEndingFx(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Z)V
    .locals 6
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p3, "is10sMode"    # Z

    .prologue
    .line 1921
    if-eqz p3, :cond_0

    .line 1922
    iget-object v0, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId10s:Ljava/lang/String;

    iget-object v1, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxImgPath:Ljava/lang/String;

    iget-wide v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFx10sLen:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsTimeline;->setTimelineEndingFilter(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1928
    :goto_0
    return-void

    .line 1925
    :cond_0
    iget-object v0, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId:Ljava/lang/String;

    iget-object v1, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxImgPath:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    iget-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsTimeline;->setTimelineEndingFilter(Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private addMusicFile(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "musicPath"    # Ljava/lang/String;
    .param p3, "blocalFile"    # Z

    .prologue
    .line 2482
    if-nez p2, :cond_1

    .line 2528
    :cond_0
    return-void

    .line 2484
    :cond_1
    const-string v3, ""

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_0

    .line 2487
    const-string/jumbo v3, "theme helper"

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v9

    .line 2489
    .local v9, "fileInfo":Lcom/meicam/sdk/NvsAVFileInfo;
    if-eqz v9, :cond_0

    .line 2492
    invoke-virtual {v9}, Lcom/meicam/sdk/NvsAVFileInfo;->getAudioStreamCount()I

    move-result v3

    const/4 v6, 0x1

    if-lt v3, v6, :cond_0

    .line 2495
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v12

    .line 2496
    .local v12, "currentLength":J
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/meicam/sdk/NvsAVFileInfo;->getAudioStreamDuration(I)J

    move-result-wide v16

    .line 2497
    .local v16, "fileDuration":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    div-long v6, v16, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    mul-long v16, v6, v20

    .line 2498
    const-wide/16 v4, 0x0

    .line 2499
    .local v4, "startTime":J
    move-wide/from16 v10, v16

    .line 2500
    .local v10, "clipDuration":J
    if-eqz p3, :cond_3

    .line 2501
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_3

    .line 2502
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 2503
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    div-long v6, v4, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    mul-long v4, v6, v20

    .line 2504
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 2505
    .local v14, "endTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    div-long v6, v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    mul-long v14, v6, v20

    .line 2506
    sub-long v6, v14, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x2

    mul-long v20, v20, v22

    cmp-long v3, v6, v20

    if-lez v3, :cond_2

    .line 2507
    cmp-long v3, v14, v16

    if-lez v3, :cond_4

    .line 2508
    sub-long v10, v16, v4

    .line 2514
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v20, 0x2

    mul-long v6, v6, v20

    cmp-long v3, v10, v6

    if-gez v3, :cond_3

    .line 2515
    const-wide/16 v4, 0x0

    .line 2516
    move-wide/from16 v10, v16

    .line 2521
    .end local v14    # "endTime":J
    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 2523
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v2

    .line 2524
    .local v2, "aTrack":Lcom/meicam/sdk/NvsAudioTrack;
    add-long v6, v12, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    sub-long v6, v6, v20

    div-long/2addr v6, v10

    long-to-int v8, v6

    .line 2525
    .local v8, "clipCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_0

    .line 2526
    add-long v6, v4, v10

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsAudioTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsAudioClip;

    .line 2525
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 2510
    .end local v2    # "aTrack":Lcom/meicam/sdk/NvsAudioTrack;
    .end local v8    # "clipCount":I
    .end local v18    # "i":I
    .restart local v14    # "endTime":J
    :cond_4
    sub-long v10, v14, v4

    goto :goto_0
.end method

.method private addToFxList(Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "themeasset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "transName"    # Ljava/lang/String;

    .prologue
    .line 2844
    const-string v0, "9v16"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2845
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2846
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2905
    :cond_0
    :goto_0
    return-void

    .line 2847
    :cond_1
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2848
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2849
    :cond_2
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2850
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2851
    :cond_3
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2852
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2854
    :cond_4
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2855
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2856
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2859
    :cond_5
    const-string v0, "9v18"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2860
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2861
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2862
    :cond_6
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2863
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2864
    :cond_7
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2865
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2866
    :cond_8
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2867
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2869
    :cond_9
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2871
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2874
    :cond_a
    const-string v0, "9v19"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2875
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2876
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2877
    :cond_b
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2878
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2879
    :cond_c
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2880
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2881
    :cond_d
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2882
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2884
    :cond_e
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2885
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2887
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2889
    :cond_f
    const-string v0, "9vx73"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2890
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2891
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2892
    :cond_10
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2893
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2894
    :cond_11
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2895
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2896
    :cond_12
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2897
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2899
    :cond_13
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2901
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private applyFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JZI)J
    .locals 33
    .param p1, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p3, "fxTransXml"    # Ljava/lang/String;
    .param p4, "trans"    # Ljava/lang/String;
    .param p5, "transLen"    # J
    .param p7, "isDownloadTheme"    # Z
    .param p8, "transOffset"    # I

    .prologue
    .line 2239
    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2240
    const-wide/16 v6, 0x0

    .line 2325
    :goto_0
    return-wide v6

    .line 2242
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v15

    .line 2243
    .local v15, "clip0":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v16

    .line 2244
    .local v16, "clip1":Lcom/meicam/sdk/NvsVideoClip;
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2245
    .local v5, "file0":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v19

    .line 2246
    .local v19, "file1":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v24, v6, v8

    .line 2247
    .local v24, "len0":J
    invoke-virtual/range {v16 .. v16}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v26, v6, v8

    .line 2248
    .local v26, "len1":J
    const-string v4, "fullscreenMode"

    invoke-virtual {v15, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2249
    .local v23, "mark":Ljava/lang/String;
    const-string v4, "indexOfShowList"

    invoke-virtual {v15, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2250
    .local v21, "idxOfShowList0":I
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2251
    .local v22, "idxOfShowList1":I
    const/16 v30, 0x0

    .line 2252
    .local v30, "preTransName":Ljava/lang/String;
    add-int/lit8 v4, p2, -0x1

    if-ltz v4, :cond_1

    .line 2253
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getTransitionBySourceClipIndex(I)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v31

    .line 2254
    .local v31, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    if-eqz v31, :cond_1

    .line 2255
    invoke-virtual/range {v31 .. v31}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionType()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {v31 .. v31}, Lcom/meicam/sdk/NvsVideoTransition;->getBuiltinVideoTransitionName()Ljava/lang/String;

    move-result-object v30

    .line 2258
    .end local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_1
    :goto_1
    const-wide/16 v28, 0x0

    .line 2259
    .local v28, "offset":J
    if-eqz v30, :cond_2

    .line 2260
    move/from16 v0, p8

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 2262
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2263
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2264
    const-wide/16 v6, 0x0

    add-long v8, v24, v26

    move-object/from16 v4, p1

    move/from16 v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsVideoTrack;->insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v15

    .line 2265
    const-string v4, "fullscreenMode"

    move-object/from16 v0, v23

    invoke-virtual {v15, v4, v0}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2266
    const-string v4, "hasFxTrans"

    const-string/jumbo v6, "true"

    invoke-virtual {v15, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2267
    const-string v4, "fxFilePath"

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2268
    const-string v4, "fxInpoint"

    const-wide/16 v6, 0x3e8

    div-long v6, v24, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2270
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getIndex()I

    move-result v17

    .line 2271
    .local v17, "clipIdx":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2272
    add-int/lit8 v4, v17, -0x1

    if-ltz v4, :cond_3

    .line 2273
    if-eqz v30, :cond_6

    .line 2274
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_5

    .line 2275
    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2282
    :cond_3
    :goto_2
    const-string v4, "Storyboard"

    invoke-virtual {v15, v4}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v20

    .line 2284
    .local v20, "fx":Lcom/meicam/sdk/NvsVideoFx;
    move/from16 v0, p8

    int-to-long v6, v0

    sub-long v6, v6, v28

    sub-long v6, v24, v6

    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    .line 2285
    .local v10, "fxStartTime":J
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    add-long/2addr v6, v8

    move/from16 v0, p8

    int-to-long v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v12, v6, v10

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, v19

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/meicam/themehelper/NvsThemeHelper;->changeFxDesc(Ljava/lang/String;Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object v18

    .line 2286
    .local v18, "desc":Ljava/lang/String;
    if-nez v18, :cond_7

    .line 2288
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2255
    .end local v10    # "fxStartTime":J
    .end local v17    # "clipIdx":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v20    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    .end local v28    # "offset":J
    .restart local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionPackageId()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1

    .line 2277
    .end local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    .restart local v17    # "clipIdx":I
    .restart local v28    # "offset":J
    :cond_5
    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto :goto_2

    .line 2279
    :cond_6
    add-int/lit8 v4, v17, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto :goto_2

    .line 2291
    .restart local v10    # "fxStartTime":J
    .restart local v18    # "desc":Ljava/lang/String;
    .restart local v20    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    :cond_7
    const-string v4, "hori"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeHoriROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    .line 2293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v15}, Lcom/meicam/themehelper/Utils;->changeHoriROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    .line 2302
    :goto_3
    const-string v4, "Description String"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    move-object/from16 v32, p3

    .line 2304
    .local v32, "xmlPath":Ljava/lang/String;
    if-nez p7, :cond_8

    .line 2305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets:/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2306
    :cond_8
    const/4 v4, 0x0

    const-string v6, "/"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 2307
    const-string v4, "Resource Dir"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2310
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2311
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2323
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    .line 2325
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v6

    add-long v6, v6, v24

    goto/16 :goto_0

    .line 2294
    .end local v32    # "xmlPath":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "vert"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeVertROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v15}, Lcom/meicam/themehelper/Utils;->changeVertROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 2298
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0}, Lcom/meicam/themehelper/Utils;->changeROI(FLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 2314
    .restart local v32    # "xmlPath":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_d

    .line 2315
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v31

    .line 2318
    .restart local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :goto_5
    if-eqz v31, :cond_9

    .line 2319
    move-wide/from16 v0, p5

    long-to-float v4, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto/16 :goto_4

    .line 2317
    .end local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v31

    .restart local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    goto :goto_5
.end method

.method private applyFxTransV2(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V
    .locals 17
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p3, "fxTransXml"    # Ljava/lang/String;
    .param p4, "trans"    # Ljava/lang/String;
    .param p5, "transLen"    # J
    .param p7, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    .line 2052
    move-object/from16 v0, p7

    iget-boolean v10, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    move-object/from16 v0, p7

    iget v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transOffset:I

    mul-int/lit16 v11, v3, 0x3e8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v11}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JZI)J

    move-result-wide v12

    .line 2053
    .local v12, "blurFxInpoint":J
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 2054
    const/4 v15, 0x0

    .line 2055
    .local v15, "useBlur":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurWidthFxTransList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_0

    .line 2056
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurWidthFxTransList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2057
    const/4 v15, 0x1

    .line 2061
    :cond_0
    if-eqz v15, :cond_1

    .line 2062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-object/from16 v0, p7

    iget-object v8, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/meicam/sdk/NvsTimeline;->addPackagedTimelineVideoFx(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v2

    .line 2063
    .local v2, "fx":Lcom/meicam/sdk/NvsTimelineVideoFx;
    const-string v3, "No Background"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/meicam/sdk/NvsTimelineVideoFx;->setBooleanVal(Ljava/lang/String;Z)V

    .line 2066
    .end local v2    # "fx":Lcom/meicam/sdk/NvsTimelineVideoFx;
    .end local v14    # "i":I
    .end local v15    # "useBlur":Z
    :cond_1
    return-void

    .line 2055
    .restart local v14    # "i":I
    .restart local v15    # "useBlur":Z
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0
.end method

.method private applyFxTransV3(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V
    .locals 43
    .param p1, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p3, "fxTransXml"    # Ljava/lang/String;
    .param p4, "trans"    # Ljava/lang/String;
    .param p5, "transLen"    # J
    .param p7, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    .line 2069
    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    add-int/lit8 v4, p2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 2075
    invoke-virtual/range {p1 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v17

    .line 2076
    .local v17, "clip0":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v18

    .line 2077
    .local v18, "clip1":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v19

    .line 2078
    .local v19, "clip2":Lcom/meicam/sdk/NvsVideoClip;
    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2079
    .local v5, "file0":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v22

    .line 2080
    .local v22, "file1":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v23

    .line 2081
    .local v23, "file2":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v28, v6, v8

    .line 2082
    .local v28, "len0":J
    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v30, v6, v8

    .line 2083
    .local v30, "len1":J
    invoke-virtual/range {v19 .. v19}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v32, v6, v8

    .line 2084
    .local v32, "len2":J
    const-string v4, "fullscreenMode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2085
    .local v34, "mark":Ljava/lang/String;
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 2086
    .local v25, "idxOfShowList0":I
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 2087
    .local v26, "idxOfShowList1":I
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 2088
    .local v27, "idxOfShowList2":I
    const/16 v35, 0x0

    .line 2089
    .local v35, "preTransName":Ljava/lang/String;
    add-int/lit8 v4, p2, -0x1

    if-ltz v4, :cond_2

    .line 2090
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getTransitionBySourceClipIndex(I)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v40

    .line 2091
    .local v40, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    if-eqz v40, :cond_2

    .line 2092
    invoke-virtual/range {v40 .. v40}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionType()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v40 .. v40}, Lcom/meicam/sdk/NvsVideoTransition;->getBuiltinVideoTransitionName()Ljava/lang/String;

    move-result-object v35

    .line 2094
    .end local v40    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_2
    :goto_1
    const-wide/16 v36, 0x0

    .line 2095
    .local v36, "offset":J
    move-object/from16 v0, p7

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transOffset:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 2096
    .local v38, "transOffset":J
    if-eqz v35, :cond_3

    .line 2097
    move-wide/from16 v36, v38

    .line 2099
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2100
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2101
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2102
    const-wide/16 v6, 0x0

    add-long v8, v28, v30

    add-long v8, v8, v32

    move-object/from16 v4, p1

    move/from16 v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsVideoTrack;->insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v17

    .line 2103
    const-string v4, "fullscreenMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2104
    const-string v4, "hasFxTrans"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2105
    const-string v4, "fxFilePath"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2106
    const-string v4, "fxFileV3Path"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2107
    const-string v4, "fxInpoint"

    const-wide/16 v6, 0x3e8

    div-long v6, v28, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2108
    const-string v4, "fxV3Inpoint"

    const-wide/16 v6, 0x3e8

    div-long v6, v30, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2110
    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getIndex()I

    move-result v20

    .line 2111
    .local v20, "clipIdx":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2112
    add-int/lit8 v4, v20, -0x1

    if-ltz v4, :cond_4

    .line 2113
    if-eqz v35, :cond_9

    .line 2114
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_8

    .line 2115
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2122
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V

    .line 2124
    const-string v4, "Storyboard"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v24

    .line 2126
    .local v24, "fx":Lcom/meicam/sdk/NvsVideoFx;
    sub-long v6, v38, v36

    sub-long v6, v28, v6

    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    .line 2127
    .local v10, "fxStartTime":J
    const-wide/16 v6, 0x3e8

    div-long v6, v30, v6

    add-long v12, v10, v6

    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long v6, v6, v38

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v14, v6, v10

    move-object/from16 v0, p7

    iget-boolean v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    move/from16 v16, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-direct/range {v6 .. v16}, Lcom/meicam/themehelper/NvsThemeHelper;->changeFxDescV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZ)Ljava/lang/String;

    move-result-object v21

    .line 2128
    .local v21, "desc":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 2134
    const-string v4, "hori"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeHoriROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeHoriROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2145
    :goto_3
    const-string v4, "Description String"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    move-object/from16 v41, p3

    .line 2147
    .local v41, "xmlPath":Ljava/lang/String;
    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    if-nez v4, :cond_5

    .line 2148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets:/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 2149
    :cond_5
    const/4 v4, 0x0

    const-string v6, "/"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2150
    const-string v4, "Resource Dir"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-string v4, "Compact Preload Resource"

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoFx;->setBooleanVal(Ljava/lang/String;Z)V

    .line 2153
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2154
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2155
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2167
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    goto/16 :goto_0

    .line 2092
    .end local v10    # "fxStartTime":J
    .end local v20    # "clipIdx":I
    .end local v21    # "desc":Ljava/lang/String;
    .end local v24    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    .end local v36    # "offset":J
    .end local v38    # "transOffset":J
    .end local v41    # "xmlPath":Ljava/lang/String;
    .restart local v40    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_7
    invoke-virtual/range {v40 .. v40}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionPackageId()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_1

    .line 2117
    .end local v40    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    .restart local v20    # "clipIdx":I
    .restart local v36    # "offset":J
    .restart local v38    # "transOffset":J
    :cond_8
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto/16 :goto_2

    .line 2119
    :cond_9
    add-int/lit8 v4, v20, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto/16 :goto_2

    .line 2137
    .restart local v10    # "fxStartTime":J
    .restart local v21    # "desc":Ljava/lang/String;
    .restart local v24    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    :cond_a
    const-string/jumbo v4, "vert"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeVertROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeVertROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 2141
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 2158
    .restart local v41    # "xmlPath":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_d

    .line 2159
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v40

    .line 2162
    .restart local v40    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :goto_5
    if-eqz v40, :cond_6

    .line 2163
    move-wide/from16 v0, p5

    long-to-float v4, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto/16 :goto_4

    .line 2161
    .end local v40    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v40

    .restart local v40    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    goto :goto_5
.end method

.method private buildVideoTrack(Ljava/util/ArrayList;Lcom/meicam/sdk/NvsVideoTrack;Ljava/util/ArrayList;JJZ)Ljava/util/Map;
    .locals 20
    .param p2, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p4, "musicLen"    # J
    .param p6, "newDuration"    # J
    .param p8, "is10sMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;JJZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1864
    .local p1, "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    .local p3, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    const/4 v14, 0x0

    .line 1865
    .local v14, "pointIndex":I
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1866
    .local v18, "transListInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 1867
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->clipMaxLen:J

    long-to-int v9, v2

    .line 1868
    .local v9, "clipDuration":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1869
    if-lez v12, :cond_9

    .line 1870
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v14, v2, :cond_1

    .line 1913
    .end local v9    # "clipDuration":I
    :cond_0
    return-object v18

    .line 1874
    .restart local v9    # "clipDuration":I
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1875
    .local v10, "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    add-int/lit8 v2, v14, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1876
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1877
    .local v13, "next":Lcom/meicam/themehelper/NvsMusicPointDesc;
    iget v2, v13, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    iget v3, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    sub-int/2addr v2, v3

    mul-int/lit16 v9, v2, 0x3e8

    .line 1884
    .end local v13    # "next":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :goto_1
    if-gtz v9, :cond_4

    .line 1885
    add-int/lit8 v14, v14, 0x1

    .line 1866
    .end local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1879
    .restart local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_2
    move-wide/from16 v16, p4

    .line 1880
    .local v16, "totalLen":J
    if-eqz p8, :cond_3

    .line 1881
    const-wide/16 v2, 0xa

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    mul-long v16, v2, v4

    .line 1882
    :cond_3
    iget v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v2, v16, v2

    long-to-int v9, v2

    goto :goto_1

    .line 1889
    .end local v16    # "totalLen":J
    :cond_4
    iget-object v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1890
    :cond_5
    const/4 v15, 0x0

    .line 1891
    .local v15, "transIdx":I
    invoke-virtual/range {p2 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 1892
    invoke-virtual/range {p2 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .line 1893
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    .end local v15    # "transIdx":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 1902
    .end local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1903
    .local v11, "fileDesc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v3, v11, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    int-to-long v6, v9

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v8

    .line 1904
    .local v8, "clip":Lcom/meicam/sdk/NvsVideoClip;
    if-eqz v8, :cond_a

    .line 1905
    const-string v2, "indexOfShowList"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1906
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/meicam/themehelper/NvsThemeHelper;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V

    goto :goto_2

    .line 1897
    .end local v8    # "clip":Lcom/meicam/sdk/NvsVideoClip;
    .end local v11    # "fileDesc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1898
    .restart local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    iget v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v9, v2, 0x3e8

    goto :goto_3

    .line 1908
    .end local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .restart local v8    # "clip":Lcom/meicam/sdk/NvsVideoClip;
    .restart local v11    # "fileDesc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1909
    add-int/lit8 v12, v12, -0x1

    goto :goto_2
.end method

.method private changeFxDesc(Ljava/lang/String;Ljava/lang/String;JJZ)Ljava/lang/String;
    .locals 3
    .param p1, "fxTrans"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "fxLen"    # J
    .param p7, "isDownload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2329
    if-eqz p7, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    .line 2330
    .local v0, "fxDesc":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2335
    :goto_1
    return-object v2

    .line 2329
    .end local v0    # "fxDesc":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    goto :goto_0

    .line 2332
    .restart local v0    # "fxDesc":Ljava/lang/String;
    :cond_1
    const-string v1, "placeholder.jpg"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2333
    const-string/jumbo v1, "xiaomiStartTime"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2334
    const-string/jumbo v1, "xiaomiDurationTime"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2335
    goto :goto_1
.end method

.method private changeFxDescV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZ)Ljava/lang/String;
    .locals 4
    .param p1, "fxTrans"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileV3Path"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "startTime2"    # J
    .param p8, "fxLen"    # J
    .param p10, "isDownload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2339
    if-eqz p10, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    .line 2340
    .local v0, "fxDesc":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2349
    :goto_1
    return-object v2

    .line 2339
    .end local v0    # "fxDesc":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    goto :goto_0

    .line 2342
    .restart local v0    # "fxDesc":Ljava/lang/String;
    :cond_1
    const-string v1, "placeholder.jpg"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2343
    const-string v1, "picture.jpg"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2344
    const-string/jumbo v1, "xiaomiStartTime"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2345
    const-string v1, "pictureShowUp"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2346
    const-string/jumbo v1, "xiaomiDurationTime"

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2347
    const-string v1, "pictureLoop"

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2348
    const-string v1, "lastMove"

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2349
    goto :goto_1
.end method

.method private changeLocalMusic(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 999
    const/4 v0, -0x1

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 1000
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 1001
    iput-wide p2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 1002
    iput-wide p4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 1006
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    .line 1008
    return-void
.end method

.method private checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "curAssetId"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "assetType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2921
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v3

    .line 2934
    :cond_1
    :goto_0
    return v1

    .line 2923
    :cond_2
    const/4 v1, 0x0

    .line 2924
    .local v1, "needUpdate":Z
    if-eqz p1, :cond_1

    .line 2925
    iget-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v4, :cond_3

    .line 2926
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v4

    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 2927
    :cond_3
    iget-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v4, :cond_4

    move v1, v3

    .line 2928
    goto :goto_0

    .line 2929
    :cond_4
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersionFromAssetPackageFilePath(Ljava/lang/String;)I

    move-result v2

    .line 2930
    .local v2, "newVersion":I
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result v0

    .line 2931
    .local v0, "curVersion":I
    if-le v2, v0, :cond_1

    .line 2932
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cleanUpTimeLine(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 6
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1085
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->removeCurrentTheme()V

    .line 1086
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getFirstTimelineVideoFx()Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    .line 1087
    .local v0, "fx":Lcom/meicam/sdk/NvsTimelineVideoFx;
    :goto_0
    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsTimeline;->removeTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    goto :goto_0

    .line 1090
    :cond_0
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getFirstAnimatedSticker()Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v2

    .line 1091
    .local v2, "sticker":Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    :goto_1
    if-eqz v2, :cond_1

    .line 1092
    invoke-virtual {p1, v2}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v2

    goto :goto_1

    .line 1094
    :cond_1
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1095
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1096
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1098
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->videoTrackCount()I

    move-result v3

    .line 1099
    .local v3, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 1100
    invoke-virtual {p1, v1}, Lcom/meicam/sdk/NvsTimeline;->removeVideoTrack(I)Z

    .line 1099
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1102
    :cond_2
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->audioTrackCount()I

    move-result v3

    .line 1103
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 1104
    invoke-virtual {p1, v1}, Lcom/meicam/sdk/NvsTimeline;->removeAudioTrack(I)Z

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1106
    :cond_3
    invoke-virtual {p1, v5, v5}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 1107
    return-void
.end method

.method private createCaptionBitmap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "caption_text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    const/4 v7, 0x1

    .line 1704
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1705
    :cond_0
    const/4 v10, 0x0

    .line 1748
    :goto_0
    return-object v10

    .line 1729
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 1730
    .local v2, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1731
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1732
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1733
    int-to-float v1, p2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1734
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1735
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 1736
    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1738
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meicam/themehelper/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1741
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1742
    .local v9, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1743
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1746
    invoke-direct {p0, v9}, Lcom/meicam/themehelper/NvsThemeHelper;->saveBitmapToSD(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v10

    .line 1748
    .local v10, "png_path":Ljava/lang/String;
    goto :goto_0
.end method

.method private getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "isDownloadFile"    # Z

    .prologue
    .line 2938
    const/4 v2, 0x0

    .line 2940
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2945
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2946
    :cond_0
    const/4 v0, 0x0

    .line 2951
    :cond_1
    :goto_1
    return-object v0

    .line 2941
    :catch_0
    move-exception v1

    .line 2942
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2943
    const/4 v2, 0x0

    goto :goto_0

    .line 2948
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2949
    .local v0, "assetPath":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 2950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getClipCountInDuation(Ljava/util/ArrayList;J)I
    .locals 10
    .param p2, "newDuation"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1066
    .local v1, "needClipCount":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 1067
    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMinImgCount()I

    move-result v4

    .line 1080
    :goto_0
    return v4

    .line 1069
    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsMusicPointDesc;

    iget v4, v4, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 1070
    .local v2, "lastPoint":J
    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 1071
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1073
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1074
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsMusicPointDesc;

    iget v4, v4, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    add-long/2addr v6, p2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 1075
    add-int/lit8 v1, v0, 0x1

    :cond_2
    move v4, v1

    .line 1080
    goto :goto_0

    .line 1073
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getFxXml(ILcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Lcom/meicam/themehelper/NvsMusicPointDesc;)Ljava/lang/String;
    .locals 8
    .param p1, "transIdx"    # I
    .param p2, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p3, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p4, "pointDesc"    # Lcom/meicam/themehelper/NvsMusicPointDesc;

    .prologue
    .line 1304
    const-string v0, ""

    .line 1305
    .local v0, "fxTransXml":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v1, "fxTransXmlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1308
    const-string v4, ""

    .line 1356
    :goto_0
    return-object v4

    .line 1310
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;

    move-result-object v3

    .line 1311
    .local v3, "transType":Ljava/lang/String;
    const-string v4, "full"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1312
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 1313
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    .line 1349
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1350
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1351
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fxTransXml":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "fxTransXml":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    .line 1356
    goto :goto_0

    .line 1314
    .end local v2    # "j":I
    :cond_3
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 1315
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1316
    :cond_4
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 1317
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1319
    :cond_5
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1320
    :cond_6
    const-string v4, "half"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1321
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_7

    .line 1322
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1323
    :cond_7
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    .line 1324
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1325
    :cond_8
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_9

    .line 1326
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1328
    :cond_9
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1329
    :cond_a
    const-string v4, "hf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1330
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_b

    .line 1331
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1332
    :cond_b
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c

    .line 1333
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1334
    :cond_c
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_d

    .line 1335
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1337
    :cond_d
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1338
    :cond_e
    const-string v4, "fh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1339
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_f

    .line 1340
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1341
    :cond_f
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10

    .line 1342
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1343
    :cond_10
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_11

    .line 1344
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1346
    :cond_11
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1349
    .restart local v2    # "j":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private getLicFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 2602
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2603
    .local v1, "str":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 2604
    const/4 v2, 0x0

    .line 2606
    :goto_0
    return-object v2

    .line 2605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2606
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, ".lic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getMaxImgCount()I
    .locals 1

    .prologue
    .line 2963
    const/16 v0, 0x14

    .line 2968
    .local v0, "max":I
    return v0
.end method

.method private getMinImgCount()I
    .locals 3

    .prologue
    .line 2955
    const/4 v0, 0x3

    .line 2956
    .local v0, "min":I
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2957
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-boolean v1, v1, Lcom/meicam/themehelper/NvsImageFileDesc;->isCover:Z

    if-eqz v1, :cond_0

    .line 2958
    add-int/lit8 v0, v0, 0x1

    .line 2960
    :cond_0
    return v0
.end method

.method private getRebuildFileList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .param p3, "nNewCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    .local p2, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    const/16 v6, 0x14

    const/4 v5, 0x1

    .line 1361
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le p3, v4, :cond_0

    .line 1362
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 p3, v4, 0x1

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMaxImgCount()I

    move-result v4

    if-le p3, v4, :cond_1

    .line 1364
    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMaxImgCount()I

    move-result p3

    .line 1366
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v3, "usedFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v4, -0x1

    if-ne p3, v4, :cond_3

    .line 1368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1369
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1370
    .local v0, "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    if-eqz v4, :cond_2

    .line 1371
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v1    # "i":I
    :cond_3
    const/4 v4, -0x2

    if-ne p3, v4, :cond_4

    .line 1374
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1375
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1376
    .restart local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iput-boolean v5, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 1377
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1380
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1381
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1382
    .restart local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    if-lt v1, p3, :cond_5

    .line 1383
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 1380
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1386
    :cond_5
    iput-boolean v5, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 1387
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1393
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 1394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    .line 1396
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1398
    :cond_7
    move-object v3, v2

    .line 1400
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    :cond_8
    return-object v3
.end method

.method private getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2372
    .local p1, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2373
    const-string v2, ""

    .line 2389
    :cond_0
    :goto_0
    return-object v2

    .line 2375
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2376
    .local v1, "size":I
    invoke-direct {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->hasNullTrans(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2377
    mul-int/lit8 v1, v1, 0x2

    .line 2378
    :cond_2
    sget-object v4, Lcom/meicam/themehelper/NvsThemeHelper;->rand:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2379
    .local v3, "useIdx":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-ltz v3, :cond_4

    .line 2380
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2381
    .local v2, "transName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2383
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2384
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2389
    .end local v0    # "i":I
    .end local v2    # "transName":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method private getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2393
    .local p1, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "transFxNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    .local p4, "fxTransXmlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2396
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2442
    :goto_0
    return-object v1

    .line 2400
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int v2, v6, v7

    .line 2401
    .local v2, "size":I
    invoke-direct {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->hasNullTrans(Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2402
    mul-int/lit8 v2, v2, 0x2

    .line 2403
    :cond_1
    sget-object v6, Lcom/meicam/themehelper/NvsThemeHelper;->rand:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 2405
    .local v5, "useIdx":I
    if-gez v5, :cond_2

    .line 2406
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2409
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2410
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2411
    .local v4, "transName":Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 2413
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2414
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2412
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2419
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2422
    .end local v4    # "transName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 2423
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    if-ltz v5, :cond_9

    .line 2424
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2425
    .local v3, "transFxName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2426
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2429
    :cond_6
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2430
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 2431
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2432
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2433
    invoke-direct {p0, p1, p3}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransFollowFx(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2430
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2438
    .end local v0    # "i":I
    :cond_8
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2441
    .end local v3    # "transFxName":Ljava/lang/String;
    :cond_9
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getTransFollowFx(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2449
    .local p1, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .local v1, "transList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2451
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_0

    .line 2450
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2453
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2455
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2456
    const-string v4, ""

    .line 2468
    :goto_2
    return-object v4

    .line 2458
    :cond_2
    sget-object v4, Lcom/meicam/themehelper/NvsThemeHelper;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2459
    .local v3, "useIdx":I
    if-ltz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 2460
    :cond_3
    const-string v4, ""

    goto :goto_2

    .line 2462
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2463
    .local v2, "transName":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 2464
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2465
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2463
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2468
    :cond_6
    const-string v4, ""

    goto :goto_2
.end method

.method private getTransId(Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Ljava/lang/String;
    .locals 5
    .param p1, "transName"    # Ljava/lang/String;
    .param p2, "curThemeasset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    const/4 v3, 0x0

    .line 2908
    if-nez p2, :cond_1

    move-object v1, v3

    .line 2917
    :cond_0
    :goto_0
    return-object v1

    .line 2910
    :cond_1
    iget-object v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move-object v1, v3

    .line 2911
    goto :goto_0

    .line 2912
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2913
    iget-object v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2914
    .local v1, "trans":Ljava/lang/String;
    const-string v2, ".videotransition"

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2912
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "trans":Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 2917
    goto :goto_0
.end method

.method private getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;
    .locals 5
    .param p1, "transIdx"    # I
    .param p2, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;

    .prologue
    .line 2353
    invoke-virtual {p2, p1}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    .line 2354
    .local v0, "clip0":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p2, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    .line 2355
    .local v1, "clip1":Lcom/meicam/sdk/NvsVideoClip;
    const-string v4, "fullscreenMode"

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2356
    .local v2, "mode0":Ljava/lang/String;
    const-string v4, "fullscreenMode"

    invoke-virtual {v1, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2358
    .local v3, "mode1":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2359
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2360
    const-string v4, "full"

    .line 2367
    :goto_0
    return-object v4

    .line 2362
    :cond_0
    const-string v4, "fh"

    goto :goto_0

    .line 2364
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2365
    const-string v4, "hf"

    goto :goto_0

    .line 2367
    :cond_2
    const-string v4, "half"

    goto :goto_0
.end method

.method private hasNullTrans(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2473
    .local p1, "transList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2474
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2475
    const/4 v1, 0x1

    .line 2478
    :goto_1
    return v1

    .line 2473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2478
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "update"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2611
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v5, v7

    .line 2652
    :cond_1
    :goto_0
    return-object v5

    .line 2614
    :cond_2
    invoke-direct {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->getLicFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2616
    .local v2, "licFile":Ljava/lang/String;
    const/4 v3, 0x4

    .line 2617
    .local v3, "packageType":I
    const-string v0, ".captionstyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2618
    const/4 v3, 0x2

    .line 2627
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2628
    .local v5, "themeId":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_7

    .line 2629
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v6

    .line 2630
    .local v6, "error":I
    if-eqz v6, :cond_1

    .line 2631
    const-string v0, "NvsThemeHelper"

    const-string v1, "Failed to upgrade package!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2632
    goto :goto_0

    .line 2619
    .end local v5    # "themeId":Ljava/lang/StringBuilder;
    .end local v6    # "error":I
    :cond_4
    const-string v0, ".videofx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2620
    const/4 v3, 0x0

    goto :goto_1

    .line 2621
    :cond_5
    const-string v0, ".videotransition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2622
    const/4 v3, 0x1

    goto :goto_1

    .line 2623
    :cond_6
    const-string v0, ".animatedsticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2624
    const/4 v3, 0x3

    goto :goto_1

    .line 2635
    .restart local v5    # "themeId":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v6

    .line 2636
    .restart local v6    # "error":I
    if-eqz v6, :cond_8

    if-eq v6, v8, :cond_8

    .line 2638
    const-string v0, "NvsThemeHelper"

    const-string v1, "Failed to install package!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2639
    goto :goto_0

    .line 2641
    :cond_8
    if-ne v6, v8, :cond_1

    .line 2642
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2643
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v6

    .line 2644
    if-eqz v6, :cond_1

    .line 2645
    const-string v0, "NvsThemeHelper"

    const-string v1, "Failed to upgrade package!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2646
    goto/16 :goto_0
.end method

.method private installThemeAsset(Landroid/content/Context;Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Z
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeID"    # Ljava/lang/String;
    .param p3, "curThemeasset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    .line 2657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 2658
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 2659
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 2660
    const/16 v19, 0x0

    .line 2840
    :goto_0
    return v19

    .line 2662
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/info.json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez p1, :cond_2

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v6

    .line 2663
    .local v6, "assetFileInfo":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 2664
    const-string v19, "NvsThemeHelper"

    const-string v20, "read theme info json file error!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    const/16 v19, 0x0

    goto :goto_0

    .line 2662
    .end local v6    # "assetFileInfo":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    goto :goto_1

    .line 2668
    .restart local v6    # "assetFileInfo":Ljava/lang/String;
    :cond_3
    new-instance v16, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;-><init>(Lcom/meicam/themehelper/NvsThemeHelper;)V

    .line 2669
    .local v16, "themeasset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-nez p1, :cond_5

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    .line 2671
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2673
    .local v10, "fxDescobj":Lorg/json/JSONObject;
    const-string v19, "hasFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2674
    const-string v19, "hasFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hasFxTrans:Z

    .line 2677
    :cond_4
    const-string/jumbo v19, "transOffset"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2678
    const-string/jumbo v19, "transOffset"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transOffset:I

    .line 2684
    :goto_3
    const-string/jumbo v20, "theme"

    if-nez p1, :cond_7

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2685
    .local v7, "assetPath":Ljava/lang/String;
    if-nez p3, :cond_8

    const/16 v19, 0x0

    :goto_5
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2688
    .local v15, "needUpdate":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    .line 2689
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 2690
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install theme package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2669
    .end local v7    # "assetPath":Ljava/lang/String;
    .end local v10    # "fxDescobj":Lorg/json/JSONObject;
    .end local v15    # "needUpdate":Z
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2680
    .restart local v10    # "fxDescobj":Lorg/json/JSONObject;
    :cond_6
    const/16 v19, 0x1f4

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transOffset:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2831
    .end local v10    # "fxDescobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 2832
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 2833
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2684
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v10    # "fxDescobj":Lorg/json/JSONObject;
    :cond_7
    const/16 v19, 0x0

    goto :goto_4

    .line 2685
    .restart local v7    # "assetPath":Ljava/lang/String;
    :cond_8
    :try_start_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_5

    .line 2695
    .restart local v15    # "needUpdate":Z
    :cond_9
    const-string/jumbo v20, "theme10s"

    if-nez p1, :cond_a

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2696
    if-nez p3, :cond_b

    const/16 v19, 0x0

    :goto_7
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2699
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    .line 2700
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 2701
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install theme 10s package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2695
    :cond_a
    const/16 v19, 0x0

    goto :goto_6

    .line 2696
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    .line 2706
    :cond_c
    const-string v19, "cafSticker"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2707
    const-string v20, "cafSticker"

    if-nez p1, :cond_f

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2708
    if-nez p3, :cond_10

    const/16 v19, 0x0

    :goto_9
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2711
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafStickerId:Ljava/lang/StringBuilder;

    .line 2713
    :cond_d
    const-string v19, "cafSticker10s"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2714
    const-string v20, "cafSticker10s"

    if-nez p1, :cond_11

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2715
    if-nez p3, :cond_12

    const/16 v19, 0x0

    :goto_b
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2718
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafSticker10sId:Ljava/lang/StringBuilder;

    .line 2722
    :cond_e
    const-string/jumbo v20, "sticker1"

    if-nez p1, :cond_13

    const/16 v19, 0x1

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2723
    if-nez p3, :cond_14

    const/16 v19, 0x0

    :goto_d
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2726
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    .line 2727
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_15

    .line 2728
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install sticker package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2707
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 2708
    :cond_10
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafStickerId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_9

    .line 2714
    :cond_11
    const/16 v19, 0x0

    goto :goto_a

    .line 2715
    :cond_12
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafSticker10sId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_b

    .line 2722
    :cond_13
    const/16 v19, 0x0

    goto :goto_c

    .line 2723
    :cond_14
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_d

    .line 2731
    :cond_15
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId1:Ljava/lang/String;

    .line 2733
    const-string/jumbo v20, "sticker2"

    if-nez p1, :cond_16

    const/16 v19, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2734
    if-nez p3, :cond_17

    const/16 v19, 0x0

    :goto_f
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2737
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    .line 2738
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_18

    .line 2739
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install sticker2 package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2733
    :cond_16
    const/16 v19, 0x0

    goto :goto_e

    .line 2734
    :cond_17
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_f

    .line 2742
    :cond_18
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId2:Ljava/lang/String;

    .line 2745
    const-string v19, "blurFx"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 2746
    const-string v20, "blurFx"

    if-nez p1, :cond_19

    const/16 v19, 0x1

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2747
    if-nez p3, :cond_1a

    const/16 v19, 0x0

    :goto_11
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2750
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    .line 2751
    const-string v19, "blurWithFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 2752
    const-string v19, "blurWithFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2753
    .local v4, "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_12
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_1b

    .line 2754
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurWidthFxTransList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2753
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 2746
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    :cond_19
    const/16 v19, 0x0

    goto :goto_10

    .line 2747
    :cond_1a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    goto :goto_11

    .line 2762
    :cond_1b
    :try_start_2
    const-string v19, "endingVideoFX"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2763
    .local v11, "fxFileName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2764
    if-nez p1, :cond_22

    const/16 v19, 0x0

    :goto_13
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2771
    .end local v11    # "fxFileName":Ljava/lang/String;
    :goto_14
    :try_start_3
    const-string v19, "endingVideoFX10s"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2772
    .restart local v11    # "fxFileName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2773
    if-nez p1, :cond_23

    const/16 v19, 0x0

    :goto_15
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId10s:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2778
    .end local v11    # "fxFileName":Ljava/lang/String;
    :goto_16
    :try_start_4
    const-string v19, "endingVideoFX10sDuration"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFx10sLen:J

    .line 2781
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "assets:/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/black_block.png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2782
    if-nez p1, :cond_1c

    .line 2783
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/black_block.png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2784
    :cond_1c
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxImgPath:Ljava/lang/String;

    .line 2787
    const-string v19, "musicrhythm"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2788
    .local v13, "musicJsonFile":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez p1, :cond_24

    const/16 v19, 0x0

    :goto_17
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v14

    .line 2789
    .local v14, "musicjson":Ljava/lang/String;
    if-eqz v14, :cond_1d

    .line 2790
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicLen:J

    .line 2794
    :cond_1d
    const-string v19, "musicrhythm10s"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2795
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez p1, :cond_25

    const/16 v19, 0x0

    :goto_18
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v14

    .line 2796
    if-eqz v14, :cond_1e

    .line 2797
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints10s:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicLen10s:J

    .line 2801
    :cond_1e
    const-string/jumbo v19, "transition"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 2802
    const-string/jumbo v19, "transition"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2803
    .restart local v4    # "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_19
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_27

    .line 2804
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2805
    .local v18, "transName":Ljava/lang/String;
    if-eqz v18, :cond_21

    .line 2806
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "assets:/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2807
    .local v5, "asset":Ljava/lang/String;
    if-nez p1, :cond_1f

    .line 2808
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2809
    :cond_1f
    const/4 v15, 0x0

    .line 2810
    if-eqz p3, :cond_20

    .line 2811
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransId(Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Ljava/lang/String;

    move-result-object v8

    .line 2812
    .local v8, "curTransId":Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v5, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2814
    .end local v8    # "curTransId":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v17

    .line 2815
    .local v17, "transID":Ljava/lang/StringBuilder;
    if-nez v17, :cond_26

    .line 2803
    .end local v5    # "asset":Ljava/lang/String;
    .end local v17    # "transID":Ljava/lang/StringBuilder;
    :cond_21
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 2764
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v13    # "musicJsonFile":Ljava/lang/String;
    .end local v14    # "musicjson":Ljava/lang/String;
    .end local v18    # "transName":Ljava/lang/String;
    .restart local v11    # "fxFileName":Ljava/lang/String;
    :cond_22
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v19

    goto/16 :goto_13

    .line 2765
    .end local v11    # "fxFileName":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 2766
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_6
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_14

    .line 2773
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v11    # "fxFileName":Ljava/lang/String;
    :cond_23
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v19

    goto/16 :goto_15

    .line 2774
    .end local v11    # "fxFileName":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 2775
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_8
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_16

    .line 2788
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v13    # "musicJsonFile":Ljava/lang/String;
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    goto/16 :goto_17

    .line 2795
    .restart local v14    # "musicjson":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    goto/16 :goto_18

    .line 2817
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "asset":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v17    # "transID":Ljava/lang/StringBuilder;
    .restart local v18    # "transName":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2823
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "asset":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v17    # "transID":Ljava/lang/StringBuilder;
    .end local v18    # "transName":Ljava/lang/String;
    :cond_27
    const-string/jumbo v19, "transFx"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 2824
    const-string/jumbo v19, "transFx"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2825
    .restart local v4    # "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_28

    .line 2826
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2827
    .restart local v18    # "transName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2828
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->addToFxList(Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2825
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 2836
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v18    # "transName":Ljava/lang/String;
    :cond_28
    if-eqz p3, :cond_29

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method private isLargeImg(Lcom/meicam/sdk/NvsSize;)Z
    .locals 14
    .param p1, "oriImgSize"    # Lcom/meicam/sdk/NvsSize;

    .prologue
    .line 1038
    new-instance v1, Lcom/meicam/sdk/NvsSize;

    iget v10, p1, Lcom/meicam/sdk/NvsSize;->width:I

    iget v11, p1, Lcom/meicam/sdk/NvsSize;->height:I

    invoke-direct {v1, v10, v11}, Lcom/meicam/sdk/NvsSize;-><init>(II)V

    .line 1039
    .local v1, "imgSize":Lcom/meicam/sdk/NvsSize;
    iget v10, v1, Lcom/meicam/sdk/NvsSize;->width:I

    iget v11, v1, Lcom/meicam/sdk/NvsSize;->height:I

    if-lt v10, v11, :cond_0

    .line 1040
    iget v10, p1, Lcom/meicam/sdk/NvsSize;->height:I

    iput v10, v1, Lcom/meicam/sdk/NvsSize;->width:I

    .line 1041
    iget v10, p1, Lcom/meicam/sdk/NvsSize;->width:I

    iput v10, v1, Lcom/meicam/sdk/NvsSize;->height:I

    .line 1044
    :cond_0
    iget-object v10, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v10}, Lcom/meicam/sdk/NvsTimeline;->getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v2

    .line 1046
    .local v2, "resolution":Lcom/meicam/sdk/NvsVideoResolution;
    iget v10, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    int-to-double v10, v10

    iget v12, v1, Lcom/meicam/sdk/NvsSize;->width:I

    int-to-double v12, v12

    div-double v8, v10, v12

    .line 1047
    .local v8, "scaleW":D
    iget v10, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    int-to-double v10, v10

    iget v12, v1, Lcom/meicam/sdk/NvsSize;->height:I

    int-to-double v12, v12

    div-double v6, v10, v12

    .line 1048
    .local v6, "scaleH":D
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 1050
    .local v4, "scale":D
    iget v3, v1, Lcom/meicam/sdk/NvsSize;->width:I

    .line 1051
    .local v3, "w":I
    iget v0, v1, Lcom/meicam/sdk/NvsSize;->height:I

    .line 1052
    .local v0, "h":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_1

    .line 1053
    iget v10, v1, Lcom/meicam/sdk/NvsSize;->width:I

    int-to-double v10, v10

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v3, v10

    .line 1054
    iget v10, v1, Lcom/meicam/sdk/NvsSize;->height:I

    int-to-double v10, v10

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v0, v10

    .line 1057
    :cond_1
    const/16 v10, 0x2000

    if-gt v3, v10, :cond_2

    const/16 v10, 0x2000

    if-le v0, v10, :cond_3

    .line 1058
    :cond_2
    const/4 v10, 0x1

    .line 1060
    :goto_0
    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private manageString2Length(Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p1, "source_text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    .line 1830
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1831
    :cond_0
    const/4 v13, 0x0

    .line 1860
    :goto_0
    return-object v13

    .line 1832
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1833
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1834
    .local v12, "textPaint":Landroid/graphics/Paint;
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1836
    iget-object v13, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-static {v13}, Lcom/meicam/themehelper/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    sub-float v8, v13, v14

    .line 1838
    .local v8, "max_length":F
    const-string/jumbo v2, "\ud83d\ude00"

    .line 1839
    .local v2, "emoji":Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1840
    .local v6, "lenght1":F
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1841
    .local v7, "lenght2":F
    sub-float v3, v6, v7

    .line 1843
    .local v3, "emojiMinLength":F
    const/4 v10, 0x0

    .line 1844
    .local v10, "sub_index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 1845
    add-int/lit8 v10, v5, 0x1

    .line 1846
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1847
    .local v11, "test":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1848
    .local v1, "cur_length":F
    cmpl-float v13, v1, v8

    if-ltz v13, :cond_3

    .line 1849
    move v10, v5

    .line 1850
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-gt v5, v13, :cond_2

    .line 1851
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1852
    .local v9, "next_str":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    sub-float v4, v1, v13

    .line 1853
    .local v4, "end_length":F
    cmpg-float v13, v4, v3

    if-gtz v13, :cond_2

    .line 1854
    add-int/lit8 v10, v5, -0x1

    .line 1860
    .end local v1    # "cur_length":F
    .end local v4    # "end_length":F
    .end local v9    # "next_str":Ljava/lang/String;
    .end local v11    # "test":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 1844
    .restart local v1    # "cur_length":F
    .restart local v11    # "test":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private manageStringLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p1, "source_text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    .line 1789
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1790
    :cond_0
    const/4 v13, 0x0

    .line 1826
    :goto_0
    return-object v13

    .line 1791
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1792
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1793
    .local v12, "textPaint":Landroid/graphics/Paint;
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1795
    const-string/jumbo v13, "\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 1797
    .local v8, "max_length":F
    const-string/jumbo v2, "\ud83d\ude00"

    .line 1798
    .local v2, "emoji":Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1799
    .local v6, "lenght1":F
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1800
    .local v7, "lenght2":F
    sub-float v3, v6, v7

    .line 1802
    .local v3, "emojiMinLength":F
    const/4 v10, 0x0

    .line 1803
    .local v10, "sub_index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 1804
    add-int/lit8 v10, v5, 0x1

    .line 1805
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1806
    .local v11, "test":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1807
    .local v1, "cur_length":F
    cmpl-float v13, v1, v8

    if-ltz v13, :cond_4

    .line 1808
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v5, v13, :cond_3

    .line 1809
    const/4 v13, 0x0

    add-int/lit8 v14, v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1810
    .local v9, "next_str":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    sub-float v4, v13, v1

    .line 1811
    .local v4, "end_length":F
    cmpg-float v13, v4, v3

    if-gtz v13, :cond_2

    .line 1812
    add-int/lit8 v10, v5, 0x2

    .line 1823
    .end local v1    # "cur_length":F
    .end local v4    # "end_length":F
    .end local v9    # "next_str":Ljava/lang/String;
    .end local v11    # "test":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v10, v13, :cond_5

    .line 1824
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 1817
    .restart local v1    # "cur_length":F
    .restart local v11    # "test":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1818
    goto :goto_2

    .line 1803
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1826
    .end local v1    # "cur_length":F
    .end local v11    # "test":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private reBuildTimeLine(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/util/ArrayList;JLcom/meicam/themehelper/NvsMusicFileDesc;Z)V
    .locals 34
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p4, "newDuration"    # J
    .param p6, "selectMusicfile"    # Lcom/meicam/themehelper/NvsMusicFileDesc;
    .param p7, "needFx"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;J",
            "Lcom/meicam/themehelper/NvsMusicFileDesc;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1141
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    new-instance v4, Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->seed:J

    invoke-direct {v4, v10, v11}, Ljava/util/Random;-><init>(J)V

    sput-object v4, Lcom/meicam/themehelper/NvsThemeHelper;->rand:Ljava/util/Random;

    .line 1142
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v32

    .line 1143
    .local v32, "streamingContext":Lcom/meicam/sdk/NvsStreamingContext;
    if-eqz v32, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1149
    .local v28, "nClipCount":I
    const/16 v26, 0x0

    .line 1150
    .local v26, "bUsedSlectedMusc":Z
    const/16 v25, 0x0

    .line 1151
    .local v25, "bUsedLocalMusc":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v19, v0

    .line 1152
    .local v19, "transDesc":Lcom/meicam/themehelper/NvsTransDesc;
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicLen:J

    .line 1154
    .local v8, "musicLen":J
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints:Ljava/util/ArrayList;

    .line 1155
    .local v7, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    if-eqz p6, :cond_5

    .line 1156
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1157
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    .line 1159
    :cond_2
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    if-eqz v4, :cond_3

    .line 1160
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v19, v0

    .line 1161
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_4

    .line 1162
    const/16 v25, 0x1

    .line 1163
    :cond_4
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen:J

    .line 1164
    const/16 v26, 0x1

    .line 1167
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 1168
    const-wide/16 v10, 0x0

    cmp-long v4, p4, v10

    if-lez v4, :cond_6

    .line 1170
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 1171
    if-eqz v26, :cond_7

    .line 1172
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    .line 1178
    :cond_6
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v4, p4, v10

    if-lez v4, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1179
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v7, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getClipCountInDuation(Ljava/util/ArrayList;J)I

    move-result v28

    .line 1184
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getRebuildFileList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1185
    .local v5, "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x1

    if-ge v4, v10, :cond_9

    .line 1186
    const-string v4, "NvsThemeHelper"

    const-string v10, "not any show file!"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1174
    .end local v5    # "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    :cond_7
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints10s:Ljava/util/ArrayList;

    goto :goto_1

    .line 1181
    :cond_8
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v28, v0

    goto :goto_2

    .line 1190
    .restart local v5    # "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x5

    if-gt v4, v10, :cond_a

    .line 1192
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 1193
    if-eqz v26, :cond_b

    .line 1194
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    .line 1199
    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/meicam/themehelper/NvsThemeHelper;->cleanUpTimeLine(Lcom/meicam/sdk/NvsTimeline;)V

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v6

    .line 1202
    .local v6, "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    if-nez v6, :cond_c

    .line 1203
    const-string v4, "NvsThemeHelper"

    const-string v10, "appendVideoTrack failed!"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1196
    .end local v6    # "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    :cond_b
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints10s:Ljava/util/ArrayList;

    goto :goto_3

    .line 1207
    .restart local v6    # "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    move-object/from16 v4, p0

    move-wide/from16 v10, p4

    invoke-direct/range {v4 .. v12}, Lcom/meicam/themehelper/NvsThemeHelper;->buildVideoTrack(Ljava/util/ArrayList;Lcom/meicam/sdk/NvsVideoTrack;Ljava/util/ArrayList;JJZ)Ljava/util/Map;

    move-result-object v33

    .line 1209
    .local v33, "transListInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    if-nez p7, :cond_d

    .line 1210
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v6}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v13, v4, :cond_0

    .line 1211
    const/4 v4, 0x0

    invoke-virtual {v6, v13, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1210
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1217
    .end local v13    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsTimeline;->applyTheme(Ljava/lang/String;)Z

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafSticker10sId:Ljava/lang/StringBuilder;

    :goto_6
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_10

    .line 1221
    const/16 v31, 0x1

    .line 1222
    .local v31, "showCaf":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1223
    :cond_e
    const/16 v31, 0x0

    .line 1224
    :cond_f
    if-eqz v31, :cond_10

    .line 1225
    const-wide/16 v12, 0x0

    const-wide v10, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    double-to-long v14, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Lcom/meicam/sdk/NvsTimeline;->addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1229
    .end local v31    # "showCaf":Z
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    .line 1230
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    invoke-virtual {v6}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v13, v4, :cond_1b

    .line 1231
    const/4 v4, 0x0

    invoke-virtual {v6, v13, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1232
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1234
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1235
    .local v29, "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1236
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v6, v13, v4, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/util/ArrayList;Lcom/meicam/themehelper/NvsMusicPointDesc;)V

    .line 1230
    .end local v29    # "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_11
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1217
    .end local v13    # "i":I
    :cond_12
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1219
    :cond_13
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafStickerId:Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1237
    .restart local v13    # "i":I
    .restart local v29    # "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_14
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1238
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v13, v6, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getFxXml(ILcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Lcom/meicam/themehelper/NvsMusicPointDesc;)Ljava/lang/String;

    move-result-object v14

    .line 1240
    .local v14, "fxTransXml":Ljava/lang/String;
    const-string v15, ""

    .line 1241
    .local v15, "trans":Ljava/lang/String;
    const/16 v18, 0x3e8

    .line 1243
    .local v18, "transLen":I
    const-string v4, "fxV3"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1244
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_15

    .line 1245
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1246
    .local v30, "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    move/from16 v18, v0

    .line 1247
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1248
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "trans":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1250
    .end local v30    # "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .restart local v15    # "trans":Ljava/lang/String;
    :cond_15
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v11, p0

    move-object v12, v6

    move-object/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV3(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    goto :goto_8

    .line 1252
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_17

    .line 1253
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1254
    .restart local v30    # "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    move/from16 v18, v0

    .line 1255
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1256
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "trans":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1258
    .end local v30    # "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .restart local v15    # "trans":Ljava/lang/String;
    :cond_17
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v11, p0

    move-object v12, v6

    move-object/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV2(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    goto/16 :goto_8

    .line 1262
    .end local v14    # "fxTransXml":Ljava/lang/String;
    .end local v15    # "trans":Ljava/lang/String;
    .end local v18    # "transLen":I
    .end local v29    # "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_18
    const/16 v18, 0x3e8

    .line 1263
    .restart local v18    # "transLen":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_19

    .line 1264
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsMusicPointDesc;

    iget v0, v4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    move/from16 v18, v0

    .line 1265
    :cond_19
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hasFxTrans:Z

    if-eqz v4, :cond_1a

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v20, p2

    move/from16 v21, v13

    .line 1266
    invoke-direct/range {v16 .. v21}, Lcom/meicam/themehelper/NvsThemeHelper;->setFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;I)V

    goto/16 :goto_8

    .line 1268
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lcom/meicam/themehelper/NvsThemeHelper;->setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Ljava/util/ArrayList;I)V

    goto/16 :goto_8

    .line 1273
    .end local v18    # "transLen":I
    :cond_1b
    if-eqz v26, :cond_1e

    .line 1274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "assets:/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;

    :goto_9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1275
    .local v27, "musicPath":Ljava/lang/String;
    if-nez v25, :cond_1c

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->isDownloadFile:Z

    if-eqz v4, :cond_1d

    .line 1276
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1278
    :cond_1d
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->addMusicFile(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Z)V

    .line 1282
    .end local v27    # "musicPath":Ljava/lang/String;
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/meicam/themehelper/NvsThemeHelper;->addCaption(Lcom/meicam/sdk/NvsTimeline;)V

    .line 1285
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->addEndingFx(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Z)V

    .line 1288
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    if-nez v4, :cond_23

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    invoke-virtual {v4, v10, v11}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 1297
    :cond_1f
    :goto_b
    const-wide/16 v10, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v16, v0

    mul-long v22, v10, v16

    .line 1298
    .local v22, "audioFadeLen":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_20

    .line 1299
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    double-to-long v0, v10

    move-wide/from16 v22, v0

    .line 1300
    :cond_20
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsTimeline;->setAudioFadeOutDuration(J)V

    goto/16 :goto_0

    .line 1274
    .end local v22    # "audioFadeLen":J
    :cond_21
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    goto :goto_9

    .line 1276
    .restart local v27    # "musicPath":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    move-object/from16 v27, v0

    goto :goto_a

    .line 1291
    .end local v27    # "musicPath":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/meicam/sdk/NvsTimeline;->getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v24

    .line 1292
    .local v24, "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    if-eqz v24, :cond_1f

    .line 1293
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Lcom/meicam/sdk/NvsAudioTrack;->setVolumeGain(FF)V

    goto :goto_b
.end method

.method private reBuildTimeLineExt(JZ)V
    .locals 9
    .param p1, "newDuration"    # J
    .param p3, "needFx"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1111
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .line 1112
    .local v2, "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-nez v2, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1116
    :cond_0
    const/4 v6, 0x0

    .line 1117
    .local v6, "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    iget v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    check-cast v6, Lcom/meicam/themehelper/NvsMusicFileDesc;

    .line 1135
    .restart local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move-object v0, p0

    move-wide v4, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLine(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/util/ArrayList;JLcom/meicam/themehelper/NvsMusicFileDesc;Z)V

    goto :goto_0

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1120
    new-instance v6, Lcom/meicam/themehelper/NvsMusicFileDesc;

    .end local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    invoke-direct {v6}, Lcom/meicam/themehelper/NvsMusicFileDesc;-><init>()V

    .line 1121
    .restart local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    iput-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    .line 1122
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    iput-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v8

    .line 1124
    .local v8, "musicjson":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1125
    iget-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    invoke-static {v8, v0, v1}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen:J

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v8

    .line 1128
    if-eqz v8, :cond_4

    .line 1129
    iget-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    invoke-static {v8, v0, v3}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen10s:J

    .line 1131
    :cond_4
    iput-object v3, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile:Ljava/lang/String;

    .line 1132
    iput-object v3, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile10s:Ljava/lang/String;

    goto :goto_1
.end method

.method private saveBitmapToSD(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12
    .param p1, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 1752
    iget-object v7, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 1753
    const-string v7, "meicam"

    const-string v9, "m_context is null,can not make path!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1785
    :goto_0
    return-object v5

    .line 1756
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v9, "caption_bitmap"

    invoke-direct {v0, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1757
    .local v0, "captureDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1758
    const-string v7, "meicam"

    const-string v9, "Failed to make caption bitmap directory"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1759
    goto :goto_0

    .line 1761
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".png"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1763
    .local v3, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1764
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1765
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1767
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1769
    .local v5, "target_path":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1770
    :cond_3
    const-string v9, "meicam"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bt == null "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " target_path.isEmpty(): "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1771
    goto/16 :goto_0

    .line 1770
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1773
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1776
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v7, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1777
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1778
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1780
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1781
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v5, v8

    .line 1785
    goto/16 :goto_0

    .line 1782
    :catch_1
    move-exception v1

    .line 1783
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private setFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;I)V
    .locals 15
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transLen"    # I
    .param p3, "transDesc"    # Lcom/meicam/themehelper/NvsTransDesc;
    .param p4, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p5, "transIdx"    # I

    .prologue
    .line 1979
    move/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {p0, v0, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;

    move-result-object v13

    .line 1980
    .local v13, "transType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1981
    .local v11, "transName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1982
    .local v14, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1984
    .local v12, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    .local v2, "fxTransXmlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "full"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1986
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2

    .line 1987
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    .line 1994
    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2027
    :cond_0
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    .line 2029
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2030
    .local v6, "fxTrans":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2031
    .local v7, "trans":Ljava/lang/String;
    const-string v3, "fxV3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2032
    move/from16 v0, p2

    int-to-long v8, v0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV3(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    .line 2049
    .end local v6    # "fxTrans":Ljava/lang/String;
    .end local v7    # "trans":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 1988
    :cond_2
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 1989
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    goto :goto_0

    .line 1990
    :cond_3
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_4

    .line 1991
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    goto :goto_0

    .line 1993
    :cond_4
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    goto :goto_0

    .line 1995
    :cond_5
    const-string v3, "half"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1996
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_6

    .line 1997
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    .line 2004
    :goto_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_1

    .line 1998
    :cond_6
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 1999
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    goto :goto_3

    .line 2000
    :cond_7
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_8

    .line 2001
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    goto :goto_3

    .line 2003
    :cond_8
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    goto :goto_3

    .line 2005
    :cond_9
    const-string v3, "fh"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2006
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_a

    .line 2007
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    .line 2014
    :goto_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fhtransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_1

    .line 2008
    :cond_a
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    .line 2009
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    goto :goto_4

    .line 2010
    :cond_b
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_c

    .line 2011
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    goto :goto_4

    .line 2013
    :cond_c
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    goto :goto_4

    .line 2015
    :cond_d
    const-string v3, "hf"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2016
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_e

    .line 2017
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    .line 2024
    :goto_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_1

    .line 2018
    :cond_e
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    .line 2019
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    goto :goto_5

    .line 2020
    :cond_f
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_10

    .line 2021
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    goto :goto_5

    .line 2023
    :cond_10
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    goto :goto_5

    .line 2034
    .restart local v6    # "fxTrans":Ljava/lang/String;
    .restart local v7    # "trans":Ljava/lang/String;
    :cond_11
    move/from16 v0, p2

    int-to-long v8, v0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV2(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    goto/16 :goto_2

    .line 2036
    .end local v6    # "fxTrans":Ljava/lang/String;
    .end local v7    # "trans":Ljava/lang/String;
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "transName":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 2037
    .restart local v11    # "transName":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2038
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2046
    :goto_6
    if-eqz v14, :cond_1

    .line 2047
    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v14, v3}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto/16 :goto_2

    .line 2040
    :cond_13
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_14

    .line 2041
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v11}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v14

    goto :goto_6

    .line 2043
    :cond_14
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v11}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v14

    goto :goto_6
.end method

.method private setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V
    .locals 9
    .param p1, "clip"    # Lcom/meicam/sdk/NvsVideoClip;
    .param p2, "info"    # Lcom/meicam/themehelper/NvsImageFileDesc;

    .prologue
    const/4 v8, 0x0

    .line 1011
    if-nez p1, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 1015
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v0

    .line 1016
    .local v0, "fileInfo":Lcom/meicam/sdk/NvsAVFileInfo;
    invoke-static {v0}, Lcom/meicam/themehelper/Utils;->getImgRatio(Lcom/meicam/sdk/NvsAVFileInfo;)F

    move-result v3

    iput v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    .line 1017
    invoke-virtual {v0, v8}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;

    move-result-object v1

    .line 1018
    .local v1, "imgSize":Lcom/meicam/sdk/NvsSize;
    invoke-direct {p0, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->isLargeImg(Lcom/meicam/sdk/NvsSize;)Z

    move-result v3

    iput-boolean v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->isLargeImg:Z

    .line 1021
    .end local v0    # "fileInfo":Lcom/meicam/sdk/NvsAVFileInfo;
    .end local v1    # "imgSize":Lcom/meicam/sdk/NvsSize;
    :cond_2
    const/4 v2, 0x0

    .line 1022
    .local v2, "rect":Landroid/graphics/RectF;
    iget-boolean v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->hasFace:Z

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_3

    .line 1023
    iget-object v2, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    .line 1024
    :cond_3
    iget-boolean v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->isCover:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverStartROI:Landroid/graphics/RectF;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverEndROI:Landroid/graphics/RectF;

    if-eqz v3, :cond_4

    .line 1025
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverStartROI:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverEndROI:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v4}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1026
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    .line 1030
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/meicam/sdk/NvsVideoClip;->setSourceBackgroundMode(I)V

    .line 1032
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1033
    invoke-virtual {p1, v8}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionAnimationEnabled(Z)V

    goto :goto_0

    .line 1028
    :cond_4
    iget v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    iget-boolean v4, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->isLargeImg:Z

    invoke-static {p1, v3, v4, v2}, Lcom/meicam/themehelper/Utils;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;FZLandroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transLen"    # I
    .param p3, "transDesc"    # Lcom/meicam/themehelper/NvsTransDesc;
    .param p5, "transIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "I",
            "Lcom/meicam/themehelper/NvsTransDesc;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1954
    .local p4, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    invoke-direct {p0, p5, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, "transType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1956
    .local v0, "transName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1958
    .local v2, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    const-string v3, "full"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1959
    iget-object v3, p3, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1965
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1966
    const/4 v3, 0x0

    invoke-virtual {p1, p5, v3}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1974
    :goto_1
    if-eqz v2, :cond_0

    .line 1975
    int-to-float v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    .line 1976
    :cond_0
    return-void

    .line 1960
    :cond_1
    const-string v3, "half"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1961
    iget-object v3, p3, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1963
    :cond_2
    iget-object v3, p3, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1968
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4

    .line 1969
    invoke-virtual {p1, p5, v0}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v2

    goto :goto_1

    .line 1971
    :cond_4
    invoke-virtual {p1, p5, v0}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v2

    goto :goto_1
.end method

.method private setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/util/ArrayList;Lcom/meicam/themehelper/NvsMusicPointDesc;)V
    .locals 6
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p4, "info"    # Lcom/meicam/themehelper/NvsMusicPointDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1931
    .local p3, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    const/4 v2, 0x0

    .line 1932
    .local v2, "transName":Ljava/lang/String;
    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1933
    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "transName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1935
    .restart local v2    # "transName":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1936
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1951
    :cond_2
    :goto_0
    return-void

    .line 1938
    :cond_3
    const/4 v3, 0x0

    .line 1939
    .local v3, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1940
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, "transNa":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1942
    invoke-virtual {p1, p2, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v3

    .line 1946
    .end local v1    # "transNa":Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 1947
    invoke-virtual {p1, p2, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v3

    .line 1948
    :cond_5
    if-eqz v3, :cond_2

    .line 1949
    iget v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto :goto_0

    .line 1939
    .restart local v1    # "transNa":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private sortFileList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2532
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2534
    :cond_1
    const/4 v0, 0x0

    .line 2535
    .local v0, "coverFile":Lcom/meicam/themehelper/NvsImageFileDesc;
    const/4 v1, 0x0

    .line 2536
    .local v1, "coverIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2537
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-boolean v3, v3, Lcom/meicam/themehelper/NvsImageFileDesc;->isCover:Z

    if-eqz v3, :cond_4

    .line 2538
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "coverFile":Lcom/meicam/themehelper/NvsImageFileDesc;
    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 2539
    .restart local v0    # "coverFile":Lcom/meicam/themehelper/NvsImageFileDesc;
    move v1, v2

    .line 2543
    :cond_2
    if-eqz v0, :cond_3

    .line 2544
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2546
    :cond_3
    invoke-static {p1}, Lcom/meicam/themehelper/NvsParseHelper;->sortFileByName(Ljava/util/ArrayList;)V

    .line 2547
    invoke-static {p1}, Lcom/meicam/themehelper/NvsParseHelper;->sortFileByModifyTime(Ljava/util/ArrayList;)V

    .line 2549
    if-eqz v0, :cond_0

    .line 2550
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2536
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public applyTimelineTheme(Ljava/lang/String;ZZ)Z
    .locals 9
    .param p1, "themeID"    # Ljava/lang/String;
    .param p2, "isDownloadFile"    # Z
    .param p3, "showCaption"    # Z

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 178
    :cond_0
    const-string v0, "NvsThemeHelper"

    const-string v3, "helper need init"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 212
    :goto_0
    return v7

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v1

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .line 186
    .local v2, "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-eqz p2, :cond_3

    move-object v0, v6

    :goto_1
    invoke-direct {p0, v0, p1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->installThemeAsset(Landroid/content/Context;Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 187
    const-string v0, "NvsThemeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install theme asset error!, id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 188
    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    goto :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    check-cast v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .line 191
    .restart local v2    # "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-nez v2, :cond_5

    move v7, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_5
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v8

    .line 195
    .local v8, "streamingContext":Lcom/meicam/sdk/NvsStreamingContext;
    if-eqz v8, :cond_6

    .line 196
    invoke-virtual {v8}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 198
    :cond_6
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    .line 200
    iput-boolean p3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    .line 202
    iput v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 205
    iput-object v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 206
    iput-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 207
    iput-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 209
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLine(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/util/ArrayList;JLcom/meicam/themehelper/NvsMusicFileDesc;Z)V

    goto :goto_0
.end method

.method public changeCaptionText(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 315
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return v0

    .line 318
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 320
    :pswitch_0
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-direct {p0, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->addCaption(Lcom/meicam/sdk/NvsTimeline;)V

    .line 329
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :pswitch_1
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    goto :goto_1

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeMusic(Ljava/lang/String;I)Z
    .locals 19
    .param p1, "musicId"    # Ljava/lang/String;
    .param p2, "musicType"    # I

    .prologue
    .line 402
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v18

    .line 403
    .local v18, "streamingContext":Lcom/meicam/sdk/NvsStreamingContext;
    if-eqz v18, :cond_0

    .line 404
    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 406
    :cond_0
    if-nez p1, :cond_3

    .line 407
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    if-nez v2, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    invoke-virtual {v2, v3, v4}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 417
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 496
    :goto_1
    return v2

    .line 412
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meicam/sdk/NvsTimeline;->getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v8

    .line 413
    .local v8, "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    if-eqz v8, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    invoke-virtual {v8, v2, v3}, Lcom/meicam/sdk/NvsAudioTrack;->setVolumeGain(FF)V

    goto :goto_0

    .line 420
    .end local v8    # "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    :cond_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    .line 421
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 423
    packed-switch p2, :pswitch_data_0

    .line 483
    const/4 v2, 0x0

    goto :goto_1

    .line 425
    :pswitch_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v14

    .line 426
    .local v14, "info":Lcom/meicam/sdk/NvsAVFileInfo;
    if-nez v14, :cond_4

    .line 427
    const-string v2, "NvsThemeHelper"

    const-string v3, "loacl music format is not suported!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v2, 0x0

    goto :goto_1

    .line 430
    :cond_4
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/meicam/sdk/NvsAVFileInfo;->getAudioStreamDuration(I)J

    move-result-wide v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/meicam/themehelper/NvsThemeHelper;->changeLocalMusic(Ljava/lang/String;JJ)V

    .line 431
    const/4 v2, 0x1

    goto :goto_1

    .line 433
    .end local v14    # "info":Lcom/meicam/sdk/NvsAVFileInfo;
    :pswitch_1
    const/4 v9, 0x0

    .line 434
    .local v9, "currentSelected":Lcom/meicam/themehelper/NvsMusicFileDesc;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meicam/themehelper/NvsMusicFileDesc;

    .line 436
    .local v11, "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    iget-object v2, v11, Lcom/meicam/themehelper/NvsMusicFileDesc;->id:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    move-object v9, v11

    .line 438
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 443
    .end local v11    # "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :cond_5
    const/4 v15, 0x0

    .line 444
    .local v15, "isDownloadFile":Z
    if-nez v9, :cond_6

    .line 445
    const/4 v15, 0x1

    .line 447
    :cond_6
    if-eqz v15, :cond_9

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/info.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v16

    .line 449
    .local v16, "musicInfo":Ljava/lang/String;
    if-nez v16, :cond_8

    .line 450
    const-string v2, "NvsThemeHelper"

    const-string v3, "read music info json error!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 434
    .end local v15    # "isDownloadFile":Z
    .end local v16    # "musicInfo":Ljava/lang/String;
    .restart local v11    # "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 454
    .end local v11    # "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .restart local v15    # "isDownloadFile":Z
    .restart local v16    # "musicInfo":Ljava/lang/String;
    :cond_8
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 455
    .local v12, "filesobj":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/meicam/themehelper/NvsParseHelper;->GetMusicFileFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/meicam/themehelper/NvsMusicFileDesc;

    move-result-object v9

    .line 456
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->isDownloadFile:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v12    # "filesobj":Lorg/json/JSONObject;
    .end local v16    # "musicInfo":Ljava/lang/String;
    :cond_9
    :goto_3
    if-nez v9, :cond_a

    .line 462
    const-string v2, "NvsThemeHelper"

    const-string v3, "currentSelected music item is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 457
    .restart local v16    # "musicInfo":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 458
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 466
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v16    # "musicInfo":Ljava/lang/String;
    :cond_a
    iget-object v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_c

    .line 468
    iget-object v3, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile:Ljava/lang/String;

    if-eqz v15, :cond_e

    const/4 v2, 0x0

    :goto_4
    invoke-static {v3, v2}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v17

    .line 469
    .local v17, "musicjson":Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 470
    iget-object v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen:J

    .line 472
    :cond_b
    iget-object v3, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile10s:Ljava/lang/String;

    if-eqz v15, :cond_f

    const/4 v2, 0x0

    :goto_5
    invoke-static {v3, v2}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v17

    .line 473
    if-eqz v17, :cond_c

    .line 474
    iget-object v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen10s:J

    .line 477
    .end local v17    # "musicjson":Ljava/lang/String;
    :cond_c
    if-eqz v15, :cond_d

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 486
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 487
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 488
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 492
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    .line 496
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 468
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    goto :goto_4

    .line 472
    .restart local v17    # "musicjson":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    goto :goto_5

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeMusicVolumeGain(F)Z
    .locals 3
    .param p1, "volumeGain"    # F

    .prologue
    const/4 v1, 0x0

    .line 797
    iget v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    packed-switch v2, :pswitch_data_0

    .line 811
    :goto_0
    return v1

    .line 799
    :pswitch_0
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1, p1, p1}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 810
    :cond_0
    :goto_1
    iput p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 811
    const/4 v1, 0x1

    goto :goto_0

    .line 803
    :pswitch_1
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsTimeline;->getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    .line 804
    .local v0, "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0, p1, p1}, Lcom/meicam/sdk/NvsAudioTrack;->setVolumeGain(FF)V

    goto :goto_1

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public changeTimelineDuration(Z)Z
    .locals 5
    .param p1, "is10sMode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const-wide/16 v0, 0xa

    iget-wide v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    .line 277
    :goto_0
    return v4

    .line 274
    :cond_0
    const-wide/16 v0, -0x2

    invoke-direct {p0, v0, v1, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0
.end method

.method public deleteClip(I)Z
    .locals 4
    .param p1, "clipIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 661
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 662
    const-string v1, "NvsThemeHelper"

    const-string v2, "invalid file!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_0
    return v0

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMinImgCount()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 667
    const-string v1, "NvsThemeHelper"

    const-string v2, "less than min clip count!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_2

    .line 672
    const-string v1, "NvsThemeHelper"

    const-string v2, "invalid clip index!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 678
    invoke-virtual {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->randomFx()V

    .line 679
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    move v0, v1

    .line 682
    goto :goto_0
.end method

.method public getCaptionText(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 333
    const-string v0, ""

    .line 334
    .local v0, "text":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    if-eqz v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    .line 341
    :cond_0
    :goto_0
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    if-eqz v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentThemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailImages()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 885
    const/4 v11, 0x0

    .line 942
    :cond_0
    :goto_0
    return-object v11

    .line 887
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/meicam/sdk/NvsTimeline;->getVideoTrackByIndex(I)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v15

    .line 888
    .local v15, "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    if-nez v15, :cond_2

    .line 889
    const/4 v11, 0x0

    goto :goto_0

    .line 891
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v11, "sequenceDescsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 893
    invoke-virtual {v15, v9}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v14

    .line 894
    .local v14, "videoClip":Lcom/meicam/sdk/NvsVideoClip;
    if-nez v14, :cond_3

    .line 892
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 896
    :cond_3
    new-instance v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v10}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 897
    .local v10, "sequenceDescs":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 898
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getTrimIn()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 899
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getTrimOut()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 900
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 901
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 902
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 904
    const/4 v8, 0x0

    .line 905
    .local v8, "hasFxTrans":Ljava/lang/String;
    const-string v16, "hasFxTrans"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 906
    const-string v16, "hasFxTrans"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 907
    :cond_4
    if-eqz v8, :cond_6

    const-string/jumbo v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 908
    const-string v16, "fxFilePath"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "fxFilePath":Ljava/lang/String;
    const-string v16, "fxInpoint"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v4, v16, v18

    .line 910
    .local v4, "fxInpoint":J
    iget-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 911
    iget-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 912
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v12}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 915
    .local v12, "sequenceDescsFx":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    iput-object v2, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 916
    iget-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 917
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 918
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 919
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 920
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 922
    const-string v16, "fxFileV3Path"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 923
    const-string v16, "fxFileV3Path"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "fxFilePathV3":Ljava/lang/String;
    const-string v16, "fxV3Inpoint"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v6, v16, v18

    .line 925
    .local v6, "fxInpointV3":J
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 926
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 927
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    new-instance v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v13}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 930
    .local v13, "sequenceDescsV3":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    iput-object v3, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 931
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 932
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 933
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 934
    iget-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    iget-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 935
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 936
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 938
    .end local v3    # "fxFilePathV3":Ljava/lang/String;
    .end local v6    # "fxInpointV3":J
    .end local v13    # "sequenceDescsV3":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    :cond_5
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 940
    .end local v2    # "fxFilePath":Ljava/lang/String;
    .end local v4    # "fxInpoint":J
    .end local v12    # "sequenceDescsFx":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    :cond_6
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getTimelinePosition(I)J
    .locals 6
    .param p1, "clipIndex"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 299
    if-gez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-wide v2

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getThumbnailImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 303
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;>;"
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 308
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    .line 309
    .local v0, "desc":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    if-eqz v0, :cond_0

    .line 311
    iget-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    iget-wide v4, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    goto :goto_0
.end method

.method public initHelper(Landroid/content/Context;Lcom/meicam/sdk/NvsTimeline;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    .line 119
    iget-object v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 120
    const-string v4, "NvsThemeHelper"

    const-string v5, "Context can not be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return v3

    .line 124
    :cond_0
    if-nez p2, :cond_1

    .line 125
    const-string v4, "NvsThemeHelper"

    const-string/jumbo v5, "timeline can not be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 130
    :cond_2
    const-string v4, "NvsThemeHelper"

    const-string v5, "file list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 136
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {v3}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v0

    .line 137
    .local v0, "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_4
    iput-object p2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    .line 142
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsTimeline;->getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v2

    .line 143
    .local v2, "videoResolution":Lcom/meicam/sdk/NvsVideoResolution;
    iget v3, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    iget v5, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sput v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    move v3, v4

    .line 156
    goto :goto_0
.end method

.method public insertClip(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "newClips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v7, 0x1

    .line 613
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 614
    :cond_0
    const-string v7, "NvsThemeHelper"

    const-string v8, "invalid clip!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v7, 0x0

    .line 657
    :goto_0
    return v7

    .line 618
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v5, "insertClips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 620
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 621
    .local v2, "file":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-boolean v8, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->alternative:Z

    if-eqz v8, :cond_5

    .line 622
    const/4 v1, 0x0

    .line 623
    .local v1, "exist":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 624
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 625
    .local v0, "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v8, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    iget-object v9, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 626
    const/4 v1, 0x1

    .line 627
    const-string v8, "NvsThemeHelper"

    const-string v9, "exist file!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput-boolean v7, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 632
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_2
    if-nez v1, :cond_3

    .line 633
    invoke-virtual {v2}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v3

    .line 634
    .local v3, "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    iput-boolean v7, v3, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 635
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v1    # "exist":Z
    .end local v3    # "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v6    # "j":I
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 623
    .restart local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .restart local v1    # "exist":Z
    .restart local v6    # "j":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 638
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v1    # "exist":Z
    .end local v6    # "j":I
    :cond_5
    invoke-virtual {v2}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v3

    .line 639
    .restart local v3    # "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    iput-boolean v7, v3, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 640
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 644
    .end local v2    # "file":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v3    # "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_6
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 652
    invoke-virtual {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->randomFx()V

    .line 653
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9, v7}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0
.end method

.method public moveClip(II)Z
    .locals 6
    .param p1, "clipIndex"    # I
    .param p2, "destClipIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v1

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 587
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {v1}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v0

    .line 588
    .local v0, "src":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 591
    invoke-virtual {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->randomFx()V

    .line 593
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    move v1, v2

    .line 597
    goto :goto_0
.end method

.method public randomFx()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->seed:J

    .line 161
    return-void
.end method

.method public resetClip(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "newClips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    const-string v1, "NvsThemeHelper"

    const-string v2, "invalid clip!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-virtual {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->insertClip(Ljava/util/ArrayList;)Z

    move-result v0

    .line 608
    .local v0, "suc":Z
    goto :goto_0
.end method

.method public setDefaultRhythmPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "defaultRhythmPath"    # Ljava/lang/String;
    .param p2, "defaultRhythmPath_10s"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    const-string v1, "assets:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    const-string v1, "assets:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    .line 172
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setThemeEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const-wide/16 v2, -0x1

    .line 855
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    if-eqz p1, :cond_2

    .line 859
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0

    .line 872
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0
.end method
