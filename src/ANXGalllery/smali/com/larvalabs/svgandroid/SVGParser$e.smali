.class Lcom/larvalabs/svgandroid/SVGParser$e;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Landroid/graphics/Picture;

.field b:Landroid/graphics/Canvas;

.field c:Landroid/graphics/Paint;

.field d:Landroid/graphics/RectF;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/RectF;

.field g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/larvalabs/svgandroid/SVGParser$f;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/larvalabs/svgandroid/SVGParser$c;

.field i:Z

.field j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/larvalabs/svgandroid/SVGParser$a;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/larvalabs/svgandroid/SVGParser$a;

.field private m:Z

.field private n:I

.field private o:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Picture;Lcom/larvalabs/svgandroid/SVGParser$c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v1, 0x0

    .line 1170
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    .line 1158
    iput-object v5, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->e:Landroid/graphics/RectF;

    .line 1159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    .line 1160
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    .line 1164
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->i:Z

    .line 1166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    .line 1167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->k:Ljava/util/HashMap;

    .line 1168
    iput-object v5, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1363
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    .line 1364
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    .line 1365
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->o:Z

    .line 1171
    const-string v0, "SVGAndroid"

    const-string v1, "SVGHandler Constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iput-object p1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->a:Landroid/graphics/Picture;

    .line 1173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    .line 1174
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1175
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v0}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>()V

    .line 1176
    invoke-static {v0, v4}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Lcom/larvalabs/svgandroid/SVGParser$f;Z)Z

    .line 1177
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1178
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-direct {v0, p2}, Lcom/larvalabs/svgandroid/SVGParser$c;-><init>(Lcom/larvalabs/svgandroid/SVGParser$c;)V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    .line 1179
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Picture;Lcom/larvalabs/svgandroid/SVGParser$c;Lcom/larvalabs/svgandroid/SVGParser$1;)V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0, p1, p2}, Lcom/larvalabs/svgandroid/SVGParser$e;-><init>(Landroid/graphics/Picture;Lcom/larvalabs/svgandroid/SVGParser$c;)V

    return-void
.end method

.method private a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/lang/Integer;Z)I
    .locals 5

    .prologue
    const v4, 0xffffff

    const/high16 v3, -0x1000000

    .line 1337
    const-string v0, "SVGAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColor : fillMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->b(Lcom/larvalabs/svgandroid/SVGParser$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    const-string v0, "SVGAndroid"

    const-string v1, "getColor : FILL OVERRIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->c(Lcom/larvalabs/svgandroid/SVGParser$c;)I

    move-result v0

    .line 1360
    :cond_0
    :goto_0
    return v0

    .line 1342
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v4

    or-int/2addr v0, v3

    .line 1343
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1344
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_2
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser$c;->g(Lcom/larvalabs/svgandroid/SVGParser$c;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1346
    const-string v0, "SVGAndroid"

    const-string v1, "getColor : REPLACE COLOR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->h(Lcom/larvalabs/svgandroid/SVGParser$c;)I

    move-result v0

    .line 1349
    :cond_3
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser$c;->i(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1350
    const-string v1, "SVGAndroid"

    const-string v2, "getColor : MAP COLOR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v1, v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;I)I

    move-result v0

    .line 1353
    :cond_4
    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lcom/larvalabs/svgandroid/SVGParser$d;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 1354
    if-nez v1, :cond_5

    .line 1355
    if-eqz p3, :cond_6

    const-string v1, "fill-opacity"

    :goto_1
    invoke-virtual {p1, v1}, Lcom/larvalabs/svgandroid/SVGParser$d;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 1357
    :cond_5
    if-eqz v1, :cond_0

    .line 1358
    and-int/2addr v0, v4

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    goto :goto_0

    .line 1355
    :cond_6
    const-string/jumbo v1, "stroke-opacity"

    goto :goto_1
.end method

.method private a(ZLorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1308
    const-string v0, "SVGAndroid"

    const-string v1, "doGradient : IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v1, Lcom/larvalabs/svgandroid/SVGParser$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/larvalabs/svgandroid/SVGParser$a;-><init>(Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1310
    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    .line 1311
    iput-boolean p1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->c:Z

    .line 1312
    if-eqz p1, :cond_3

    .line 1313
    const-string/jumbo v0, "x1"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->d:F

    .line 1314
    const-string/jumbo v0, "x2"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->f:F

    .line 1315
    const-string/jumbo v0, "y1"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->e:F

    .line 1316
    const-string/jumbo v0, "y2"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->g:F

    .line 1322
    :goto_0
    const-string v0, "gradientTransform"

    invoke-static {v0, p2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_0

    .line 1324
    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    .line 1326
    :cond_0
    const-string v0, "href"

    invoke-static {v0, p2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    if-eqz v0, :cond_2

    .line 1328
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1329
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1331
    :cond_1
    iput-object v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    .line 1333
    :cond_2
    return-object v1

    .line 1318
    :cond_3
    const-string v0, "cx"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->h:F

    .line 1319
    const-string v0, "cy"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->i:F

    .line 1320
    const-string v0, "r"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->j:F

    goto :goto_0
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 1374
    :cond_1
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 1378
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->f:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1380
    :cond_3
    return-void
.end method

.method private a(FFFF)V
    .locals 2

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1384
    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-direct {p0, v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1385
    return-void
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1389
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1390
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1391
    return-void
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 1394
    const-string/jumbo v0, "transform"

    invoke-static {v0, p1}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->i:Z

    .line 1396
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->i:Z

    if-eqz v0, :cond_0

    .line 1397
    invoke-static {v1}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1399
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1401
    :cond_0
    return-void

    .line 1395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1258
    const-string v2, "SVGAndroid"

    const-string v3, "doStroke : IN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v2, "none"

    const-string v3, "display"

    invoke-virtual {p1, v3}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1266
    :cond_1
    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v2}, Lcom/larvalabs/svgandroid/SVGParser$c;->d(Lcom/larvalabs/svgandroid/SVGParser$c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1267
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->e(Lcom/larvalabs/svgandroid/SVGParser$c;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(I)V

    .line 1268
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->f(Lcom/larvalabs/svgandroid/SVGParser$c;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(F)V

    move v0, v1

    .line 1269
    goto :goto_0

    .line 1271
    :cond_2
    const-string/jumbo v2, "stroke"

    invoke-virtual {p1, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    if-eqz v2, :cond_3

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1273
    invoke-static {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Lcom/larvalabs/svgandroid/SVGParser$f;Z)Z

    move v0, v1

    .line 1274
    goto :goto_0

    .line 1276
    :cond_3
    const-string/jumbo v2, "stroke"

    invoke-virtual {p1, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1277
    if-eqz v2, :cond_0

    .line 1278
    invoke-direct {p0, p1, v2, v0}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/lang/Integer;Z)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(I)V

    .line 1280
    const-string/jumbo v0, "stroke-width"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_4

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(F)V

    .line 1286
    :cond_4
    const-string/jumbo v0, "stroke-linecap"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    const-string v2, "round"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1288
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint$Cap;)V

    .line 1294
    :cond_5
    :goto_1
    const-string/jumbo v0, "stroke-linejoin"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    const-string v2, "miter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1296
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint$Join;)V

    :cond_6
    :goto_2
    move v0, v1

    .line 1302
    goto :goto_0

    .line 1289
    :cond_7
    const-string/jumbo v2, "square"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1290
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 1291
    :cond_8
    const-string v2, "butt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1292
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 1297
    :cond_9
    const-string v2, "round"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1298
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 1299
    :cond_a
    const-string v2, "bevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1300
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint$Join;)V

    goto :goto_2
.end method

.method private a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/larvalabs/svgandroid/SVGParser$d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;",
            "Lcom/larvalabs/svgandroid/SVGParser$f;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1205
    const-string v0, "SVGAndroid"

    const-string v3, "doFill : IN"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v0, "none"

    const-string v3, "display"

    invoke-virtual {p1, v3}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1254
    :goto_0
    return v0

    .line 1213
    :cond_0
    const-string v0, "fill-rule"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    if-eqz v0, :cond_1

    .line 1215
    const-string v3, "nonzero"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1216
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p3, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Path$FillType;)V

    .line 1221
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->b(Lcom/larvalabs/svgandroid/SVGParser$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v0}, Lcom/larvalabs/svgandroid/SVGParser$c;->c(Lcom/larvalabs/svgandroid/SVGParser$c;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(I)V

    move v0, v2

    .line 1223
    goto :goto_0

    .line 1217
    :cond_2
    const-string v3, "evenodd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p3, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 1225
    :cond_3
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_5

    const-string/jumbo v3, "url(#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1227
    const-string v3, "SVGAndroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFill :   gradient>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string/jumbo v3, "url(#"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Shader;

    .line 1231
    if-eqz v0, :cond_4

    .line 1233
    invoke-virtual {p3, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Shader;)V

    move v0, v2

    .line 1234
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1237
    goto :goto_0

    .line 1239
    :cond_5
    if-eqz v0, :cond_7

    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1240
    const-string v0, "SVGAndroid"

    const-string v2, "doFill :   none"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {p3, v1}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Lcom/larvalabs/svgandroid/SVGParser$f;Z)Z

    .line 1253
    :cond_6
    const-string v0, "SVGAndroid"

    const-string v2, "doFill :   no fill"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1254
    goto/16 :goto_0

    .line 1243
    :cond_7
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->d(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1244
    if-eqz v0, :cond_8

    .line 1245
    const-string v1, "SVGAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFill :   c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/nexstreaming/app/common/util/c;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-direct {p0, p1, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/lang/Integer;Z)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(I)V

    move v0, v2

    .line 1247
    goto/16 :goto_0

    .line 1248
    :cond_8
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "stroke"

    invoke-virtual {p1, v0}, Lcom/larvalabs/svgandroid/SVGParser$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1249
    const-string v0, "SVGAndroid"

    const-string v1, "doFill :   no fill & no stroke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1250
    goto/16 :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->i:Z

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1407
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/larvalabs/svgandroid/SVGParser$c;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    return-object v0
.end method

.method public characters([CII)V
    .locals 0

    .prologue
    .line 1689
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1202
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1694
    const-string/jumbo v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->a:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1696
    :cond_1
    const-string v0, "linearGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1697
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1700
    if-eqz v0, :cond_2

    .line 1701
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    invoke-virtual {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$a;->a(Lcom/larvalabs/svgandroid/SVGParser$a;)Lcom/larvalabs/svgandroid/SVGParser$a;

    move-result-object v0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 1705
    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_3

    .line 1706
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 1705
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1708
    :cond_3
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [F

    .line 1709
    :goto_2
    array-length v0, v6

    if-ge v2, v0, :cond_4

    .line 1710
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v6, v2

    .line 1709
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1712
    :cond_4
    array-length v0, v5

    if-nez v0, :cond_5

    .line 1713
    const-string v0, "BAD"

    const-string v1, "BAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_5
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->d:F

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v2, v2, Lcom/larvalabs/svgandroid/SVGParser$a;->e:F

    iget-object v3, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v3, v3, Lcom/larvalabs/svgandroid/SVGParser$a;->f:F

    iget-object v4, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v4, v4, Lcom/larvalabs/svgandroid/SVGParser$a;->g:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1716
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_6

    .line 1717
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1719
    :cond_6
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1722
    :cond_7
    const-string v0, "radialGradient"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1723
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1725
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1726
    if-eqz v0, :cond_8

    .line 1727
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    invoke-virtual {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$a;->a(Lcom/larvalabs/svgandroid/SVGParser$a;)Lcom/larvalabs/svgandroid/SVGParser$a;

    move-result-object v0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1730
    :cond_8
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v2

    .line 1731
    :goto_3
    array-length v0, v4

    if-ge v1, v0, :cond_9

    .line 1732
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 1731
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1734
    :cond_9
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [F

    .line 1735
    :goto_4
    array-length v0, v5

    if-ge v2, v0, :cond_a

    .line 1736
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    .line 1735
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1738
    :cond_a
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v0, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1739
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1740
    if-eqz v0, :cond_b

    .line 1741
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    invoke-virtual {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$a;->a(Lcom/larvalabs/svgandroid/SVGParser$a;)Lcom/larvalabs/svgandroid/SVGParser$a;

    move-result-object v0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    .line 1744
    :cond_b
    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->h:F

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v2, v2, Lcom/larvalabs/svgandroid/SVGParser$a;->i:F

    iget-object v3, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget v3, v3, Lcom/larvalabs/svgandroid/SVGParser$a;->j:F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1745
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_c

    .line 1746
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1748
    :cond_c
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v2, v2, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v1, v1, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1751
    :cond_d
    const-string v0, "g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 1753
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->o:Z

    if-eqz v0, :cond_e

    .line 1754
    iput-boolean v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->o:Z

    .line 1756
    :cond_e
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1758
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-eqz v0, :cond_0

    .line 1759
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    .line 1761
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    if-nez v0, :cond_0

    .line 1762
    iput-boolean v2, p0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1197
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1411
    const-string v2, "SVGAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startElement : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " atts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->o:Z

    if-eqz v2, :cond_3

    .line 1416
    const-string v2, "rect"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1417
    const-string/jumbo v2, "x"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1418
    if-nez v2, :cond_0

    .line 1419
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1421
    :cond_0
    const-string/jumbo v3, "y"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1422
    if-nez v3, :cond_1

    .line 1423
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1425
    :cond_1
    const-string/jumbo v4, "width"

    move-object/from16 v0, p4

    invoke-static {v4, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1426
    const-string v5, "height"

    move-object/from16 v0, p4

    invoke-static {v5, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    .line 1427
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v2, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-direct {v5, v6, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->e:Landroid/graphics/RectF;

    .line 1684
    :cond_2
    :goto_0
    return-void

    .line 1431
    :cond_3
    const-string/jumbo v2, "svg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1432
    const-string/jumbo v2, "width"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1433
    const-string v3, "height"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v6

    .line 1434
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1436
    if-eqz v2, :cond_4

    if-nez v6, :cond_7

    .line 1437
    :cond_4
    const-string/jumbo v2, "viewBox"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    if-nez v2, :cond_5

    .line 1439
    const/16 v2, 0x64

    .line 1440
    const-string v5, "SVGHandler"

    const-string v6, "Missing SVG bounds! Defaulting to 100x100"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v4, v3

    move v3, v2

    .line 1459
    :goto_1
    const-string v6, "SVGAndroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BEGIN REC: dx,dy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  w,h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->a:Landroid/graphics/Picture;

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 1442
    :cond_5
    invoke-static {v2}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;)Lcom/larvalabs/svgandroid/SVGParser$b;

    move-result-object v6

    .line 1443
    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_6

    .line 1444
    const/16 v2, 0x64

    .line 1445
    const-string v5, "SVGHandler"

    const-string v6, "Malformed SVG bounds! Defaulting to 100x100"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_1

    .line 1447
    :cond_6
    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1448
    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1449
    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 1450
    invoke-static {v6}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1451
    const-string v6, "SVGAndroid"

    const-string v7, "Used viewBox"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1455
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1456
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1457
    const-string v6, "SVGAndroid"

    const-string v7, "Used width, height"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_1

    .line 1462
    :cond_8
    const-string v2, "defs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1464
    const-string v2, "linearGradient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1465
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(ZLorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    goto/16 :goto_0

    .line 1466
    :cond_9
    const-string v2, "radialGradient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1467
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(ZLorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    goto/16 :goto_0

    .line 1468
    :cond_a
    const-string/jumbo v2, "stop"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    if-eqz v2, :cond_2

    .line 1470
    const-string v2, "offset"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1471
    const-string/jumbo v2, "style"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    .line 1473
    new-instance v3, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v3, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1474
    const-string/jumbo v2, "stop-color"

    invoke-virtual {v3, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1475
    const/high16 v2, -0x1000000

    .line 1476
    if-eqz v5, :cond_b

    .line 1477
    const-string v2, "#"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1478
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1483
    :cond_b
    :goto_2
    const-string/jumbo v5, "stop-opacity"

    invoke-virtual {v3, v5}, Lcom/larvalabs/svgandroid/SVGParser$d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1484
    if-eqz v3, :cond_f

    .line 1485
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1486
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1487
    const/16 v5, 0xff

    if-le v3, v5, :cond_c

    const/16 v3, 0xff

    .line 1488
    :cond_c
    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 1492
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v3}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v3}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1495
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->h:Lcom/larvalabs/svgandroid/SVGParser$c;

    invoke-static {v3, v2}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(Lcom/larvalabs/svgandroid/SVGParser$c;I)I

    move-result v2

    .line 1496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->l:Lcom/larvalabs/svgandroid/SVGParser$a;

    iget-object v3, v3, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1480
    :cond_e
    const/16 v2, 0x10

    invoke-static {v5, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 1490
    :cond_f
    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    goto :goto_3

    .line 1498
    :cond_10
    const-string v2, "g"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1500
    const-string v2, "bounds"

    const-string v3, "id"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1501
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->o:Z

    .line 1503
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-eqz v2, :cond_12

    .line 1504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    .line 1507
    :cond_12
    new-instance v3, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v3, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1508
    new-instance v4, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v4, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1509
    const-string v2, "opacity"

    invoke-virtual {v4, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;->e(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 1511
    if-nez v2, :cond_14

    .line 1512
    const/16 v2, 0xff

    .line 1517
    :goto_4
    const/16 v5, 0xff

    if-ge v2, v5, :cond_15

    if-lez v2, :cond_15

    .line 1518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    const/16 v7, 0x1f

    invoke-virtual {v5, v6, v2, v7}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1519
    const-string v5, "opacity"

    invoke-virtual {v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$d;->a(Ljava/lang/String;)V

    .line 1523
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1524
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1527
    if-lez v2, :cond_13

    const-string v2, "none"

    const-string v3, "display"

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1528
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_2

    .line 1529
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    .line 1530
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->n:I

    goto/16 :goto_0

    .line 1514
    :cond_14
    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    .line 1521
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    goto :goto_5

    .line 1534
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_1d

    const-string v2, "rect"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1535
    const-string/jumbo v2, "x"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1536
    if-nez v2, :cond_30

    .line 1537
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v8, v2

    .line 1539
    :goto_6
    const-string/jumbo v2, "y"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1540
    if-nez v2, :cond_2f

    .line 1541
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v9, v2

    .line 1543
    :goto_7
    const-string v2, "rx"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1544
    const-string v2, "ry"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1545
    if-nez v3, :cond_19

    if-nez v2, :cond_19

    .line 1546
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1547
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v10, v2

    move-object v11, v3

    .line 1553
    :goto_8
    const-string/jumbo v2, "width"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v12

    .line 1554
    const-string v2, "height"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v13

    .line 1555
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1556
    new-instance v3, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v3, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1557
    new-instance v14, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v14, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v14}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1559
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v14, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1561
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FFFF)V

    .line 1562
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v7, v15

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1568
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v14, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1569
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1575
    :cond_18
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/larvalabs/svgandroid/SVGParser$e;->b()V

    goto/16 :goto_0

    .line 1548
    :cond_19
    if-nez v3, :cond_1a

    move-object v10, v2

    move-object v11, v2

    .line 1549
    goto/16 :goto_8

    .line 1550
    :cond_1a
    if-nez v2, :cond_2e

    move-object v10, v3

    move-object v11, v3

    .line 1551
    goto/16 :goto_8

    .line 1565
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 1572
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1576
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_1e

    const-string v2, "line"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1577
    const-string/jumbo v2, "x1"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1578
    const-string/jumbo v2, "x2"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1579
    const-string/jumbo v2, "y1"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1580
    const-string/jumbo v2, "y2"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v6

    .line 1581
    new-instance v7, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v7, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1582
    new-instance v8, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v8, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1583
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1585
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1586
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1587
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1589
    invoke-direct/range {p0 .. p0}, Lcom/larvalabs/svgandroid/SVGParser$e;->b()V

    goto/16 :goto_0

    .line 1591
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_21

    const-string v2, "circle"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1592
    const-string v2, "cx"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1593
    const-string v2, "cy"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1594
    const-string v2, "r"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1595
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1596
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1597
    new-instance v6, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1598
    new-instance v7, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v7, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v7}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1600
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1602
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1603
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1606
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1609
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/larvalabs/svgandroid/SVGParser$e;->b()V

    goto/16 :goto_0

    .line 1611
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_24

    const-string v2, "ellipse"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1612
    const-string v2, "cx"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v3

    .line 1613
    const-string v2, "cy"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1614
    const-string v2, "rx"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1615
    const-string v2, "ry"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v6

    .line 1616
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 1617
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1618
    new-instance v7, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v7, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1619
    new-instance v8, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v8, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v8}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1621
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1624
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v2, v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v7, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1625
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(FF)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1628
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->d:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1631
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/larvalabs/svgandroid/SVGParser$e;->b()V

    goto/16 :goto_0

    .line 1633
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_2a

    const-string v2, "polygon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "polyline"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1634
    :cond_25
    const-string v2, "points"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->c(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/larvalabs/svgandroid/SVGParser$b;

    move-result-object v2

    .line 1635
    if-eqz v2, :cond_2

    .line 1636
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1637
    invoke-static {v2}, Lcom/larvalabs/svgandroid/SVGParser$b;->a(Lcom/larvalabs/svgandroid/SVGParser$b;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1638
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1639
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1640
    new-instance v3, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v3, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1641
    new-instance v6, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v6, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v6}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1643
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1644
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1645
    const/4 v2, 0x2

    move v3, v2

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_26

    .line 1646
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1647
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1648
    invoke-virtual {v4, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1645
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    goto :goto_b

    .line 1651
    :cond_26
    const-string v2, "polygon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1652
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1654
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1655
    invoke-virtual {v6}, Lcom/larvalabs/svgandroid/SVGParser$f;->a()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1656
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Landroid/graphics/Path;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1659
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1662
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/larvalabs/svgandroid/SVGParser$e;->b()V

    goto/16 :goto_0

    .line 1665
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_2d

    const-string v2, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1666
    const-string v2, "d"

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/larvalabs/svgandroid/SVGParser;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/larvalabs/svgandroid/SVGParser;->c(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lorg/xml/sax/Attributes;)V

    .line 1668
    new-instance v4, Lcom/larvalabs/svgandroid/SVGParser$d;

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {v4, v0, v2}, Lcom/larvalabs/svgandroid/SVGParser$d;-><init>(Lorg/xml/sax/Attributes;Lcom/larvalabs/svgandroid/SVGParser$1;)V

    .line 1669
    new-instance v5, Lcom/larvalabs/svgandroid/SVGParser$f;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->g:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/larvalabs/svgandroid/SVGParser$f;

    invoke-direct {v5, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;-><init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->j:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Ljava/util/HashMap;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1671
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Lcom/larvalabs/svgandroid/SVGParser$d;Lcom/larvalabs/svgandroid/SVGParser$f;)Z

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->a(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1673
    invoke-virtual {v5}, Lcom/larvalabs/svgandroid/SVGParser$f;->a()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1674
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/larvalabs/svgandroid/SVGParser$e;->a(Landroid/graphics/Path;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1677
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Lcom/larvalabs/svgandroid/SVGParser$f;->b(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->b:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1680
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/larvalabs/svgandroid/SVGParser$e;->b()V

    goto/16 :goto_0

    .line 1681
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/larvalabs/svgandroid/SVGParser$e;->m:Z

    if-nez v2, :cond_2

    .line 1682
    const-string v2, "SVGAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNRECOGNIZED SVG COMMAND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    move-object v10, v2

    move-object v11, v3

    goto/16 :goto_8

    :cond_2f
    move-object v9, v2

    goto/16 :goto_7

    :cond_30
    move-object v8, v2

    goto/16 :goto_6
.end method
