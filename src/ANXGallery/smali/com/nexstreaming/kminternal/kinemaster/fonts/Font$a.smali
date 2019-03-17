.class Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 292
    :cond_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->c()[Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    move v3, v1

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v5, v4

    .line 293
    iget-object v8, v7, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v8, v7, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 295
    const/4 v2, 0x1

    .line 296
    iget v7, v7, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;->b:I

    add-int/2addr v0, v7

    .line 292
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move-object v2, v3

    move v3, v9

    goto :goto_0

    .line 299
    :cond_1
    if-nez v3, :cond_0

    .line 300
    iput-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->a:Ljava/lang/String;

    .line 301
    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->b:I

    .line 302
    return-void

    :cond_2
    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    .line 280
    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-object v0

    .line 282
    :cond_0
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
