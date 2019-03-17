.class Lcom/larvalabs/svgandroid/SVGParser$a;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$1;)V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/larvalabs/svgandroid/SVGParser$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/larvalabs/svgandroid/SVGParser$a;)Lcom/larvalabs/svgandroid/SVGParser$a;
    .locals 3

    .prologue
    .line 940
    new-instance v0, Lcom/larvalabs/svgandroid/SVGParser$a;

    invoke-direct {v0}, Lcom/larvalabs/svgandroid/SVGParser$a;-><init>()V

    .line 941
    iget-object v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    .line 942
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->b:Ljava/lang/String;

    .line 943
    iget-boolean v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->c:Z

    iput-boolean v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->c:Z

    .line 944
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->d:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->d:F

    .line 945
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->f:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->f:F

    .line 946
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->e:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->e:F

    .line 947
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->g:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->g:F

    .line 948
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->h:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->h:F

    .line 949
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->i:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->i:F

    .line 950
    iget v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->j:F

    iput v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->j:F

    .line 951
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->k:Ljava/util/ArrayList;

    .line 952
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->l:Ljava/util/ArrayList;

    .line 953
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    .line 954
    iget-object v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    .line 956
    iget-object v1, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    .line 963
    :cond_0
    :goto_0
    return-object v0

    .line 958
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 959
    iget-object v2, p1, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 960
    iput-object v1, v0, Lcom/larvalabs/svgandroid/SVGParser$a;->m:Landroid/graphics/Matrix;

    goto :goto_0
.end method
