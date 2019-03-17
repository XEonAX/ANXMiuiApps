.class Lcom/larvalabs/svgandroid/SVGParser$g;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$g;->a:Ljava/util/HashMap;

    .line 971
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 972
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 973
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 974
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 975
    iget-object v5, p0, Lcom/larvalabs/svgandroid/SVGParser$g;->a:Ljava/util/HashMap;

    aget-object v6, v4, v1

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/larvalabs/svgandroid/SVGParser$1;)V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0, p1}, Lcom/larvalabs/svgandroid/SVGParser$g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/larvalabs/svgandroid/SVGParser$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
