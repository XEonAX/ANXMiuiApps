.class public final Lcom/miui/gallery/util/FileSizeFormatter;
.super Ljava/lang/Object;
.source "FileSizeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;
    }
.end annotation


# direct methods
.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-static {p0}, Lcom/miui/gallery/util/FileSizeFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 65
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 66
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    .end local p1    # "source":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;
    .locals 21
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    .prologue
    .line 110
    and-int/lit8 v15, p3, 0x8

    if-eqz v15, :cond_8

    const/16 v13, 0x400

    .line 111
    .local v13, "unit":I
    :goto_0
    const-wide/16 v16, 0x0

    cmp-long v15, p1, v16

    if-gez v15, :cond_9

    const/4 v2, 0x1

    .line 112
    .local v2, "isNegative":Z
    :goto_1
    if-eqz v2, :cond_a

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v6, v0

    .line 113
    .local v6, "result":F
    :goto_2
    const v12, 0x7f0c00c8

    .line 114
    .local v12, "suffix":I
    const-wide/16 v4, 0x1

    .line 115
    .local v4, "mult":J
    const/high16 v15, 0x44610000    # 900.0f

    cmpl-float v15, v6, v15

    if-lez v15, :cond_0

    .line 116
    const v12, 0x7f0c027b

    .line 117
    int-to-long v4, v13

    .line 118
    int-to-float v15, v13

    div-float/2addr v6, v15

    .line 120
    :cond_0
    const/high16 v15, 0x44610000    # 900.0f

    cmpl-float v15, v6, v15

    if-lez v15, :cond_1

    .line 121
    const v12, 0x7f0c02a1

    .line 122
    int-to-long v0, v13

    move-wide/from16 v16, v0

    mul-long v4, v4, v16

    .line 123
    int-to-float v15, v13

    div-float/2addr v6, v15

    .line 125
    :cond_1
    const/high16 v15, 0x44610000    # 900.0f

    cmpl-float v15, v6, v15

    if-lez v15, :cond_2

    .line 126
    const v12, 0x7f0c023d

    .line 127
    int-to-long v0, v13

    move-wide/from16 v16, v0

    mul-long v4, v4, v16

    .line 128
    int-to-float v15, v13

    div-float/2addr v6, v15

    .line 130
    :cond_2
    const/high16 v15, 0x44610000    # 900.0f

    cmpl-float v15, v6, v15

    if-lez v15, :cond_3

    .line 131
    const v12, 0x7f0c04d6

    .line 132
    int-to-long v0, v13

    move-wide/from16 v16, v0

    mul-long v4, v4, v16

    .line 133
    int-to-float v15, v13

    div-float/2addr v6, v15

    .line 135
    :cond_3
    const/high16 v15, 0x44610000    # 900.0f

    cmpl-float v15, v6, v15

    if-lez v15, :cond_4

    .line 136
    const v12, 0x7f0c0345

    .line 137
    int-to-long v0, v13

    move-wide/from16 v16, v0

    mul-long v4, v4, v16

    .line 138
    int-to-float v15, v13

    div-float/2addr v6, v15

    .line 145
    :cond_4
    const-wide/16 v16, 0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_5

    const/high16 v15, 0x42c80000    # 100.0f

    cmpl-float v15, v6, v15

    if-ltz v15, :cond_b

    .line 146
    :cond_5
    const/4 v7, 0x1

    .line 147
    .local v7, "roundFactor":I
    const-string v8, "%.0f"

    .line 169
    .local v8, "roundFormat":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_6

    .line 170
    neg-float v6, v6

    .line 173
    :cond_6
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "roundedString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 175
    .local v3, "length":I
    const/4 v15, 0x3

    if-le v3, v15, :cond_10

    add-int/lit8 v15, v3, -0x3

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    add-int/lit8 v15, v3, -0x2

    .line 176
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    add-int/lit8 v15, v3, -0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 177
    const/4 v15, 0x0

    add-int/lit8 v16, v3, -0x3

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 185
    :cond_7
    :goto_4
    and-int/lit8 v15, p3, 0x2

    if-nez v15, :cond_11

    const-wide/16 v10, 0x0

    .line 189
    .local v10, "roundedBytes":J
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 191
    .local v14, "units":Ljava/lang/String;
    new-instance v15, Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;

    invoke-direct {v15, v9, v14, v10, v11}, Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v15

    .line 110
    .end local v2    # "isNegative":Z
    .end local v3    # "length":I
    .end local v4    # "mult":J
    .end local v6    # "result":F
    .end local v7    # "roundFactor":I
    .end local v8    # "roundFormat":Ljava/lang/String;
    .end local v9    # "roundedString":Ljava/lang/String;
    .end local v10    # "roundedBytes":J
    .end local v12    # "suffix":I
    .end local v13    # "unit":I
    .end local v14    # "units":Ljava/lang/String;
    :cond_8
    const/16 v13, 0x3e8

    goto/16 :goto_0

    .line 111
    .restart local v13    # "unit":I
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 112
    .restart local v2    # "isNegative":Z
    :cond_a
    move-wide/from16 v0, p1

    long-to-float v6, v0

    goto/16 :goto_2

    .line 148
    .restart local v4    # "mult":J
    .restart local v6    # "result":F
    .restart local v12    # "suffix":I
    :cond_b
    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v15, v6, v15

    if-gez v15, :cond_c

    .line 149
    const/16 v7, 0x64

    .line 150
    .restart local v7    # "roundFactor":I
    const-string v8, "%.2f"

    .restart local v8    # "roundFormat":Ljava/lang/String;
    goto :goto_3

    .line 151
    .end local v7    # "roundFactor":I
    .end local v8    # "roundFormat":Ljava/lang/String;
    :cond_c
    const/high16 v15, 0x41200000    # 10.0f

    cmpg-float v15, v6, v15

    if-gez v15, :cond_e

    .line 152
    and-int/lit8 v15, p3, 0x1

    if-eqz v15, :cond_d

    .line 153
    const/16 v7, 0xa

    .line 154
    .restart local v7    # "roundFactor":I
    const-string v8, "%.1f"

    .restart local v8    # "roundFormat":Ljava/lang/String;
    goto :goto_3

    .line 156
    .end local v7    # "roundFactor":I
    .end local v8    # "roundFormat":Ljava/lang/String;
    :cond_d
    const/16 v7, 0x64

    .line 157
    .restart local v7    # "roundFactor":I
    const-string v8, "%.2f"

    .restart local v8    # "roundFormat":Ljava/lang/String;
    goto/16 :goto_3

    .line 160
    .end local v7    # "roundFactor":I
    .end local v8    # "roundFormat":Ljava/lang/String;
    :cond_e
    and-int/lit8 v15, p3, 0x1

    if-eqz v15, :cond_f

    .line 161
    const/4 v7, 0x1

    .line 162
    .restart local v7    # "roundFactor":I
    const-string v8, "%.0f"

    .restart local v8    # "roundFormat":Ljava/lang/String;
    goto/16 :goto_3

    .line 164
    .end local v7    # "roundFactor":I
    .end local v8    # "roundFormat":Ljava/lang/String;
    :cond_f
    const/16 v7, 0x64

    .line 165
    .restart local v7    # "roundFactor":I
    const-string v8, "%.2f"

    .restart local v8    # "roundFormat":Ljava/lang/String;
    goto/16 :goto_3

    .line 178
    .restart local v3    # "length":I
    .restart local v9    # "roundedString":Ljava/lang/String;
    :cond_10
    const/4 v15, 0x2

    if-le v3, v15, :cond_7

    add-int/lit8 v15, v3, -0x2

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    add-int/lit8 v15, v3, -0x1

    .line 179
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 180
    const/4 v15, 0x0

    add-int/lit8 v16, v3, -0x2

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 185
    :cond_11
    int-to-float v15, v7

    mul-float/2addr v15, v6

    .line 187
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    mul-long v16, v16, v4

    int-to-long v0, v7

    move-wide/from16 v18, v0

    div-long v10, v16, v18

    goto :goto_5
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string v1, ""

    .line 105
    :goto_0
    return-object v1

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, p1, p2, v2}, Lcom/miui/gallery/util/FileSizeFormatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;

    move-result-object v0

    .line 105
    .local v0, "res":Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;
    const v1, 0x7f0c01f5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/miui/gallery/util/FileSizeFormatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/FileSizeFormatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method
