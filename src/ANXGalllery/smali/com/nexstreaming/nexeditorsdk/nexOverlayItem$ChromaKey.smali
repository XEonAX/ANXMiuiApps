.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;
.super Ljava/lang/Object;
.source "nexOverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChromaKey"
.end annotation


# static fields
.field private static final CHROMA_DEF_BLEND_X0:F = 0.25f

.field private static final CHROMA_DEF_BLEND_X1:F = 0.75f

.field private static final CHROMA_DEF_BLEND_Y0:F = 0.25f

.field private static final CHROMA_DEF_BLEND_Y1:F = 0.75f

.field private static final CHROMA_DEF_CLIP_BG:F = 0.5f

.field private static final CHROMA_DEF_CLIP_FG:F = 0.72f

.field private static final CHROMA_DEF_COLOR:I = -0xff0100

.field private static final CHROMA_UNSET_COLOR:I


# instance fields
.field private m_chromaKeyBlend_x0:F

.field private m_chromaKeyBlend_x1:F

.field private m_chromaKeyBlend_y0:F

.field private m_chromaKeyBlend_y1:F

.field private m_chromaKeyClipBG:F

.field private m_chromaKeyClipFG:F

.field private m_chromaKeyColor:I

.field private m_chromaKeyDivisions:[F

.field private m_chromaKeyEnabled:Z

.field private m_chromaKeyMaskEnabled:Z

.field private m_chromaKeyStrengths:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 2026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2035
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyDivisions:[F

    .line 2036
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyStrengths:[F

    .line 2037
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyColor:I

    .line 2040
    const v0, 0x3f3851ec    # 0.72f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipFG:F

    .line 2041
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipBG:F

    .line 2042
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x0:F

    .line 2043
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y0:F

    .line 2044
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x1:F

    .line 2045
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y1:F

    return-void

    .line 2035
    nop

    :array_0
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f266666    # 0.65f
    .end array-data

    .line 2036
    :array_1
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)I
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipFG:F

    return v0
.end method

.method static synthetic access$400(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipBG:F

    return v0
.end method

.method static synthetic access$500(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x0:F

    return v0
.end method

.method static synthetic access$600(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y0:F

    return v0
.end method

.method static synthetic access$700(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x1:F

    return v0
.end method

.method static synthetic access$800(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;)F
    .locals 1

    .prologue
    .line 2026
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y1:F

    return v0
.end method

.method public static getChromaKeyRecommendedColors(Landroid/graphics/Bitmap;)[I
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x43b40000    # 360.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 2055
    if-eqz p0, :cond_9

    .line 2057
    const/4 v0, 0x3

    new-array v9, v0, [F

    .line 2058
    const/16 v0, 0x168

    new-array v10, v0, [I

    .line 2059
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 2060
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    .line 2061
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 2062
    aget v3, v1, v0

    invoke-static {v3, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 2063
    aget v3, v9, v13

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x2

    aget v3, v9, v3

    const v4, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 2061
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2065
    :cond_1
    aget v3, v9, v2

    div-float/2addr v3, v12

    mul-float/2addr v3, v12

    float-to-int v3, v3

    rem-int/lit16 v3, v3, 0x168

    .line 2066
    aget v4, v10, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2069
    :goto_2
    array-length v1, v10

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2074
    :cond_3
    const/16 v0, 0xe

    new-array v6, v0, [I

    move v0, v2

    move v1, v2

    .line 2075
    :goto_3
    array-length v3, v6

    if-ge v0, v3, :cond_6

    move v5, v2

    move v3, v8

    move v4, v8

    .line 2079
    :goto_4
    const/16 v7, 0x168

    if-ge v5, v7, :cond_5

    .line 2080
    aget v7, v10, v5

    if-le v7, v3, :cond_4

    .line 2081
    aget v3, v10, v5

    move v4, v5

    .line 2079
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2086
    :cond_5
    if-ltz v4, :cond_6

    const/4 v5, 0x5

    if-ge v3, v5, :cond_7

    .line 2098
    :cond_6
    array-length v0, v6

    if-ge v1, v0, :cond_a

    .line 2099
    new-array v0, v1, [I

    .line 2100
    invoke-static {v6, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2105
    :goto_5
    return-object v0

    .line 2089
    :cond_7
    mul-int/lit16 v3, v4, 0x168

    div-int/lit16 v3, v3, 0x168

    int-to-float v3, v3

    aput v3, v9, v2

    .line 2090
    aput v11, v9, v13

    .line 2091
    const/4 v3, 0x2

    aput v11, v9, v3

    .line 2092
    invoke-static {v9}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v6, v1

    .line 2093
    add-int/lit8 v1, v1, 0x1

    .line 2094
    add-int/lit8 v3, v4, -0x3

    :goto_6
    add-int/lit8 v5, v4, 0x3

    if-ge v3, v5, :cond_8

    .line 2095
    add-int/lit16 v5, v3, 0x168

    rem-int/lit16 v5, v5, 0x168

    aput v8, v10, v5

    .line 2094
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2075
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2105
    :cond_9
    new-array v0, v2, [I

    goto :goto_5

    :cond_a
    move-object v0, v6

    goto :goto_5
.end method


# virtual methods
.method public getChromaKeyBGClip()F
    .locals 1

    .prologue
    .line 2232
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipBG:F

    return v0
.end method

.method public getChromaKeyBlend([F)V
    .locals 2

    .prologue
    .line 2253
    const/4 v0, 0x0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x0:F

    aput v1, p1, v0

    .line 2254
    const/4 v0, 0x1

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y0:F

    aput v1, p1, v0

    .line 2255
    const/4 v0, 0x2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x1:F

    aput v1, p1, v0

    .line 2256
    const/4 v0, 0x3

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y1:F

    aput v1, p1, v0

    .line 2257
    return-void
.end method

.method public getChromaKeyColor()I
    .locals 1

    .prologue
    .line 2151
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyColor:I

    return v0
.end method

.method public getChromaKeyDivisions([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2114
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyDivisions:[F

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyDivisions:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2115
    return-void
.end method

.method public getChromaKeyEnabled()Z
    .locals 1

    .prologue
    .line 2169
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyEnabled:Z

    return v0
.end method

.method public getChromaKeyFGClip()F
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipFG:F

    return v0
.end method

.method public getChromaKeyMaskEnabled()Z
    .locals 1

    .prologue
    .line 2187
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyMaskEnabled:Z

    return v0
.end method

.method public getChromaKeyStrengths([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2123
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyStrengths:[F

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyStrengths:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2124
    return-void
.end method

.method public setChromaKeyBGClip(F)V
    .locals 0

    .prologue
    .line 2214
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipBG:F

    .line 2215
    return-void
.end method

.method public setChromaKeyBlend([F)V
    .locals 1

    .prologue
    .line 2241
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x0:F

    .line 2242
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y0:F

    .line 2243
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_x1:F

    .line 2244
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyBlend_y1:F

    .line 2245
    return-void
.end method

.method public setChromaKeyColor(I)V
    .locals 0

    .prologue
    .line 2160
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyColor:I

    .line 2161
    return-void
.end method

.method public setChromaKeyEnabled(Z)V
    .locals 0

    .prologue
    .line 2196
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyEnabled:Z

    .line 2197
    return-void
.end method

.method public setChromaKeyFGClip(F)V
    .locals 0

    .prologue
    .line 2205
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyClipFG:F

    .line 2206
    return-void
.end method

.method public setChromaKeyMaskEnabled(Z)V
    .locals 0

    .prologue
    .line 2178
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyMaskEnabled:Z

    .line 2179
    return-void
.end method

.method public setChromaKeyStrengths([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2132
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyStrengths:[F

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem$ChromaKey;->m_chromaKeyStrengths:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2133
    return-void
.end method
