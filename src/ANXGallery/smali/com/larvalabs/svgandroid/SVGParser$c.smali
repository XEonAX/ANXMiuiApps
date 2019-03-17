.class public Lcom/larvalabs/svgandroid/SVGParser$c;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->a:Z

    .line 79
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->b:I

    .line 80
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->c:Z

    .line 81
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->d:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->e:F

    .line 83
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->f:I

    .line 84
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->g:I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->i:Ljava/util/Set;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->a:Z

    .line 79
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->b:I

    .line 80
    iput-boolean v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->c:Z

    .line 81
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->d:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->e:F

    .line 83
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->f:I

    .line 84
    iput v1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->g:I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->i:Ljava/util/Set;

    .line 92
    if-eqz p1, :cond_1

    .line 93
    iget-boolean v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->a:Z

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->a:Z

    .line 94
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->b:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->b:I

    .line 95
    iget-boolean v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->c:Z

    iput-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->c:Z

    .line 96
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->d:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->d:I

    .line 97
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->e:F

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->e:F

    .line 98
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->f:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->f:I

    .line 99
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->g:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->g:I

    .line 100
    iget-object v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    .line 102
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    :cond_0
    iget v0, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->j:I

    iput v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->j:I

    .line 105
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->i:Ljava/util/Set;

    iget-object v1, p1, Lcom/larvalabs/svgandroid/SVGParser$c;->i:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_1
    return-void
.end method

.method private a(I)I
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 141
    const-string v0, "SVGAndroid"

    const-string v1, "mapColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "SVGAndroid"

    const-string v1, "mapColor : EXACT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 165
    :goto_0
    return p1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->j:I

    if-lez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 150
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 151
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 149
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 152
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 149
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 153
    iget v4, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->j:I

    if-gt v3, v4, :cond_1

    .line 154
    const-string v2, "SVGAndroid"

    const-string v3, "mapColor : SIMILAR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 158
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    sub-int v1, v4, v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 156
    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    goto/16 :goto_0

    .line 164
    :cond_2
    const-string v0, "SVGAndroid"

    const-string v1, "mapColor : NO CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/larvalabs/svgandroid/SVGParser$c;I)I
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser$c;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/larvalabs/svgandroid/SVGParser$c;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/larvalabs/svgandroid/SVGParser$c;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->b:I

    return v0
.end method

.method static synthetic d(Lcom/larvalabs/svgandroid/SVGParser$c;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/larvalabs/svgandroid/SVGParser$c;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->d:I

    return v0
.end method

.method static synthetic f(Lcom/larvalabs/svgandroid/SVGParser$c;)F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->e:F

    return v0
.end method

.method static synthetic g(Lcom/larvalabs/svgandroid/SVGParser$c;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->f:I

    return v0
.end method

.method static synthetic h(Lcom/larvalabs/svgandroid/SVGParser$c;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->g:I

    return v0
.end method

.method static synthetic i(Lcom/larvalabs/svgandroid/SVGParser$c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->h:Ljava/util/Map;

    .line 137
    iput p2, p0, Lcom/larvalabs/svgandroid/SVGParser$c;->j:I

    .line 138
    return-void
.end method
