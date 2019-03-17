.class Lcom/miui/gallery/util/ShareComponentSorter$Tag;
.super Ljava/lang/Object;
.source "ShareComponentSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tag"
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$1;

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    .line 471
    iput-object p2, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    .line 472
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$Tag;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter$Tag;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    if-ne p1, p0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    .line 481
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 482
    check-cast v0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    .line 483
    .local v0, "tag":Lcom/miui/gallery/util/ShareComponentSorter$Tag;
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "tag":Lcom/miui/gallery/util/ShareComponentSorter$Tag;
    :cond_3
    move v1, v2

    .line 485
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
