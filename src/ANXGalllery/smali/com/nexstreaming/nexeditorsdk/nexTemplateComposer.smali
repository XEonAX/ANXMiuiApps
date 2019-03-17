.class public final Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;
.super Ljava/lang/Object;
.source "nexTemplateComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nexTemplateComposer"

.field private static final TAG_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final TAG_COLOR_FILTER:Ljava/lang/String; = "color_filter"

.field private static final TAG_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final TAG_CROP_MODE:Ljava/lang/String; = "crop_mode"

.field private static final TAG_CROP_SPEED:Ljava/lang/String; = "image_crop_speed"

.field private static final TAG_DURATION:Ljava/lang/String; = "duration"

.field private static final TAG_EFFECTS:Ljava/lang/String; = "effects"

.field private static final TAG_EXTERNAL_IMAGE_PATH:Ljava/lang/String; = "external_image_path"

.field private static final TAG_EXTERNAL_VIDEO_PATH:Ljava/lang/String; = "external_video_path"

.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_IMAGE_CROP_MODE:Ljava/lang/String; = "image_crop_mode"

.field private static final TAG_LUT:Ljava/lang/String; = "lut"

.field private static final TAG_SATURATION:Ljava/lang/String; = "saturation"

.field private static final TAG_SOLID_COLOR:Ljava/lang/String; = "solid_color"

.field private static final TAG_SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field private static final TAG_SPEED_CONTROL:Ljava/lang/String; = "speed_control"

.field private static final TAG_TEMPLATE:Ljava/lang/String; = "template"

.field private static final TAG_TEMPLATE_BGM:Ljava/lang/String; = "template_bgm"

.field private static final TAG_TEMPLATE_BGM_VOLUME:Ljava/lang/String; = "template_bgm_volume"

.field private static final TAG_TEMPLATE_DESCRIPTION:Ljava/lang/String; = "template_desc"

.field private static final TAG_TEMPLATE_INTRO:Ljava/lang/String; = "template_intro"

.field private static final TAG_TEMPLATE_LETTERBOX:Ljava/lang/String; = "template_letterbox"

.field private static final TAG_TEMPLATE_LOOP:Ljava/lang/String; = "template_loop"

.field private static final TAG_TEMPLATE_NAME:Ljava/lang/String; = "template_name"

.field private static final TAG_TEMPLATE_OUTRO:Ljava/lang/String; = "template_outro"

.field private static final TAG_TEMPLATE_VERSION:Ljava/lang/String; = "template_version"

.field private static final TAG_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_VIDEO_CROP_MODE:Ljava/lang/String; = "video_crop_mode"

.field private static final TAG_VIGNETTE:Ljava/lang/String; = "vignette"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final cancelMassage:Ljava/lang/String; = "cancel template"


# instance fields
.field introCount:I

.field loopCount:I

.field private mAppContext:Landroid/content/Context;

.field private mBGMPath:Ljava/lang/String;

.field private mBGMTempFile:Z

.field private mCancel:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mIntroTemplateArray:Lorg/json/JSONArray;

.field private mIntroTemplateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoopTemplateArray:Lorg/json/JSONArray;

.field private mLoopTemplateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOutroTemplateArray:Lorg/json/JSONArray;

.field private mOutroTemplateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverlappedTransition:Z

.field private mOverlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;",
            ">;"
        }
    .end annotation
.end field

.field private mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

.field private mResContext:Landroid/content/Context;

.field private mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

.field private mTemplateArray:Lorg/json/JSONArray;

.field private mTemplateFilePath:Ljava/lang/String;

.field private mTemplateID:Ljava/lang/String;

.field private mTemplateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTemplateTypeCountList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateVersion:Ljava/lang/String;

.field private mUseProjectSpeed:Z

.field tempClipID:I

.field templateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field templateListID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMTempFile:Z

    .line 73
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateArray:Lorg/json/JSONArray;

    .line 79
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateArray:Lorg/json/JSONArray;

    .line 80
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateArray:Lorg/json/JSONArray;

    .line 81
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateArray:Lorg/json/JSONArray;

    .line 84
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    .line 90
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    .line 768
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlappedTransition:Z

    .line 903
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 904
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    .line 905
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateList:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlayList:Ljava/util/ArrayList;

    .line 196
    return-void
.end method

.method static AssetPackageTemplateJsonToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1833
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v1

    .line 1835
    if-nez v1, :cond_0

    .line 1836
    const-string v1, "nexTemplateComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageTemplateJsonToString info fail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :goto_0
    return-object v0

    .line 1840
    :cond_0
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a()Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v2

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Lcom/nexstreaming/app/common/nexasset/assetpackage/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1841
    const-string v1, "nexTemplateComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssetPackageTemplateJsonToString expire item id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1849
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getPackageURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1855
    const-string v3, "nexTemplateComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Template("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Asset("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getAssetIdx()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") version(In DB)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getAssetPackage()Lcom/nexstreaming/app/common/nexasset/assetpackage/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/b;->getPackageVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version(In reader)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :try_start_1
    invoke-interface {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1859
    if-eqz v1, :cond_3

    .line 1860
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1861
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1865
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1866
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1874
    :catch_0
    move-exception v1

    .line 1875
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1877
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1850
    :catch_1
    move-exception v1

    .line 1851
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1870
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1871
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1877
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mResContext:Landroid/content/Context;

    return-object v0
.end method

.method static checkEffectId(Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 529
    if-nez p1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;->checkEffectID(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    const-string v0, "nexTemplateComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing effect: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkMissEffects(Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 549
    .line 551
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->readFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 552
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 554
    if-eqz v1, :cond_b

    .line 556
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "template_name"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 561
    :try_start_1
    const-string/jumbo v1, "template_version"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    .line 563
    const-string/jumbo v2, "template_letterbox"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const-string/jumbo v2, "template_letterbox"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    :cond_0
    const-string/jumbo v2, "template_desc"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    const-string/jumbo v6, "v1.x"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "v2.0.0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 568
    :cond_1
    const-string/jumbo v1, "template 1.x"

    .line 575
    :goto_0
    const-string v6, "nexTemplateComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Info(name, version, description): ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "))"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string/jumbo v2, "template_intro"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v2, v0

    .line 579
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 580
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "effects"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 581
    invoke-static {p0, v7}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->checkEffectId(Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 582
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 569
    :cond_3
    const-string v6, "2.0.0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 570
    const-string/jumbo v1, "template 2.0"

    goto :goto_0

    .line 572
    :cond_4
    const-string/jumbo v1, "template 1.0"

    goto :goto_0

    .line 586
    :cond_5
    const-string/jumbo v2, "template_loop"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v2, v0

    .line 587
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 588
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "effects"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 589
    invoke-static {p0, v7}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->checkEffectId(Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 590
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 594
    :cond_7
    const-string/jumbo v2, "template_outro"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v2, v0

    .line 595
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 596
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "effects"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 597
    invoke-static {p0, v7}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->checkEffectId(Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 598
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 601
    :catch_0
    move-exception v1

    .line 602
    :try_start_2
    const-string v1, "nexTemplateComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Info(name: ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "))"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string/jumbo v1, "template 1.0"

    .line 606
    :cond_9
    const-string/jumbo v2, "template 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 608
    const-string/jumbo v1, "template"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    .line 610
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 611
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "effects"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    invoke-static {p0, v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->checkEffectId(Lcom/nexstreaming/nexeditorsdk/nexEffectLibrary;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 613
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 610
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 619
    :catch_1
    move-exception v1

    .line 624
    :cond_b
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 625
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 626
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 627
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 626
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_c
    move-object v0, v2

    .line 631
    :goto_7
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 617
    :catch_2
    move-exception v1

    goto :goto_5
.end method

.method static in2sdcard(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1789
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1790
    const/4 v2, 0x0

    .line 1792
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1794
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1795
    if-gtz v2, :cond_1

    .line 1802
    if-eqz v1, :cond_0

    .line 1803
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1806
    :cond_0
    return-void

    .line 1797
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1802
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 1803
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0

    .line 1802
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1799
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static readFromFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1707
    const/4 v0, 0x0

    .line 1710
    if-eqz p0, :cond_0

    .line 1711
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1712
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1716
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1717
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1727
    :cond_0
    :goto_1
    return-object v0

    .line 1721
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1681
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1684
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x0

    .line 1685
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1686
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1691
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1684
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1696
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1698
    :catch_1
    move-exception v0

    .line 1699
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1703
    :goto_3
    return-object v0

    .line 1695
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1696
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1697
    :cond_2
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1696
    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 1700
    :catch_3
    move-exception v0

    .line 1701
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1696
    :cond_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method addSpecialClip2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 908
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "source_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "EXTERNAL_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 909
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "source_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "EXTERNAL_IMAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 910
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "source_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "SOLID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v2, "source_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "EXTERNAL_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "external_video_path"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_2

    .line 914
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 916
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_3

    .line 917
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 921
    :cond_1
    :goto_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    .line 954
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    move v0, v1

    .line 957
    :goto_2
    return v0

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_1

    .line 919
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_0

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 925
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v3, "source_type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "EXTERNAL_IMAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 926
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "external_image_path"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_2

    .line 928
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 929
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 931
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_6

    .line 932
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 936
    :cond_5
    :goto_3
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    goto :goto_1

    .line 933
    :cond_6
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_5

    .line 934
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_3

    .line 939
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v3, "solid_color"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 940
    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSolidClip(I)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 941
    if-eqz v0, :cond_2

    .line 942
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 943
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 945
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_9

    .line 946
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 950
    :cond_8
    :goto_4
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    goto/16 :goto_1

    .line 947
    :cond_9
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_8

    .line 948
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_4

    .line 957
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method addTemplateOverlay(ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 294
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 298
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 299
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 300
    const/4 v3, 0x2

    aget-object v4, v0, v3

    .line 301
    const/4 v3, 0x3

    aget-object v5, v0, v3

    .line 302
    const/4 v3, 0x4

    aget-object v6, v0, v3

    .line 303
    const/4 v3, 0x5

    aget-object v7, v0, v3

    .line 304
    const/4 v3, 0x6

    aget-object v8, v0, v3

    .line 305
    const/4 v3, 0x7

    aget-object v9, v0, v3

    .line 307
    const-string v0, "nexTemplateComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clipID="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /type="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /duration="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /variation="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /activeAnimation="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /inAnimationStartTime="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /inAnimationTime="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /outAnimationStartTime="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " /outAnimationTime="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v0, "overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 321
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 322
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 323
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 324
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 325
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;IIIZIIII)V

    .line 326
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_0
    return-void
.end method

.method applyBGM2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 732
    if-nez p2, :cond_0

    .line 766
    :goto_0
    return-void

    .line 734
    :cond_0
    const-string v0, "nexTemplateComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bgm path1="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 737
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p1, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_0

    .line 743
    :cond_2
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {p1, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_0

    .line 746
    :cond_3
    const/4 v1, 0x1

    const-string/jumbo v3, "template"

    const/16 v5, 0x8

    move-object v0, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mResContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->raw2file(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 755
    :cond_4
    const-string v0, "/storage/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 756
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string v1, "/storage/emulated/0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 758
    const-string v1, "/storage/emulated/0"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 763
    :cond_5
    :goto_1
    invoke-virtual {p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_0

    .line 760
    :cond_6
    const-string v1, "/storage"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method applyTemplateOnProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1647
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    if-nez v0, :cond_1

    const-string v0, "Template did not exist while apply template 2.0"

    .line 1671
    :cond_0
    :goto_0
    return-object v0

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/c;->g()I

    move-result v1

    .line 1653
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1655
    invoke-virtual {p1, v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v2

    .line 1656
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1658
    invoke-virtual {v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 1653
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1663
    :cond_3
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1665
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlappedTransition:Z

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setTemplageOverlappedTransitionMode(Z)V

    .line 1667
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mResContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    iget-boolean v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlappedTransition:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/c;->a(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1668
    if-nez v0, :cond_0

    .line 1671
    const/4 v0, 0x0

    goto :goto_0
.end method

.method consistProjectViaVer1(Lcom/nexstreaming/nexeditorsdk/nexProject;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 785
    const/16 v0, 0x64

    .line 793
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 795
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v9

    .line 796
    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 797
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move v1, v2

    move v3, v0

    .line 801
    :goto_0
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_b

    .line 802
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v10

    .line 803
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v3

    .line 807
    :cond_0
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v4

    .line 809
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v0

    if-nez v0, :cond_1

    .line 810
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    .line 812
    :goto_1
    iget-boolean v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    if-eqz v6, :cond_2

    .line 813
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getDuration()I

    move-result v0

    .line 820
    :goto_2
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-static {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v11

    move v6, v0

    move v7, v4

    move v4, v5

    .line 827
    :goto_3
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    if-eqz v0, :cond_3

    .line 901
    :goto_4
    return-void

    .line 810
    :cond_1
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v0

    goto :goto_1

    .line 815
    :cond_2
    sub-int/2addr v0, v4

    goto :goto_2

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v8, "duration"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 832
    if-gez v0, :cond_4

    move v0, v2

    .line 833
    :cond_4
    const-string v8, "nexTemplateComposer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remainTime2Project="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", defined_duration="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", templateListID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    sub-int/2addr v6, v0

    .line 836
    const/16 v8, 0x1f4

    if-gt v6, v8, :cond_5

    .line 837
    add-int/2addr v0, v6

    move v4, v2

    .line 840
    :cond_5
    const-string v8, "nexTemplateComposer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", defined_duration="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", loop="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-boolean v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    if-eqz v8, :cond_f

    .line 842
    int-to-float v0, v0

    int-to-float v8, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v8, v12

    mul-float/2addr v0, v8

    float-to-int v0, v0

    move v8, v0

    .line 845
    :goto_5
    invoke-static {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 847
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v12, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v12, "source_type"

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v12, "ALL"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v12, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 848
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v12, "source_type"

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v12, "VIDEO"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 849
    :cond_6
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 850
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    if-eqz v0, :cond_7

    .line 851
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 853
    :cond_7
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v0

    add-int v12, v7, v8

    invoke-virtual {v0, v7, v12}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 856
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 857
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 858
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPositionRaw(Landroid/graphics/Rect;)V

    .line 859
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 860
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getLastPrimaryClip()Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPositionRaw(Landroid/graphics/Rect;)V

    .line 862
    add-int v0, v7, v8

    .line 864
    iget v7, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 866
    const-string v7, "nexTemplateComposer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "templateListID="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v12, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", templateList.size()="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget v7, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_9

    .line 868
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 871
    :cond_9
    if-nez v4, :cond_e

    .line 897
    :cond_a
    :goto_6
    add-int/lit8 v0, v1, 0x1

    .line 898
    invoke-virtual {v9, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 900
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    goto/16 :goto_4

    .line 872
    :cond_b
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 873
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "duration"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 875
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v4

    .line 877
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-static {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    .line 878
    invoke-virtual {p1, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 880
    invoke-virtual {v6, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 881
    invoke-virtual {v6, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 883
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 884
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPositionRaw(Landroid/graphics/Rect;)V

    .line 885
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPositionRaw(Landroid/graphics/Rect;)V

    .line 886
    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPositionRaw(Landroid/graphics/Rect;)V

    .line 887
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPositionRaw(Landroid/graphics/Rect;)V

    .line 889
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 891
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_a

    .line 892
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    goto/16 :goto_6

    .line 895
    :cond_c
    const-string v0, "nexTemplateComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support_type in template:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_d
    move v1, v0

    goto/16 :goto_0

    :cond_e
    move v7, v0

    goto/16 :goto_3

    :cond_f
    move v8, v0

    goto/16 :goto_5
.end method

.method consistProjectViaVer2(Lcom/nexstreaming/nexeditorsdk/nexProject;)V
    .locals 21

    .prologue
    .line 1023
    const/4 v7, 0x0

    .line 1024
    const/4 v2, 0x0

    .line 1025
    const/4 v4, 0x0

    .line 1027
    const/4 v6, 0x0

    .line 1028
    const/4 v5, 0x0

    .line 1030
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "duration"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v3, v1

    .line 1030
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_0

    .line 1033
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "duration"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v4, v1

    .line 1033
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_1

    .line 1037
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1039
    invoke-static/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v13

    .line 1040
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    move v2, v5

    move v5, v6

    move v6, v7

    .line 1043
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v7, 0x4

    if-ne v1, v7, :cond_1f

    .line 1044
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v14

    .line 1045
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v15

    .line 1046
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getStartTrimTime()I

    move-result v8

    .line 1047
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1048
    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v1

    move v7, v1

    .line 1051
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v16

    .line 1054
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    .line 1055
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    .line 1057
    :cond_2
    sub-int v9, v7, v8

    .line 1059
    add-int v1, v3, v4

    if-lt v1, v9, :cond_4

    .line 1061
    const-string v1, "nexTemplateComposer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OVER durationOfSourceClip/ introDuration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " outroDuration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sourceDuration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v8

    move v8, v9

    .line 1068
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    if-eqz v1, :cond_6

    .line 1288
    :goto_5
    return-void

    .line 1048
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getEndTrimTime()I

    move-result v1

    move v7, v1

    goto :goto_3

    .line 1063
    :cond_4
    sub-int v1, v9, v4

    .line 1064
    const-string v10, "nexTemplateComposer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UNDER durationOfSourceClip/ introDuration:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " outroDuration:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " remainTime2Project:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v10, v8

    move v8, v1

    goto :goto_4

    .line 1071
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->addSpecialClip2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;)Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v11, "duration"

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    const/4 v1, 0x0

    move v11, v1

    .line 1074
    :goto_6
    sub-int v17, v8, v11

    .line 1076
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1079
    :goto_7
    add-int/lit8 v12, v1, 0x2

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_7

    .line 1081
    const/4 v12, 0x0

    .line 1083
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v18, "source_type"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v18, "EXTERNAL_VIDEO"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1084
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v18, "source_type"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v18, "EXTERNAL_IMAGE"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1085
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v18, "source_type"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v18, "SOLID"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v12

    .line 1086
    goto :goto_7

    .line 1073
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v11, "duration"

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v11, v1

    goto/16 :goto_6

    .line 1092
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v12, "duration"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v1, v0, :cond_a

    if-eqz v5, :cond_10

    .line 1096
    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1098
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v11

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v12, "source_type"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v12, "ALL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1101
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v12, "source_type"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v12, "VIDEO"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1102
    :cond_b
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v12, 0x4

    if-ne v1, v12, :cond_c

    .line 1103
    invoke-virtual {v11, v14}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1104
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1105
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1, v10, v7}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1109
    :cond_c
    add-int/2addr v10, v7

    .line 1111
    if-eqz v5, :cond_e

    .line 1112
    const/4 v5, 0x0

    .line 1114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v1, v11, :cond_f

    .line 1115
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 1119
    :cond_d
    :goto_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    :cond_e
    move v1, v8

    move v8, v10

    .line 1237
    :goto_9
    if-lt v8, v7, :cond_5

    move v1, v2

    move v2, v5

    .line 1280
    :goto_a
    add-int/lit8 v5, v6, 0x1

    .line 1281
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v6

    if-lt v5, v6, :cond_25

    .line 1283
    const-string v1, "nexTemplateComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intro:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    const/4 v4, 0x1

    .line 1284
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out-ro:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    const/4 v4, 0x2

    .line 1285
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1283
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    goto/16 :goto_5

    .line 1116
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v1, v11, :cond_d

    .line 1117
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_8

    .line 1122
    :cond_10
    const-string v18, "nexTemplateComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "id:"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v19, "/ current defined duration:"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v19, "/ next defined duration:"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v19, "/ remain duration(based on source_duration - outro_duration)):"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    add-int v1, v3, v4

    if-lt v1, v9, :cond_15

    .line 1134
    invoke-static/range {v16 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    add-int/lit8 v11, v1, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v11

    .line 1138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v12, "source_type"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v12, "ALL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1139
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v12, "source_type"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v12, "VIDEO"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1140
    :cond_11
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v12, 0x4

    if-ne v1, v12, :cond_12

    .line 1141
    invoke-virtual {v11, v14}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1142
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1143
    invoke-virtual {v11}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    div-int/lit8 v11, v8, 0x2

    add-int/2addr v11, v10

    invoke-virtual {v1, v10, v11}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1147
    :cond_12
    div-int/lit8 v1, v8, 0x2

    add-int/2addr v10, v1

    .line 1149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v1, v11, :cond_13

    .line 1150
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 1155
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 1156
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-ge v2, v1, :cond_14

    .line 1157
    const-string v1, "nexTemplateComposer"

    const-string/jumbo v5, "video,case 1] some clips exist in the source project."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v5, 0x1

    .line 1159
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    :goto_c
    move v1, v8

    move v8, v10

    .line 1164
    goto/16 :goto_9

    .line 1152
    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_b

    .line 1161
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 1162
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    goto :goto_c

    .line 1169
    :cond_15
    move/from16 v0, v17

    if-le v0, v12, :cond_1a

    .line 1171
    if-gez v17, :cond_16

    move v1, v8

    move v8, v10

    .line 1172
    goto/16 :goto_9

    .line 1174
    :cond_16
    sub-int/2addr v8, v11

    .line 1178
    invoke-static/range {v16 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1180
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v12

    .line 1182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v17, "source_type"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v17, "ALL"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move/from16 v17, v0

    .line 1183
    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v17, "source_type"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v17, "VIDEO"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1184
    :cond_17
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v1, v0, :cond_18

    .line 1185
    invoke-virtual {v12, v14}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1186
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1187
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    add-int v12, v10, v11

    invoke-virtual {v1, v10, v12}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1191
    :cond_18
    add-int/2addr v10, v11

    .line 1193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v1, v11, :cond_19

    .line 1194
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 1198
    :goto_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    move v1, v8

    move v8, v10

    .line 1199
    goto/16 :goto_9

    .line 1196
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_d

    .line 1206
    :cond_1a
    invoke-static/range {v16 .. v16}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1208
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v12

    .line 1210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v18, "source_type"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v18, "ALL"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move/from16 v18, v0

    .line 1211
    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v18, "source_type"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v18, "VIDEO"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1212
    :cond_1b
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v1, v0, :cond_1c

    .line 1213
    invoke-virtual {v12, v14}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1214
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1215
    invoke-virtual {v12}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    div-int/lit8 v12, v17, 0x2

    add-int/2addr v12, v11

    add-int/2addr v12, v10

    invoke-virtual {v1, v10, v12}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1219
    :cond_1c
    div-int/lit8 v1, v17, 0x2

    add-int/2addr v1, v11

    add-int/2addr v10, v1

    .line 1221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v1, v11, :cond_1d

    .line 1222
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 1227
    :goto_e
    add-int/lit8 v2, v2, 0x1

    .line 1228
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-ge v2, v1, :cond_1e

    .line 1229
    const-string v1, "nexTemplateComposer"

    const-string/jumbo v5, "video,case 3] the certain clip exist in the source project."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v5, 0x1

    .line 1231
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    move v1, v8

    move v8, v10

    goto/16 :goto_9

    .line 1224
    :cond_1d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_e

    .line 1233
    :cond_1e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    move v1, v8

    move v8, v10

    goto/16 :goto_9

    .line 1238
    :cond_1f
    const/4 v1, 0x1

    invoke-virtual {v13, v6, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_24

    .line 1240
    invoke-virtual/range {p0 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->addSpecialClip2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;)Z

    .line 1242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v7, "duration"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1243
    const/4 v7, 0x1

    invoke-virtual {v13, v6, v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateDegree()I

    move-result v7

    .line 1246
    const/4 v8, 0x1

    invoke-virtual {v13, v6, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    invoke-static {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->dup(Lcom/nexstreaming/nexeditorsdk/nexClip;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    .line 1247
    invoke-virtual {v8, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setRotateDegree(I)V

    .line 1248
    invoke-virtual {v8, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 1249
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->add(Lcom/nexstreaming/nexeditorsdk/nexClip;)I

    .line 1251
    add-int/lit8 v2, v2, 0x1

    .line 1252
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    if-ge v2, v1, :cond_23

    .line 1254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v1, v7, :cond_20

    .line 1255
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 1260
    :goto_f
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_22

    .line 1261
    const/4 v1, 0x1

    invoke-virtual {v13, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v7, 0x4

    if-ne v1, v7, :cond_21

    .line 1262
    const-string v1, "nexTemplateComposer"

    const-string v7, "image] the clipType of last clip is video, and go continually"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    :goto_10
    move v1, v2

    move v2, v5

    .line 1277
    goto/16 :goto_a

    .line 1257
    :cond_20
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    goto :goto_f

    .line 1265
    :cond_21
    const-string v1, "nexTemplateComposer"

    const-string v7, "image] the clipType of last clip is image, and goto OutTroTemplate"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    goto :goto_10

    .line 1269
    :cond_22
    const-string v1, "nexTemplateComposer"

    const-string v7, "image] some clips exist in the source project."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->manageTemplateList(Z)V

    goto :goto_10

    .line 1273
    :cond_23
    const-string v1, "nexTemplateComposer"

    const-string v7, "image] No more any clip after this image clip."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_10

    .line 1278
    :cond_24
    const-string v1, "nexTemplateComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not support_type in template:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v13, v6, v8}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    move v2, v5

    goto/16 :goto_a

    :cond_25
    move v6, v5

    move v5, v2

    move v2, v1

    goto/16 :goto_2

    :cond_26
    move v1, v12

    goto/16 :goto_7
.end method

.method public createProject()Lcom/nexstreaming/nexeditorsdk/nexProject;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;-><init>()V

    return-object v0
.end method

.method getColorEffect(I)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .locals 1

    .prologue
    .line 1675
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v0

    .line 1676
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    return-object v0
.end method

.method getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    const-string v0, "effects"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "none"

    goto :goto_0

    .line 447
    :cond_0
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "volume"

    .line 448
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 450
    :cond_2
    const-string/jumbo v0, "source_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    const-string v0, "ALL"

    goto :goto_0

    .line 452
    :cond_3
    const-string v0, "external_video_path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "external_image_path"

    .line 453
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "solid_color"

    .line 454
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lut"

    .line 455
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 457
    :cond_5
    const-string/jumbo v0, "vignette"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    const-string v0, "clip,no"

    goto :goto_0

    .line 459
    :cond_6
    const-string v0, "crop_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    const-string v0, ""

    goto :goto_0

    .line 461
    :cond_7
    const-string v0, "image_crop_speed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    const-string v0, "0"

    goto :goto_0

    .line 464
    :cond_8
    const-string v0, "default"

    goto :goto_0
.end method

.method in2file(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1810
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1811
    const/4 v1, 0x0

    .line 1813
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1815
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1816
    if-gtz v2, :cond_2

    .line 1823
    if-eqz p2, :cond_0

    .line 1824
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 1826
    :cond_0
    if-eqz v1, :cond_1

    .line 1827
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1830
    :cond_1
    return-void

    .line 1818
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1823
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 1824
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 1826
    :cond_3
    if-eqz v1, :cond_4

    .line 1827
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0
.end method

.method initTemplateComposer(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 275
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 276
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mAppContext:Landroid/content/Context;

    .line 277
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mResContext:Landroid/content/Context;

    .line 278
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    .line 279
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateID:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateFilePath:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mInputStream:Ljava/io/InputStream;

    .line 282
    iput-object p4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateID:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->release()V

    .line 288
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method manageTemplateList(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 962
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_2

    .line 965
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 972
    :cond_0
    :goto_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 974
    const-string v0, "nexTemplateComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "templateListID/templateList.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    if-eqz p1, :cond_4

    .line 978
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 979
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_3

    .line 980
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 981
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 983
    const-string v0, "nexTemplateComposer"

    const-string v1, "intro -> loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_1
    :goto_1
    return-void

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_1

    .line 986
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 988
    const-string v0, "nexTemplateComposer"

    const-string v1, "loop -> loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 993
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_5

    .line 994
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 995
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 998
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1000
    const-string v0, "nexTemplateComposer"

    const-string v1, "intro -> outro"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1002
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_1

    .line 1003
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1004
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1007
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1009
    const-string v0, "nexTemplateComposer"

    const-string v1, "loop -> outro"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method parsingJSONFile(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 635
    .line 637
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateID:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->AssetPackageTemplateJsonToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    :goto_0
    if-eqz v0, :cond_a

    .line 652
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    const-string/jumbo v0, "template_name"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 657
    :try_start_1
    const-string/jumbo v0, "template_version"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 658
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getDefaultLetterboxEffect()Ljava/lang/String;

    move-result-object v0

    .line 659
    const-string/jumbo v6, "template_letterbox"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 660
    const-string/jumbo v0, "template_letterbox"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    :cond_0
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setLetterboxEffect(Ljava/lang/String;)V

    .line 663
    const-string/jumbo v0, "template_desc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    const-string/jumbo v6, "v1.x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "v2.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 667
    :cond_1
    const-string/jumbo v5, "template 1.x"

    iput-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    .line 669
    const-string v5, "nexTemplateComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Info(name, version, description): ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "))"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string/jumbo v0, "template_bgm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->applyBGM2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)V

    .line 674
    const-string/jumbo v0, "template_bgm_volume"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 675
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBGMMasterVolumeScale(F)V

    .line 677
    const-string/jumbo v0, "template_intro"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateArray:Lorg/json/JSONArray;

    move v0, v2

    .line 678
    :goto_1
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 679
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setParameter2List(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 646
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->readFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 682
    :cond_4
    :try_start_2
    const-string/jumbo v0, "template_loop"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateArray:Lorg/json/JSONArray;

    move v0, v2

    .line 683
    :goto_2
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 684
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setParameter2List(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 687
    :cond_5
    const-string/jumbo v0, "template_outro"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateArray:Lorg/json/JSONArray;

    move v0, v2

    .line 688
    :goto_3
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 689
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setParameter2List(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 692
    :cond_6
    const-string/jumbo v0, "template 2.0"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    .line 694
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/c;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/c;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    .line 695
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/nexstreaming/nexeditorsdk/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 696
    if-eqz v0, :cond_7

    .line 727
    :goto_4
    return-object v0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    :try_start_3
    const-string v0, "nexTemplateComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Info(name: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 703
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 704
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 706
    const-string/jumbo v0, "template 1.0"

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    .line 709
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    const-string/jumbo v4, "template 1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    const-string/jumbo v0, "template"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateArray:Lorg/json/JSONArray;

    move v0, v2

    .line 713
    :goto_5
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 714
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setParameter2List(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 717
    :cond_8
    const-string/jumbo v0, "template_bgm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->applyBGM2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_9
    move-object v0, v1

    .line 727
    goto :goto_4

    .line 719
    :catch_1
    move-exception v0

    .line 720
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 721
    :catch_2
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 725
    :cond_a
    const-string/jumbo v0, "template parsing fail!"

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method raw2file(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1731
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->f()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1733
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1736
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1738
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1739
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 1740
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1741
    const-string v0, "nexTemplateComposer"

    const-string v2, "bgm file found in sdcard."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    .line 1743
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    .line 1784
    :goto_0
    return-object v0

    .line 1745
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    :cond_1
    invoke-virtual {v3, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1755
    if-eqz v3, :cond_3

    .line 1759
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->f()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "template"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1761
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1764
    :cond_2
    invoke-static {v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->in2sdcard(Ljava/io/InputStream;Ljava/io/File;)V

    .line 1765
    const-string v2, "nexTemplateComposer"

    const-string v4, "bgm file copy assete to sdcard."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1767
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    .line 1768
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    const-string v0, "nexTemplateComposer"

    const-string v2, "bgm file found in sdcard."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    .line 1749
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    goto :goto_0

    .line 1769
    :catch_1
    move-exception v1

    .line 1771
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1773
    :try_start_2
    invoke-virtual {p0, p1, v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->in2file(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1775
    const-string v1, "nexTemplateComposer"

    const-string v2, "bgm file copy assete to temp data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMTempFile:Z

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    .line 1778
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1779
    :catch_2
    move-exception v0

    .line 1780
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1784
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->introCount:I

    .line 215
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->loopCount:I

    .line 216
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->tempClipID:I

    .line 217
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    .line 219
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/c;->a()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 242
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMTempFile:Z

    if-eqz v0, :cond_7

    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mBGMPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 247
    :cond_7
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    .line 249
    return-void
.end method

.method setCancel()V
    .locals 2

    .prologue
    .line 1883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    .line 1884
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    if-eqz v0, :cond_0

    .line 1885
    const-string v0, "nexTemplateComposer"

    const-string/jumbo v1, "setCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplate:Lcom/nexstreaming/nexeditorsdk/c;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/c;->h()V

    .line 1890
    :goto_0
    return-void

    .line 1888
    :cond_0
    const-string v0, "nexTemplateComposer"

    const-string/jumbo v1, "setCancel mTemplate is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setOverlappedTransitionFlag(Z)V
    .locals 0

    .prologue
    .line 780
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlappedTransition:Z

    .line 781
    return-void
.end method

.method setOverlay2Project()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 364
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;

    .line 370
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 372
    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 373
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->c()I

    move-result v1

    add-int v4, v0, v1

    .line 383
    const-string/jumbo v1, "vignette.png"

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v2

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v3

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->b()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->vignetteOverlayViaRatioMode(Ljava/lang/String;IIII)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    .line 387
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->clearAnimate()V

    .line 389
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->e()I

    move-result v1

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->f()I

    move-result v2

    invoke-static {v1, v2, v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 390
    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->g()I

    move-result v1

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$a;->h()I

    move-result v2

    invoke-static {v1, v2, v9, v8}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    goto :goto_0

    .line 406
    :cond_1
    return-void
.end method

.method setParameter2List(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 472
    const-string/jumbo v4, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    const-string v5, "scene"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    const-string v5, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 475
    const-string/jumbo v6, "source_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 476
    const-string v7, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 477
    const-string/jumbo v8, "volume"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 478
    const-string v9, "effects"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 479
    const-string v10, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 480
    const-string v11, "contrast"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 481
    const-string v12, "saturation"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 482
    const-string v13, "color_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 483
    const-string/jumbo v14, "speed_control"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 484
    const-string/jumbo v15, "vignette"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 485
    const-string v16, "lut"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 486
    const-string v17, "external_video_path"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 487
    const-string v18, "external_image_path"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 488
    const-string/jumbo v19, "solid_color"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 489
    const-string v20, "crop_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 490
    const-string v21, "image_crop_speed"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 491
    const-string/jumbo v22, "video_crop_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 492
    const-string v23, "image_crop_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 494
    const-string/jumbo v24, "type"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v4, "id"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v4, "source_type"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v4, "duration"

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string/jumbo v4, "volume"

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v4, "effects"

    invoke-virtual {v3, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v4, "brightness"

    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v4, "contrast"

    invoke-virtual {v3, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v4, "saturation"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v4, "color_filter"

    invoke-virtual {v3, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v4, "speed_control"

    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v4, "lut"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v4, "crop_mode"

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v4, "image_crop_speed"

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v4, "video_crop_mode"

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v4, "image_crop_mode"

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v4, "external_video_path"

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v4, "external_image_path"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v4, "solid_color"

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string/jumbo v4, "vignette"

    invoke-virtual {v3, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_0
    :goto_0
    return-object v3

    .line 516
    :cond_1
    const-string/jumbo v5, "transition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    const-string v5, "effects"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    const-string v6, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 520
    const-string/jumbo v7, "type"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v4, "effects"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v4, "duration"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method setProperty2Clips(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1578
    .line 1580
    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    const-string v0, "no clip in the project"

    .line 1642
    :goto_0
    return-object v0

    .line 1584
    :cond_0
    const-string/jumbo v0, "template 1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1590
    :goto_1
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    move v0, v1

    .line 1593
    :goto_2
    iget-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    if-eqz v2, :cond_2

    .line 1594
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    .line 1595
    const-string v0, "cancel template"

    goto :goto_0

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mIntroTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    goto :goto_1

    .line 1597
    :cond_2
    invoke-virtual {p1, v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v3

    .line 1599
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 1600
    invoke-virtual {p0, p1, v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setProperty2VideoClip(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;I)Ljava/lang/String;

    move-result-object v2

    .line 1601
    if-eqz v2, :cond_4

    move-object v0, v2

    .line 1602
    goto :goto_0

    .line 1604
    :cond_3
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 1605
    invoke-virtual {p0, v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setProperty2ImageClip(Lcom/nexstreaming/nexeditorsdk/nexClip;I)Ljava/lang/String;

    move-result-object v2

    .line 1606
    if-eqz v2, :cond_4

    move-object v0, v2

    .line 1607
    goto :goto_0

    .line 1611
    :cond_4
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1612
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 1613
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1616
    :cond_5
    add-int/lit8 v2, v0, 0x1

    .line 1618
    const-string/jumbo v0, "template 1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1619
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_6

    .line 1620
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    .line 1621
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1625
    :goto_3
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1627
    :cond_6
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    if-ne v0, v4, :cond_7

    .line 1628
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateTypeCountList:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    if-ne v2, v0, :cond_7

    .line 1629
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOutroTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    .line 1630
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1635
    :cond_7
    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-ne v2, v0, :cond_8

    .line 1636
    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 1637
    invoke-virtual {v3, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    .line 1639
    :cond_8
    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v0

    if-lt v2, v0, :cond_a

    .line 1641
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1642
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1623
    :cond_9
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mLoopTemplateList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_2
.end method

.method setProperty2ImageClip(Lcom/nexstreaming/nexeditorsdk/nexClip;I)Ljava/lang/String;
    .locals 11

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1471
    const-string v1, "scene"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1472
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "contrast"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "-1"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1473
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "-1"

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1474
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "saturation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "-1"

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1475
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "color_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "-1"

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1476
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "effects"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1477
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "lut"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1478
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string/jumbo v3, "vignette"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1479
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v8, "crop_mode"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1480
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1481
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v8, "image_crop_mode"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1485
    :cond_0
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    .line 1487
    const-string v8, "none"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1488
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectNone()V

    .line 1493
    :goto_4
    const/4 v0, -0x1

    if-eq v5, v0, :cond_1

    .line 1494
    invoke-virtual {p1, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setBrightness(I)Z

    .line 1496
    :cond_1
    const/4 v0, -0x1

    if-eq v4, v0, :cond_2

    .line 1497
    invoke-virtual {p1, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setContrast(I)Z

    .line 1499
    :cond_2
    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    .line 1500
    invoke-virtual {p1, v6}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setSaturation(I)Z

    .line 1502
    :cond_3
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    .line 1503
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getColorEffect(I)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1505
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    :goto_5
    packed-switch v0, :pswitch_data_0

    .line 1528
    :goto_6
    if-eqz v1, :cond_7

    .line 1529
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1530
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v0

    .line 1531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 1532
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1533
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1539
    :cond_7
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1540
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v3, "clip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1541
    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1542
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setVignetteEffect(Z)V

    .line 1550
    :cond_8
    :goto_7
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1551
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1552
    const-string/jumbo v1, "transition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1553
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "effects"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1554
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "-1"

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1555
    iget-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlappedTransition:Z

    if-eqz v2, :cond_13

    .line 1556
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1557
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 1558
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :cond_9
    :goto_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 1472
    :cond_a
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "contrast"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 1473
    :cond_b
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    .line 1474
    :cond_c
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "saturation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    .line 1475
    :cond_d
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "color_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_3

    .line 1490
    :cond_e
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {p1, v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 1491
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectEndTime()I

    move-result v9

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectStartTime()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectShowTime(II)V
    :try_end_1
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1505
    :sswitch_0
    :try_start_2
    const-string v4, "fill"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    goto/16 :goto_5

    :sswitch_1
    const-string v4, "pan_rand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_5

    :sswitch_2
    const-string v4, "pan_face"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    goto/16 :goto_5

    :sswitch_3
    const-string v4, "fit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    goto/16 :goto_5

    .line 1507
    :pswitch_0
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_6

    .line 1511
    :pswitch_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_6

    .line 1515
    :pswitch_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_6

    .line 1519
    :pswitch_3
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_6

    .line 1544
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setVignetteEffect(Z)V

    goto/16 :goto_7

    .line 1546
    :cond_10
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "overlay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1547
    invoke-virtual {p0, p2, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->addTemplateOverlay(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1554
    :cond_11
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_8

    .line 1560
    :cond_12
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 1561
    const/4 v0, -0x1

    if-eq v1, v0, :cond_9

    .line 1562
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    goto/16 :goto_9

    .line 1566
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 1567
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V
    :try_end_2
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9

    .line 1505
    :sswitch_data_0
    .sparse-switch
        0x18c11 -> :sswitch_3
        0x2ff583 -> :sswitch_0
        0x3edfb8bf -> :sswitch_2
        0x3ee52e87 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setProperty2VideoClip(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexClip;I)Ljava/lang/String;
    .locals 14

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "volume"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "-1"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1307
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "contrast"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "-1"

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1308
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "brightness"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "-1"

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1309
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "saturation"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "-1"

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1310
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "color_filter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "-1"

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1311
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "speed_control"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "-1"

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1312
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "effects"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1313
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "lut"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1314
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string/jumbo v4, "vignette"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1315
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "crop_mode"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1316
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1317
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string/jumbo v6, "video_crop_mode"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    .line 1321
    :goto_6
    :try_start_0
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1322
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectNone()V

    move v1, v5

    .line 1352
    :goto_7
    const/4 v4, -0x1

    if-eq v7, v4, :cond_0

    .line 1353
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    .line 1355
    :cond_0
    const/4 v4, -0x1

    if-eq v9, v4, :cond_1

    .line 1356
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setBrightness(I)Z

    .line 1358
    :cond_1
    const/4 v4, -0x1

    if-eq v8, v4, :cond_2

    .line 1359
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setContrast(I)Z

    .line 1361
    :cond_2
    const/4 v4, -0x1

    if-eq v10, v4, :cond_3

    .line 1362
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setSaturation(I)Z

    .line 1364
    :cond_3
    const/4 v4, -0x1

    if-eq v11, v4, :cond_4

    .line 1365
    add-int/lit8 v4, v11, -0x1

    invoke-virtual {p0, v4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->getColorEffect(I)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1367
    :cond_4
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 1368
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setSpeedControl(I)V

    .line 1370
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_6
    :goto_8
    packed-switch v1, :pswitch_data_0

    .line 1393
    :goto_9
    if-eqz v2, :cond_7

    .line 1394
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1395
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateID:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1396
    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v1

    .line 1397
    if-eqz v1, :cond_7

    .line 1398
    const-string v2, "nexTemplateComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lut color effect set ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1412
    :cond_7
    :goto_a
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1413
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v4, "clip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1414
    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string/jumbo v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1415
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setVignetteEffect(Z)V

    .line 1423
    :cond_8
    :goto_b
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    .line 1424
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1425
    const-string/jumbo v2, "transition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1426
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "effects"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1427
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "-1"

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1428
    iget-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mOverlappedTransition:Z

    if-eqz v3, :cond_1a

    .line 1429
    move/from16 v0, p3

    invoke-virtual {p1, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTransitionDurationTimeGuideLine(II)[I

    move-result-object v3

    .line 1430
    const/4 v4, 0x0

    aget v4, v3, v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    aget v3, v3, v4

    if-nez v3, :cond_18

    .line 1431
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 1432
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :cond_9
    :goto_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    .line 1306
    :cond_a
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "volume"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_0

    .line 1307
    :cond_b
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "contrast"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1

    .line 1308
    :cond_c
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "brightness"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_2

    .line 1309
    :cond_d
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "saturation"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_3

    .line 1310
    :cond_e
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "color_filter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_4

    .line 1311
    :cond_f
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "speed_control"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_5

    .line 1324
    :cond_10
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffect(Ljava/lang/String;)V

    .line 1326
    iget-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    if-eqz v4, :cond_1b

    .line 1327
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v4

    const/16 v12, 0x64

    if-eq v4, v12, :cond_1b

    .line 1328
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->getSpeedControl()I

    move-result v5

    move v4, v5

    .line 1331
    :goto_f
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setEffectShowTime(II)V

    .line 1344
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1345
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1346
    const-string v5, ".opening"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, ".middle"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, ".ending"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1347
    :cond_11
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    const/4 v5, 0x0

    const-string v12, " "

    invoke-virtual {v1, v5, v12}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setTitle(ILjava/lang/String;)V

    .line 1348
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexClipEffect;

    move-result-object v1

    const/4 v5, 0x1

    const-string v12, " "

    invoke-virtual {v1, v5, v12}, Lcom/nexstreaming/nexeditorsdk/nexClipEffect;->setTitle(ILjava/lang/String;)V

    :cond_12
    move v1, v4

    goto/16 :goto_7

    .line 1370
    :sswitch_0
    const-string v4, "fill"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_8

    :sswitch_1
    const-string v4, "pan_rand"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_8

    :sswitch_2
    const-string v4, "pan_face"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x2

    goto/16 :goto_8

    :sswitch_3
    const-string v4, "fit"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x3

    goto/16 :goto_8

    .line 1372
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v1, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V
    :try_end_1
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 1449
    :catch_0
    move-exception v1

    .line 1450
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 1376
    :pswitch_1
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v1, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_9

    .line 1380
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_FACE:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v1, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_9

    .line 1384
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getCrop()Lcom/nexstreaming/nexeditorsdk/nexCrop;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {v1, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto/16 :goto_9

    .line 1402
    :cond_13
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetList()Ljava/util/List;

    move-result-object v1

    .line 1403
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    .line 1404
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getPresetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1405
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    goto/16 :goto_a

    .line 1417
    :cond_15
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setVignetteEffect(Z)V

    goto/16 :goto_b

    .line 1419
    :cond_16
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "overlay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1420
    move/from16 v0, p3

    invoke-virtual {p0, v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->addTemplateOverlay(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 1427
    :cond_17
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->templateListID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_c

    .line 1434
    :cond_18
    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1435
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 1436
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    goto/16 :goto_d

    .line 1438
    :cond_19
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setTransitionEffect(Ljava/lang/String;)V

    .line 1439
    const/4 v1, -0x1

    if-eq v2, v1, :cond_9

    .line 1440
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V

    goto/16 :goto_d

    .line 1445
    :cond_1a
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setEffectNone()V

    .line 1446
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTransitionEffect(Z)Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTransitionEffect;->setDuration(I)V
    :try_end_2
    .catch Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_d

    :cond_1b
    move v4, v5

    goto/16 :goto_f

    :cond_1c
    move-object v6, v4

    goto/16 :goto_6

    .line 1370
    nop

    :sswitch_data_0
    .sparse-switch
        0x18c11 -> :sswitch_3
        0x2ff583 -> :sswitch_0
        0x3edfb8bf -> :sswitch_2
        0x3ee52e87 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setTemplateEffect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->parsingJSONFile(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    const-string/jumbo v1, "template 1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->consistProjectViaVer1(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 415
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    if-eqz v0, :cond_2

    .line 416
    const-string v0, "cancel template"

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setProperty2Clips(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_1
    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setOverlay2Project()V

    .line 437
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    const-string/jumbo v1, "template 1.x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->consistProjectViaVer2(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 421
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mCancel:Z

    if-eqz v0, :cond_4

    .line 422
    const-string v0, "cancel template"

    goto :goto_0

    .line 425
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mTemplateVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setProperty2Clips(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mProject:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->applyTemplateOnProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setTemplateEffects2Project(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/nexeditorsdk/exception/nexSDKException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->initTemplateComposer(Lcom/nexstreaming/nexeditorsdk/nexProject;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->setTemplateEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setUseProjectSpeed(Z)V
    .locals 0

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;->mUseProjectSpeed:Z

    .line 776
    return-void
.end method

.method vignetteOverlayViaRatioMode(Ljava/lang/String;IIII)Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
    .locals 6

    .prologue
    .line 331
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    const-string/jumbo v2, "template_overlay"

    new-instance v3, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateComposer;Ljava/lang/String;II)V

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;-><init>(Ljava/lang/String;IILcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;)V

    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p3, 0x2

    add-int v5, p4, p5

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IIII)V

    return-object v0
.end method
