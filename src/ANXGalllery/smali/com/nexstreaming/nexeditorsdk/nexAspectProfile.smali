.class public Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
.super Ljava/lang/Object;
.source "nexAspectProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;
    }
.end annotation


# static fields
.field public static final ExportProfileLevel_HIGH:I = 0x1

.field public static final ExportProfileLevel_LOW:I = 0x3

.field public static final ExportProfileLevel_MID:I = 0x2

.field public static final ExportProfileLevel_NONE:I = 0x0

.field public static final ar16v9:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ar1v1:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ar1v2:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ar2v1:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ar3v4:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ar4v3:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ar9v16:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field public static final ardef:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

.field private static final aspects:[F

.field private static final export_land_heights:[I

.field private static final export_max:I = 0x1fa400

.field private static final export_port_heights:[I


# instance fields
.field private aspectMode:I

.field private aspectRatio:F

.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x3c0

    const/4 v5, 0x7

    const/16 v2, 0x500

    const/4 v4, 0x6

    const/16 v3, 0x2d0

    .line 37
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->export_land_heights:[I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->export_port_heights:[I

    .line 40
    new-array v0, v5, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspects:[F

    .line 42
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ardef:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 43
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar16v9:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 44
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/4 v1, 0x2

    invoke-direct {v0, v3, v3, v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar1v1:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 45
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar9v16:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 46
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/16 v1, 0x5a0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar2v1:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 47
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/16 v1, 0x5a0

    const/4 v2, 0x5

    invoke-direct {v0, v3, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar1v2:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 48
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-direct {v0, v6, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar4v3:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    .line 49
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    invoke-direct {v0, v3, v6, v5}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;-><init>(III)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar3v4:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    return-void

    .line 37
    :array_0
    .array-data 4
        0x438
        0x2d0
        0x1e0
        0x168
        0xf0
        0xa0
    .end array-data

    .line 38
    :array_1
    .array-data 4
        0x780
        0x500
        0x280
        0x280
        0x140
        0xf0
    .end array-data

    .line 40
    :array_2
    .array-data 4
        0x3fe38e39
        0x3f800000    # 1.0f
        0x3f100000    # 0.5625f
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
        0x3faaaaab
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 4

    .prologue
    const/16 v0, 0x2d0

    const/high16 v2, 0x44340000    # 720.0f

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectMode:I

    .line 180
    if-le p1, p2, :cond_0

    .line 181
    int-to-float v1, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 189
    :goto_0
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->width:I

    .line 190
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->height:I

    .line 191
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectRatio:F

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectMode(Z)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectMode:I

    .line 193
    return-void

    .line 186
    :cond_0
    int-to-float v1, p2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method private constructor <init>(III)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectMode:I

    .line 163
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->width:I

    .line 164
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->height:I

    .line 165
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectRatio:F

    .line 166
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectMode:I

    .line 167
    return-void
.end method

.method public static aspect2ReduceFraction(III)[I
    .locals 1

    .prologue
    .line 410
    const/16 v0, 0x5a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_1

    .line 411
    :cond_0
    invoke-static {p1, p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->reduceFraction(II)[I

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->reduceFraction(II)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static gcd(II)I
    .locals 1

    .prologue
    .line 437
    :goto_0
    if-eqz p1, :cond_0

    .line 438
    rem-int v0, p0, p1

    move p0, p1

    move p1, v0

    .line 441
    goto :goto_0

    .line 443
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static getAspectProfile(I)Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    if-gtz p0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getPresetList()Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p0, :cond_0

    .line 159
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    goto :goto_0
.end method

.method public static getPresetList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    const/4 v1, 0x0

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ardef:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar16v9:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar1v1:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar9v16:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar2v1:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar1v2:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar4v3:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->ar3v4:Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSimilarAspectMode(F)I
    .locals 5

    .prologue
    .line 351
    const/high16 v2, 0x40400000    # 3.0f

    .line 352
    const/4 v1, 0x1

    .line 353
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspects:[F

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 354
    sget-object v3, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspects:[F

    aget v3, v3, v0

    sub-float v3, p0, v3

    .line 355
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    .line 356
    :cond_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    move v1, v0

    move v2, v3

    .line 353
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_2
    add-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public static getSimilarAspectMode(III)I
    .locals 6

    .prologue
    .line 384
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 385
    const/16 v1, 0x5a

    if-eq p2, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p2, v1, :cond_1

    .line 386
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    .line 389
    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    .line 390
    const/4 v2, 0x1

    .line 391
    const/4 v1, 0x0

    :goto_0
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspects:[F

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 392
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspects:[F

    aget v4, v4, v1

    sub-float v4, v0, v4

    .line 393
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    .line 394
    :cond_2
    cmpl-float v5, v3, v4

    if-lez v5, :cond_3

    move v2, v1

    move v3, v4

    .line 391
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_4
    add-int/lit8 v0, v2, 0x1

    return v0
.end method

.method private static reduceFraction(II)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 417
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 418
    aput p0, v0, v3

    .line 419
    aput p1, v0, v4

    .line 421
    aget v1, v0, v4

    if-nez v1, :cond_0

    .line 422
    aput v3, v0, v3

    .line 423
    aput v3, v0, v4

    .line 432
    :goto_0
    return-object v0

    .line 427
    :cond_0
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->gcd(II)I

    move-result v1

    .line 429
    aget v2, v0, v3

    div-int/2addr v2, v1

    aput v2, v0, v3

    .line 430
    aget v2, v0, v4

    div-int v1, v2, v1

    aput v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public aspect2ReduceFraction()[I
    .locals 3

    .prologue
    .line 330
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->width:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->height:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspect2ReduceFraction(III)[I

    move-result-object v0

    return-object v0
.end method

.method public getAspectMode()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectMode:I

    return v0
.end method

.method getAspectMode(Z)I
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v0

    .line 226
    const v1, 0x3fe38e39

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 228
    :cond_0
    const/high16 v1, 0x3f100000    # 0.5625f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 229
    const/4 v0, 0x3

    goto :goto_0

    .line 230
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 231
    const/4 v0, 0x4

    goto :goto_0

    .line 232
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    .line 233
    const/4 v0, 0x2

    goto :goto_0

    .line 234
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    .line 235
    const/4 v0, 0x5

    goto :goto_0

    .line 236
    :cond_4
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 237
    const/4 v0, 0x7

    goto :goto_0

    .line 238
    :cond_5
    const v1, 0x3faaaaab

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 239
    const/4 v0, 0x6

    goto :goto_0

    .line 241
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->aspectRatio:F

    return v0
.end method

.method public getExportProfiles()[Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x600000

    const/4 v9, 0x0

    const/4 v13, 0x3

    .line 270
    new-array v10, v13, [Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;

    .line 271
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->export_land_heights:[I

    .line 273
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->isLandscapeMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 274
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->export_port_heights:[I

    move-object v6, v0

    .line 276
    :goto_0
    array-length v11, v6

    move v8, v9

    move v7, v9

    :goto_1
    if-ge v8, v11, :cond_0

    aget v3, v6, v8

    .line 277
    const v0, 0x49fd2000    # 2073600.0f

    mul-int v1, v3, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 278
    int-to-float v0, v3

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;

    add-int/lit8 v1, v7, 0x1

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v12

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;-><init>(IIIILcom/nexstreaming/nexeditorsdk/nexAspectProfile$1;)V

    aput-object v0, v10, v7

    .line 280
    add-int/lit8 v0, v7, 0x1

    .line 281
    if-ne v0, v13, :cond_2

    move v7, v0

    .line 288
    :cond_0
    if-ge v7, v13, :cond_3

    move v6, v7

    .line 289
    :goto_2
    if-ge v6, v13, :cond_3

    .line 290
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getHeight()I

    move-result v3

    move v1, v9

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile$ExportProfile;-><init>(IIIILcom/nexstreaming/nexeditorsdk/nexAspectProfile$1;)V

    aput-object v0, v10, v7

    .line 289
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    move v0, v7

    .line 276
    :cond_2
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_1

    .line 294
    :cond_3
    return-object v10

    :cond_4
    move-object v6, v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->height:I

    return v0
.end method

.method public getSimilarAspectMode()I
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getAspectRatio()F

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getSimilarAspectMode(F)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->width:I

    return v0
.end method

.method public isLandscapeMode()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->width:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->height:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
