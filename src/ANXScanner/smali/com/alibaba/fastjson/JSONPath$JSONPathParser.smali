.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# instance fields
.field private ch:C

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 539
    return-void
.end method

.method static isDigitFirst(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1072
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accept(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    .line 1191
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, p1, :cond_0

    .line 1192
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1198
    :cond_1
    return-void
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 23
    .param p1, "indexText"    # Ljava/lang/String;

    .prologue
    .line 1231
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1232
    .local v10, "indexTextLen":I
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1233
    .local v7, "firstChar":C
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1235
    .local v14, "lastChar":C
    const/16 v20, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1237
    .local v4, "commaIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v7, v0, :cond_2

    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v14, v0, :cond_2

    .line 1239
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_0

    .line 1240
    const/16 v20, 0x1

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1241
    .local v15, "propertyName":Ljava/lang/String;
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    .line 1316
    .end local v15    # "propertyName":Ljava/lang/String;
    :goto_0
    return-object v20

    .line 1244
    :cond_0
    const-string v20, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1245
    .local v12, "indexesText":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1246
    .local v16, "propertyNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 1247
    aget-object v13, v12, v8

    .line 1248
    .local v13, "indexesTextItem":Ljava/lang/String;
    const/16 v20, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v16, v8

    .line 1246
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1251
    .end local v13    # "indexesTextItem":Ljava/lang/String;
    :cond_1
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    .end local v8    # "i":I
    .end local v12    # "indexesText":[Ljava/lang/String;
    .end local v16    # "propertyNames":[Ljava/lang/String;
    :cond_2
    const/16 v20, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1256
    .local v3, "colonIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_4

    .line 1257
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1259
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1260
    .local v9, "index":I
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1261
    .end local v9    # "index":I
    :catch_0
    move-exception v6

    .line 1262
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1265
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1269
    :cond_4
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    .line 1270
    const-string v20, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1271
    .restart local v12    # "indexesText":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 1272
    .local v11, "indexes":[I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 1273
    aget-object v20, v12, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v11, v8

    .line 1272
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1275
    :cond_5
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    goto/16 :goto_0

    .line 1278
    .end local v8    # "i":I
    .end local v11    # "indexes":[I
    .end local v12    # "indexesText":[Ljava/lang/String;
    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_e

    .line 1279
    const-string v20, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1280
    .restart local v12    # "indexesText":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 1281
    .restart local v11    # "indexes":[I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_9

    .line 1282
    aget-object v19, v12, v8

    .line 1283
    .local v19, "str":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_8

    .line 1284
    if-nez v8, :cond_7

    .line 1285
    const/16 v20, 0x0

    aput v20, v11, v8

    .line 1281
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1287
    :cond_7
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v20

    .line 1290
    :cond_8
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v11, v8

    goto :goto_4

    .line 1294
    .end local v19    # "str":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    aget v17, v11, v20

    .line 1296
    .local v17, "start":I
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 1297
    const/16 v20, 0x1

    aget v5, v11, v20

    .line 1302
    .local v5, "end":I
    :goto_5
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1303
    const/16 v20, 0x2

    aget v18, v11, v20

    .line 1308
    .local v18, "step":I
    :goto_6
    if-ltz v5, :cond_c

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 1309
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "end must greater than or equals start. start "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",  end "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1299
    .end local v5    # "end":I
    .end local v18    # "step":I
    :cond_a
    const/4 v5, -0x1

    .restart local v5    # "end":I
    goto :goto_5

    .line 1305
    :cond_b
    const/16 v18, 0x1

    .restart local v18    # "step":I
    goto :goto_6

    .line 1313
    :cond_c
    if-gtz v18, :cond_d

    .line 1314
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "step must greater than zero : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1316
    :cond_d
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    goto/16 :goto_0

    .line 1319
    .end local v5    # "end":I
    .end local v8    # "i":I
    .end local v11    # "indexes":[I
    .end local v12    # "indexesText":[Ljava/lang/String;
    .end local v17    # "start":I
    .end local v18    # "step":I
    :cond_e
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v20
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1201
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1202
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1205
    :cond_1
    const/16 v4, 0x8

    new-array v1, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1208
    .local v1, "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v2

    .line 1209
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-nez v2, :cond_2

    .line 1221
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-ne v4, v5, :cond_4

    .line 1227
    .end local v1    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_1
    return-object v1

    .line 1213
    .restart local v1    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-ne v4, v5, :cond_3

    .line 1214
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1215
    .local v3, "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1216
    move-object v1, v3

    .line 1218
    .end local v3    # "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v2, v1, v4

    goto :goto_0

    .line 1225
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    new-array v0, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1226
    .local v0, "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 1227
    goto :goto_1
.end method

.method isEOF()Z
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method next()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 543
    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 43
    .param p1, "acceptBracket"    # Z

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    const/16 v6, 0x5b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 649
    :cond_0
    const/16 v32, 0x0

    .line 651
    .local v32, "predicateFlag":Z
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_2

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 653
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 654
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x40

    if-ne v6, v7, :cond_1

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 656
    const/16 v6, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 659
    :cond_1
    const/16 v32, 0x1

    .line 662
    :cond_2
    if-nez v32, :cond_3

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 663
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v5

    .line 665
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 667
    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x29

    if-ne v6, v7, :cond_6

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 669
    if-eqz p1, :cond_4

    .line 670
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 673
    :cond_4
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    .line 1013
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v34

    .line 676
    .restart local v5    # "propertyName":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_7

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 678
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto :goto_0

    .line 681
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v30

    .line 683
    .local v30, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 685
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_8

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_e

    .line 686
    :cond_8
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_9

    const/4 v10, 0x1

    .line 688
    .local v10, "not":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v36

    .line 690
    .local v36, "startValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 692
    .local v29, "name":Ljava/lang/String;
    const-string v6, "and"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 693
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 686
    .end local v10    # "not":Z
    .end local v29    # "name":Ljava/lang/String;
    .end local v36    # "startValue":Ljava/lang/Object;
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 696
    .restart local v10    # "not":Z
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v36    # "startValue":Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v21

    .line 698
    .local v21, "endValue":Ljava/lang/Object;
    if-eqz v36, :cond_b

    if-nez v21, :cond_c

    .line 699
    :cond_b
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 702
    :cond_c
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 703
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v36, Ljava/lang/Number;

    .end local v36    # "startValue":Ljava/lang/Object;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    check-cast v21, Ljava/lang/Number;

    .line 704
    .end local v21    # "endValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 705
    .local v4, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 708
    .end local v4    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .restart local v21    # "endValue":Ljava/lang/Object;
    .restart local v36    # "startValue":Ljava/lang/Object;
    :cond_d
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 711
    .end local v10    # "not":Z
    .end local v21    # "endValue":Ljava/lang/Object;
    .end local v29    # "name":Ljava/lang/String;
    .end local v36    # "startValue":Ljava/lang/Object;
    :cond_e
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_f

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_24

    .line 712
    :cond_f
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_13

    const/4 v10, 0x1

    .line 713
    .restart local v10    # "not":Z
    :goto_2
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 715
    new-instance v39, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v39 .. v39}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 717
    .local v39, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v40

    .line 718
    .local v40, "value":Ljava/lang/Object;
    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 722
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_14

    .line 731
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 732
    if-eqz v32, :cond_10

    .line 733
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 736
    :cond_10
    if-eqz p1, :cond_11

    .line 737
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 741
    :cond_11
    const/16 v24, 0x1

    .line 742
    .local v24, "isInt":Z
    const/16 v25, 0x1

    .line 743
    .local v25, "isIntObj":Z
    const/16 v26, 0x1

    .line 744
    .local v26, "isString":Z
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .line 745
    .local v27, "item":Ljava/lang/Object;
    if-nez v27, :cond_15

    .line 746
    if-eqz v24, :cond_12

    .line 747
    const/16 v24, 0x0

    goto :goto_4

    .line 712
    .end local v10    # "not":Z
    .end local v24    # "isInt":Z
    .end local v25    # "isIntObj":Z
    .end local v26    # "isString":Z
    .end local v27    # "item":Ljava/lang/Object;
    .end local v39    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v40    # "value":Ljava/lang/Object;
    :cond_13
    const/4 v10, 0x0

    goto :goto_2

    .line 725
    .restart local v10    # "not":Z
    .restart local v39    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v40    # "value":Ljava/lang/Object;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v40

    .line 728
    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 752
    .restart local v24    # "isInt":Z
    .restart local v25    # "isIntObj":Z
    .restart local v26    # "isString":Z
    .restart local v27    # "item":Ljava/lang/Object;
    :cond_15
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 753
    .local v17, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v24, :cond_16

    const-class v7, Ljava/lang/Byte;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    const-class v7, Ljava/lang/Short;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    const-class v7, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    const-class v7, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    .line 755
    const/16 v24, 0x0

    .line 756
    const/16 v25, 0x0

    .line 759
    :cond_16
    if-eqz v26, :cond_12

    const-class v7, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_12

    .line 760
    const/16 v26, 0x0

    goto :goto_4

    .line 764
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v27    # "item":Ljava/lang/Object;
    :cond_17
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_19

    .line 765
    if-eqz v10, :cond_18

    .line 766
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 768
    :cond_18
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 772
    :cond_19
    if-eqz v24, :cond_1d

    .line 773
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b

    .line 774
    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v40

    .line 775
    .local v40, "value":J
    if-eqz v10, :cond_1a

    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 776
    .local v23, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_5
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    invoke-direct {v6, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 775
    .end local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1a
    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_5

    .line 779
    .local v40, "value":Ljava/lang/Object;
    :cond_1b
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [J

    move-object/from16 v42, v0

    .line 780
    .local v42, "values":[J
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_6
    move-object/from16 v0, v42

    array-length v6, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_1c

    .line 781
    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v42, v22

    .line 780
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 784
    :cond_1c
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 787
    .end local v22    # "i":I
    .end local v42    # "values":[J
    :cond_1d
    if-eqz v26, :cond_20

    .line 788
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 789
    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "value":Ljava/lang/Object;
    check-cast v40, Ljava/lang/String;

    .line 791
    .local v40, "value":Ljava/lang/String;
    if-eqz v10, :cond_1e

    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 792
    .restart local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_7
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-direct {v6, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 791
    .end local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1e
    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_7

    .line 795
    .local v40, "value":Ljava/lang/Object;
    :cond_1f
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 796
    .local v42, "values":[Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 798
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 801
    .end local v42    # "values":[Ljava/lang/String;
    :cond_20
    if-eqz v25, :cond_23

    .line 802
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/Long;

    move-object/from16 v42, v0

    .line 803
    .local v42, "values":[Ljava/lang/Long;
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_8
    move-object/from16 v0, v42

    array-length v6, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_22

    .line 804
    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Number;

    .line 805
    .local v27, "item":Ljava/lang/Number;
    if-eqz v27, :cond_21

    .line 806
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v42, v22

    .line 803
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 810
    .end local v27    # "item":Ljava/lang/Number;
    :cond_22
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 813
    .end local v22    # "i":I
    .end local v42    # "values":[Ljava/lang/Long;
    :cond_23
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 816
    .end local v10    # "not":Z
    .end local v24    # "isInt":Z
    .end local v25    # "isIntObj":Z
    .end local v26    # "isString":Z
    .end local v39    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v40    # "value":Ljava/lang/Object;
    :cond_24
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x27

    if-eq v6, v7, :cond_25

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x22

    if-ne v6, v7, :cond_36

    .line 817
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v37

    .line 818
    .local v37, "strValue":Ljava/lang/String;
    if-eqz v32, :cond_26

    .line 819
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 822
    :cond_26
    if-eqz p1, :cond_27

    .line 823
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 826
    :cond_27
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_28

    .line 827
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-direct {v6, v5, v0, v7}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 830
    :cond_28
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_29

    .line 831
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v7, 0x1

    move-object/from16 v0, v37

    invoke-direct {v6, v5, v0, v7}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 834
    :cond_29
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_2a

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_2c

    .line 835
    :cond_2a
    :goto_9
    const-string v6, "%%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2b

    .line 836
    const-string v6, "%%"

    const-string v7, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto :goto_9

    .line 839
    :cond_2b
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_2d

    const/4 v10, 0x1

    .line 841
    .restart local v10    # "not":Z
    :goto_a
    const/16 v6, 0x25

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    .line 842
    .local v31, "p0":I
    const/4 v6, -0x1

    move/from16 v0, v31

    if-ne v0, v6, :cond_2f

    .line 843
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_2e

    .line 844
    sget-object v30, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 887
    .end local v10    # "not":Z
    .end local v31    # "p0":I
    :cond_2c
    :goto_b
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-direct {v6, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 839
    :cond_2d
    const/4 v10, 0x0

    goto :goto_a

    .line 846
    .restart local v10    # "not":Z
    .restart local v31    # "p0":I
    :cond_2e
    sget-object v30, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b

    .line 849
    :cond_2f
    const-string v6, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 851
    .local v28, "items":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 852
    .local v13, "startsWithValue":Ljava/lang/String;
    const/4 v14, 0x0

    .line 853
    .local v14, "endsWithValue":Ljava/lang/String;
    const/4 v15, 0x0

    .line 854
    .local v15, "containsValues":[Ljava/lang/String;
    if-nez v31, :cond_32

    .line 855
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_31

    .line 856
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    new-array v15, v6, [Ljava/lang/String;

    .line 857
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v28

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    :cond_30
    :goto_c
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v11, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object v12, v5

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 859
    :cond_31
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v14, v28, v6

    .line 860
    move-object/from16 v0, v28

    array-length v6, v0

    const/4 v7, 0x2

    if-le v6, v7, :cond_30

    .line 861
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v15, v6, [Ljava/lang/String;

    .line 862
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v28

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 865
    :cond_32
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_33

    .line 866
    move-object/from16 v15, v28

    goto :goto_c

    .line 868
    :cond_33
    move-object/from16 v0, v28

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_34

    .line 869
    const/4 v6, 0x0

    aget-object v13, v28, v6

    goto :goto_c

    .line 870
    :cond_34
    move-object/from16 v0, v28

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_35

    .line 871
    const/4 v6, 0x0

    aget-object v13, v28, v6

    .line 872
    const/4 v6, 0x1

    aget-object v14, v28, v6

    goto :goto_c

    .line 874
    :cond_35
    const/4 v6, 0x0

    aget-object v13, v28, v6

    .line 875
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v14, v28, v6

    .line 876
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v15, v6, [Ljava/lang/String;

    .line 877
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v28

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 890
    .end local v10    # "not":Z
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .end local v14    # "endsWithValue":Ljava/lang/String;
    .end local v15    # "containsValues":[Ljava/lang/String;
    .end local v28    # "items":[Ljava/lang/String;
    .end local v31    # "p0":I
    .end local v37    # "strValue":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v40

    .line 892
    .local v40, "value":J
    const-wide/16 v18, 0x0

    .line 893
    .local v18, "doubleValue":D
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_37

    .line 894
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v18

    .line 898
    :cond_37
    if-eqz v32, :cond_38

    .line 899
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 902
    :cond_38
    if-eqz p1, :cond_39

    .line 903
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 906
    :cond_39
    const-wide/16 v6, 0x0

    cmpl-double v6, v18, v6

    if-nez v6, :cond_3a

    .line 907
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v40

    move-object/from16 v2, v30

    invoke-direct {v6, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 909
    :cond_3a
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    move-wide/from16 v0, v18

    move-object/from16 v2, v30

    invoke-direct {v6, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 913
    .end local v18    # "doubleValue":D
    .end local v40    # "value":J
    :cond_3b
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_3f

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 915
    .restart local v29    # "name":Ljava/lang/String;
    const-string v6, "null"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 916
    if-eqz v32, :cond_3c

    .line 917
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 919
    :cond_3c
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 921
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_3d

    .line 922
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 925
    :cond_3d
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_3e

    .line 926
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 929
    :cond_3e
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 931
    .end local v29    # "name":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_43

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 934
    .restart local v29    # "name":Ljava/lang/String;
    const-string v6, "true"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 935
    if-eqz v32, :cond_40

    .line 936
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 938
    :cond_40
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 940
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_41

    .line 941
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 944
    :cond_41
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_42

    .line 945
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 948
    :cond_42
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 950
    .end local v29    # "name":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x66

    if-ne v6, v7, :cond_47

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 953
    .restart local v29    # "name":Ljava/lang/String;
    const-string v6, "false"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 954
    if-eqz v32, :cond_44

    .line 955
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 957
    :cond_44
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 959
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_45

    .line 960
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 963
    :cond_45
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_46

    .line 964
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 967
    :cond_46
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 971
    .end local v29    # "name":Ljava/lang/String;
    :cond_47
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 975
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v30    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_48
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v35, v6, -0x1

    .line 976
    .local v35, "start":I
    :goto_d
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_49

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_49

    .line 977
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4a

    if-nez v32, :cond_4a

    if-nez v32, :cond_4a

    .line 990
    :cond_49
    if-eqz p1, :cond_4c

    .line 991
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v20, v6, -0x1

    .line 1000
    .local v20, "end":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    move/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 1002
    .local v38, "text":Ljava/lang/String;
    const-string v6, "\\."

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4f

    .line 1003
    const-string v6, "\\\\\\."

    const-string v7, "\\."

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1004
    .local v33, "propName":Ljava/lang/String;
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 983
    .end local v20    # "end":I
    .end local v33    # "propName":Ljava/lang/String;
    .end local v38    # "text":Ljava/lang/String;
    :cond_4a
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_4b

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 986
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_d

    .line 993
    :cond_4c
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_4d

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4e

    .line 994
    :cond_4d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v20, v6, -0x1

    .restart local v20    # "end":I
    goto :goto_e

    .line 996
    .end local v20    # "end":I
    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    move/from16 v20, v0

    .restart local v20    # "end":I
    goto :goto_e

    .line 1007
    .restart local v38    # "text":Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v34

    .line 1009
    .local v34, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-eqz p1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1010
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_0
.end method

.method protected readDoubleValue(J)D
    .locals 9
    .param p1, "longValue"    # J

    .prologue
    .line 1033
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1035
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1036
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-lt v3, v6, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1040
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 1041
    .local v1, "endIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1043
    .local v4, "value":D
    long-to-double v6, p1

    add-double/2addr v4, v6

    .line 1044
    return-wide v4
.end method

.method protected readLongValue()J
    .locals 7

    .prologue
    .line 1017
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1018
    .local v0, "beginIndex":I
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_1

    .line 1019
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1022
    :cond_1
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-lt v3, v6, :cond_2

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_2

    .line 1023
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1026
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 1027
    .local v1, "endIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1029
    .local v4, "value":J
    return-wide v4
.end method

.method readName()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x5c

    .line 1139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1141
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1142
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illeal jsonpath syntax. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1147
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v4, :cond_4

    .line 1148
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1149
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1166
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "propertyName":Ljava/lang/String;
    return-object v2

    .line 1153
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1157
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    .line 1158
    .local v1, "identifierFlag":Z
    if-eqz v1, :cond_1

    .line 1161
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 1076
    const/4 v1, 0x0

    .line 1077
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_2

    .line 1078
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1079
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1102
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "name":Ljava/lang/String;
    const-string v2, "not"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1108
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1110
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1111
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1135
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 1080
    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1082
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1083
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1084
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_5

    .line 1085
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1086
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_4

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1088
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1090
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1092
    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 1093
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1094
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_6

    .line 1095
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1096
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1098
    :cond_6
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1112
    .restart local v0    # "name":Ljava/lang/String;
    :cond_7
    const-string v2, "rlike"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1113
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1114
    :cond_8
    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1115
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1116
    :cond_9
    const-string v2, "between"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1117
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1119
    :cond_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1122
    :cond_b
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1123
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1124
    :cond_c
    const-string v2, "rlike"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1125
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1126
    :cond_d
    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1127
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1128
    :cond_e
    const-string v2, "between"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1129
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1131
    :cond_f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 11

    .prologue
    const/16 v10, 0x5b

    const/16 v9, 0x2a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x2e

    .line 550
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 551
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v2, v4, -0x30

    .line 553
    .local v2, "index":I
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v4, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    .line 630
    .end local v2    # "index":I
    :goto_0
    return-object v4

    .line 554
    :cond_0
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x7a

    if-le v4, v5, :cond_2

    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3

    .line 555
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 558
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_11

    .line 559
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 561
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x24

    if-ne v4, v5, :cond_4

    .line 562
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1

    .line 566
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v6, :cond_5

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_e

    .line 567
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 568
    .local v0, "c0":I
    const/4 v1, 0x0

    .line 569
    .local v1, "deep":Z
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 570
    if-ne v0, v6, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v6, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 572
    const/4 v1, 0x1

    .line 573
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v5, v5, 0x3

    if-le v4, v5, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    .line 576
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v5, v5, 0x2

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_6

    .line 578
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 584
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v9, :cond_8

    .line 585
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_7

    .line 586
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 589
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    goto/16 :goto_0

    .line 592
    :cond_8
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 593
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    goto/16 :goto_0

    .line 596
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "propertyName":Ljava/lang/String;
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x28

    if-ne v4, v5, :cond_d

    .line 598
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 599
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x29

    if-ne v4, v5, :cond_c

    .line 600
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_a

    .line 601
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 604
    :cond_a
    const-string v4, "size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 605
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    goto/16 :goto_0

    .line 608
    :cond_b
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support jsonpath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 611
    :cond_c
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support jsonpath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 614
    :cond_d
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 617
    .end local v0    # "c0":I
    .end local v1    # "deep":Z
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_e
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_f

    .line 618
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    goto/16 :goto_0

    .line 621
    :cond_f
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v4, :cond_10

    .line 622
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 624
    .restart local v3    # "propertyName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 627
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_10
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support jsonpath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1175
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1176
    .local v1, "quoate":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1178
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1179
    .local v0, "beginIndex":I
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1183
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    :goto_1
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1185
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1187
    return-object v2

    .line 1183
    .end local v2    # "strValue":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1050
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1062
    :goto_0
    return-object v1

    .line 1054
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 1055
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1058
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "name":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1062
    const/4 v1, 0x0

    goto :goto_0

    .line 1064
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 635
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-gt v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v2, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 642
    :cond_1
    return-void
.end method
