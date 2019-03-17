.class Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;
.super Ljava/lang/Object;
.source "nexAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;)V
    .locals 0

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->a:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$1;)V
    .locals 0

    .prologue
    .line 1648
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;-><init>(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;)V

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;)I
    .locals 1

    .prologue
    .line 1648
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->b:I

    return v0
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;I)I
    .locals 0

    .prologue
    .line 1648
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->b:I

    return p1
.end method

.method static synthetic a(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;I)I
    .locals 0

    .prologue
    .line 1648
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->c:I

    return p1
.end method

.method static synthetic b(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;)I
    .locals 1

    .prologue
    .line 1648
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$b;->c:I

    return v0
.end method
