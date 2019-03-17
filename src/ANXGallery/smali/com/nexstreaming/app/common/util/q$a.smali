.class Lcom/nexstreaming/app/common/util/q$a;
.super Ljava/lang/Object;
.source "utilityTextOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/app/common/util/q;

.field private b:F

.field private c:Landroid/graphics/Paint$Align;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/nexstreaming/app/common/util/q;FILandroid/graphics/Paint$Align;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nexstreaming/app/common/util/q$a;->a:Lcom/nexstreaming/app/common/util/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p2, p0, Lcom/nexstreaming/app/common/util/q$a;->b:F

    .line 66
    iput p3, p0, Lcom/nexstreaming/app/common/util/q$a;->d:I

    .line 67
    iput-object p4, p0, Lcom/nexstreaming/app/common/util/q$a;->c:Landroid/graphics/Paint$Align;

    .line 68
    iput-object p5, p0, Lcom/nexstreaming/app/common/util/q$a;->e:Ljava/lang/String;

    .line 69
    iput p6, p0, Lcom/nexstreaming/app/common/util/q$a;->f:I

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/app/common/util/q$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nexstreaming/app/common/util/q$a;)Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q$a;->c:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method static synthetic c(Lcom/nexstreaming/app/common/util/q$a;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/nexstreaming/app/common/util/q$a;->f:I

    return v0
.end method

.method static synthetic d(Lcom/nexstreaming/app/common/util/q$a;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/nexstreaming/app/common/util/q$a;->b:F

    return v0
.end method

.method static synthetic e(Lcom/nexstreaming/app/common/util/q$a;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/nexstreaming/app/common/util/q$a;->d:I

    return v0
.end method
