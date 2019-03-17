.class public Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
.super Ljava/lang/Object;
.source "NexExportProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EXPORT_1080P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_1088P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_320_180:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_320_192:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_400_240:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_640_352:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_640_360:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_640_368:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_640_480:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_720P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_736P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_800_480:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_864_480:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_960_540:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field public static final EXPORT_960_544:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final m_bitrate:I

.field private final m_displayHeight:I

.field private final m_full_hd:Ljava/lang/String;

.field private final m_hd:Ljava/lang/String;

.field private final m_height:I

.field private final m_labelResource:I

.field private final m_low_quality:Ljava/lang/String;

.field private final m_med_quality:Ljava/lang/String;

.field private final m_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x280

    const/16 v9, 0x168

    const/4 v8, 0x3

    const/16 v7, 0x1e0

    const/4 v6, 0x4

    .line 32
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x780

    const/16 v2, 0x438

    const/16 v3, 0x438

    const/high16 v4, 0xc00000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_1080P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 33
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x780

    const/16 v2, 0x440

    const/16 v3, 0x438

    const/high16 v4, 0xc00000

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_1088P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 36
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const/16 v3, 0x2d0

    const/high16 v4, 0x600000

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_720P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 37
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x500

    const/16 v2, 0x2e0

    const/16 v3, 0x2d0

    const/high16 v4, 0x600000

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_736P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 40
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x3c0

    const/16 v2, 0x21c

    const/16 v3, 0x21c

    const/high16 v4, 0x300000

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_960_540:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 41
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x3c0

    const/16 v2, 0x220

    const/16 v3, 0x21c

    const/high16 v4, 0x300000

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_960_544:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 42
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x320

    const/high16 v4, 0x180000

    move v2, v7

    move v3, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_800_480:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 43
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x360

    const/high16 v4, 0x200000

    move v2, v7

    move v3, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_864_480:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 44
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/high16 v4, 0x180000

    move v1, v10

    move v2, v7

    move v3, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_640_480:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 47
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/high16 v4, 0x200000

    move v1, v10

    move v2, v9

    move v3, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_640_360:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 48
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v2, 0x170

    const/high16 v4, 0x200000

    move v1, v10

    move v3, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_640_368:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 49
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v2, 0x160

    const/high16 v4, 0x200000

    move v1, v10

    move v3, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_640_352:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 50
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x190

    const/16 v2, 0xf0

    const/16 v3, 0xf0

    const/high16 v4, 0x80000

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_400_240:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 53
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x140

    const/16 v2, 0xb4

    const/16 v3, 0xb4

    const/high16 v4, 0x80000

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_320_180:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 54
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/16 v1, 0x140

    const/16 v2, 0xc0

    const/16 v3, 0xb4

    const/high16 v4, 0x80000

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_320_192:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "Full HD"

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_full_hd:Ljava/lang/String;

    .line 27
    const-string v0, "High Definition"

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_hd:Ljava/lang/String;

    .line 28
    const-string v0, "Medium Quality"

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_med_quality:Ljava/lang/String;

    .line 29
    const-string v0, "Low Quality"

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_low_quality:Ljava/lang/String;

    .line 57
    iput p1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_width:I

    .line 58
    iput p2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_height:I

    .line 59
    iput p4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_bitrate:I

    .line 60
    iput p3, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_displayHeight:I

    .line 61
    iput p5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_labelResource:I

    .line 62
    return-void
.end method

.method public static getExportProfiles(II)Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v0, 0x5

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 138
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 140
    aget v3, v2, v0

    invoke-static {v3}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    aget v3, v2, v0

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 143
    if-nez v5, :cond_1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 146
    iget v4, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 148
    if-ge v3, v6, :cond_0

    if-ge v4, v6, :cond_0

    .line 150
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v6, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 155
    invoke-static {v6, v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    .line 161
    :goto_1
    if-nez v0, :cond_2

    .line 163
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    mul-int v1, p0, p1

    mul-int/lit8 v4, v1, 0x6

    .line 168
    invoke-static {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result v5

    move v1, p0

    move v2, p1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    .line 170
    :cond_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 136
    :array_0
    .array-data 4
        0x6
        0x5
        0x4
        0x3
        0x7
    .end array-data
.end method

.method public static getExportProfiles(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x3

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 112
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_1

    .line 116
    aget v0, v7, v6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    aget v0, v7, v6

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 119
    if-eqz v5, :cond_0

    iget v0, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v0, v1

    if-gt v0, p0, :cond_0

    .line 121
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v9, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 126
    invoke-static {v9, v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;-><init>(IIIII)V

    .line 127
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 131
    :cond_1
    return-object v8

    .line 110
    :array_0
    .array-data 4
        0x6
        0x5
        0x4
    .end array-data
.end method

.method public static getLabelResource(II)I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    const/16 v0, 0x2bc

    if-le p1, v0, :cond_1

    .line 101
    const/4 v0, 0x2

    goto :goto_0

    .line 102
    :cond_1
    const/16 v0, 0x1c2

    if-le p1, v0, :cond_2

    .line 103
    const/4 v0, 0x3

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static supportedProfiles()[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_1080P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_720P:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_960_540:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_640_360:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public bitrate()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_bitrate:I

    return v0
.end method

.method public displayHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_displayHeight:I

    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_height:I

    return v0
.end method

.method public label(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_labelResource:I

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_labelResource:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "Full HD"

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "High Definition"

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "Medium Quality"

    goto :goto_0

    .line 89
    :pswitch_3
    const-string v0, "Low Quality"

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public labelResource()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_labelResource:I

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->m_width:I

    return v0
.end method
