.class public Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;,
        Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;,
        Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:[Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/io/File;

.field private transient e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private transient f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final transient g:Landroid/graphics/Typeface;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 261
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const/4 v1, 0x0

    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v3, " thin"

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v2, " light"

    invoke-direct {v1, v2, v6, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v2, " regular"

    invoke-direct {v1, v2, v7, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v2, " medium"

    invoke-direct {v1, v2, v8, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v2, " bold"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v3, " black"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v3, " italic"

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    const-string v3, " condensed"

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v4, v5}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->k:[Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->h:Ljava/lang/String;

    .line 60
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->b:Z

    .line 61
    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->g:Landroid/graphics/Typeface;

    .line 62
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->c:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d:Ljava/io/File;

    .line 64
    iput-object p4, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->i:Ljava/lang/String;

    .line 65
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->h:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->b:Z

    .line 41
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->g:Landroid/graphics/Typeface;

    .line 42
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d:Ljava/io/File;

    .line 44
    iput-object p4, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->i:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->h:Ljava/lang/String;

    .line 50
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->b:Z

    .line 51
    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->c:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d:Ljava/io/File;

    .line 53
    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->g:Landroid/graphics/Typeface;

    .line 54
    iput-object p4, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->i:Ljava/lang/String;

    .line 55
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()[Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->k:[Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;

    return-object v0
.end method

.method private d(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 169
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 170
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 172
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 173
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 175
    const/16 v8, 0x1e

    .line 176
    const/16 v3, 0x3ac

    .line 177
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->i:Ljava/lang/String;

    int-to-float v1, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v1, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 181
    const/16 v1, 0x3e8

    const/16 v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 184
    int-to-float v3, v8

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 188
    return-object v1
.end method

.method private d()Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->j:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->j:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->j:Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;)I
    .locals 4

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d()Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    move-result-object v1

    .line 313
    invoke-direct {p1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d()Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;

    move-result-object v2

    .line 314
    iget-object v0, v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->a:Ljava/lang/String;

    iget-object v3, v2, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return v0

    :cond_0
    iget v0, v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->b:I

    iget v1, v2, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$a;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->b(Landroid/content/Context;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 140
    :goto_0
    return-object p2

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 106
    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->b:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->g:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->g:Landroid/graphics/Typeface;

    .line 117
    :goto_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->f:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d:Ljava/io/File;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->f:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "native typeface cannot be made"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    new-instance v1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException;

    invoke-direct {v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$TypefaceLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :cond_3
    throw v0

    .line 133
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 147
    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->d(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 159
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 160
    aget v3, v1, v2

    aget v4, v1, v2

    shl-int/lit8 v4, v4, 0x8

    or-int/lit16 v4, v4, 0xff

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 164
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->e:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a(Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[font:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
