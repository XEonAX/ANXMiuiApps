.class public Lcom/larvalabs/svgandroid/b;
.super Ljava/lang/Object;
.source "SVG.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Picture;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/Picture;Landroid/graphics/RectF;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Picture;",
            "Landroid/graphics/RectF;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larvalabs/svgandroid/b;->d:Landroid/graphics/RectF;

    .line 59
    iput-object p1, p0, Lcom/larvalabs/svgandroid/b;->b:Landroid/graphics/Picture;

    .line 60
    iput-object p2, p0, Lcom/larvalabs/svgandroid/b;->c:Landroid/graphics/RectF;

    .line 61
    iput-object p3, p0, Lcom/larvalabs/svgandroid/b;->a:Ljava/util/Set;

    .line 62
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/PictureDrawable;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/nexstreaming/app/common/drawable/a;

    iget-object v1, p0, Lcom/larvalabs/svgandroid/b;->b:Landroid/graphics/Picture;

    invoke-direct {v0, v1}, Lcom/nexstreaming/app/common/drawable/a;-><init>(Landroid/graphics/Picture;)V

    return-object v0
.end method

.method a(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/larvalabs/svgandroid/b;->d:Landroid/graphics/RectF;

    .line 70
    return-void
.end method

.method public b()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/larvalabs/svgandroid/b;->b:Landroid/graphics/Picture;

    return-object v0
.end method
