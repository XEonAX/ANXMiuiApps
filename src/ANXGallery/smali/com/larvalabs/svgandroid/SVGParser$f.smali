.class Lcom/larvalabs/svgandroid/SVGParser$f;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Shader;

.field private d:F

.field private e:Landroid/graphics/Paint$Cap;

.field private f:Landroid/graphics/Paint$Join;

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/Path$FillType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x1000000

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    .line 1059
    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->b:I

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    .line 1061
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->d:F

    .line 1062
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->e:Landroid/graphics/Paint$Cap;

    .line 1063
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->f:Landroid/graphics/Paint$Join;

    .line 1064
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    .line 1065
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    .line 1070
    return-void
.end method

.method public constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$f;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x1000000

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    .line 1059
    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->b:I

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    .line 1061
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->d:F

    .line 1062
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->e:Landroid/graphics/Paint$Cap;

    .line 1063
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->f:Landroid/graphics/Paint$Join;

    .line 1064
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    .line 1065
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    .line 1073
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    .line 1074
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->b:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->b:I

    .line 1075
    iget-object v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    .line 1076
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->d:F

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->d:F

    .line 1077
    iget-object v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->e:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->e:Landroid/graphics/Paint$Cap;

    .line 1078
    iget-object v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->f:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->f:Landroid/graphics/Paint$Join;

    .line 1079
    iget-boolean v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    .line 1080
    iget-boolean v0, p1, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    .line 1081
    return-void
.end method

.method static synthetic a(Lcom/larvalabs/svgandroid/SVGParser$f;Z)Z
    .locals 0

    .prologue
    .line 1056
    iput-boolean p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/larvalabs/svgandroid/SVGParser$f;Z)Z
    .locals 0

    .prologue
    .line 1056
    iput-boolean p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    return p1
.end method


# virtual methods
.method public a()Landroid/graphics/Path$FillType;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->i:Landroid/graphics/Path$FillType;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->i:Landroid/graphics/Path$FillType;

    goto :goto_0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 1116
    iput p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->d:F

    .line 1117
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1084
    iput p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    .line 1085
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    .line 1087
    return-void
.end method

.method public a(Landroid/graphics/Paint$Cap;)V
    .locals 0

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->e:Landroid/graphics/Paint$Cap;

    .line 1127
    return-void
.end method

.method public a(Landroid/graphics/Paint$Join;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->f:Landroid/graphics/Paint$Join;

    .line 1131
    return-void
.end method

.method public a(Landroid/graphics/Path$FillType;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->i:Landroid/graphics/Path$FillType;

    .line 1142
    return-void
.end method

.method public a(Landroid/graphics/Shader;)V
    .locals 1

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    .line 1121
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    .line 1123
    return-void
.end method

.method public a(Landroid/graphics/Paint;)Z
    .locals 1

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->h:Z

    if-nez v0, :cond_0

    .line 1096
    const/4 v0, 0x0

    .line 1100
    :goto_0
    return v0

    .line 1097
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1098
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->c:Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1099
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1090
    iput p1, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->b:I

    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    .line 1092
    return-void
.end method

.method public b(Landroid/graphics/Paint;)Z
    .locals 1

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->g:Z

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1112
    :goto_0
    return v0

    .line 1106
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1108
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1109
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->d:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1110
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->e:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1111
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$f;->f:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1112
    const/4 v0, 0x1

    goto :goto_0
.end method
