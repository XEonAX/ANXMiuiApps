.class Lcom/nexstreaming/kminternal/kinemaster/fonts/a;
.super Ljava/lang/Object;
.source "BuiltInFonts.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 22
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v4, v1

    move v2, v3

    :goto_0
    if-ge v4, v7, :cond_4

    aget-char v0, v6, v4

    .line 25
    if-eqz v2, :cond_1

    .line 26
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    .line 27
    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    .line 28
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 24
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    .line 33
    :cond_1
    const/16 v8, 0x5f

    if-eq v0, v8, :cond_2

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_3

    .line 34
    :cond_2
    const/16 v0, 0x20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v3

    .line 36
    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotothin"

    const-string v5, "android"

    const-string v6, "sans-serif-thin"

    .line 59
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Thin"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotolight"

    const-string v5, "android"

    const-string v6, "sans-serif-light"

    .line 60
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Light"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v11

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.droidsans"

    const-string v5, "android"

    const-string v6, "sans-serif"

    .line 61
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Regular"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v10

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.droidsansb"

    const-string v5, "android"

    const-string v6, "sans-serif"

    .line 62
    invoke-static {v6, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Bold"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v12

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotonthini"

    const-string v5, "android"

    const-string v6, "sans-serif-thin"

    .line 63
    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Thin Italic"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v13

    const/4 v3, 0x5

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotolighti"

    const-string v6, "android"

    const-string v7, "sans-serif-light"

    .line 64
    invoke-static {v7, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Light Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotoi"

    const-string v6, "android"

    const-string v7, "sans-serif"

    .line 65
    invoke-static {v7, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Regular Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotobi"

    const-string v6, "android"

    const-string v7, "sans-serif"

    .line 66
    invoke-static {v7, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Bold Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotocond"

    const-string v6, "android"

    const-string v7, "sans-serif-condensed"

    .line 67
    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Condensed Regular"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotocondi"

    const-string v6, "android"

    const-string v7, "sans-serif-condensed"

    .line 68
    invoke-static {v7, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Condensed Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotocondb"

    const-string v6, "android"

    const-string v7, "sans-serif-condensed"

    .line 69
    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Condensed Bold"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.robotocondbi"

    const-string v6, "android"

    const-string v7, "sans-serif-condensed"

    .line 70
    invoke-static {v7, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Roboto Condensed Bold Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.droidserif"

    const-string v6, "android"

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 71
    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Noto Serif Regular"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.droidserifb"

    const-string v6, "android"

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 72
    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Noto Serif Bold"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.droidserifi"

    const-string v6, "android"

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 73
    invoke-static {v7, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Noto Serif Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v5, "system.droidserifbi"

    const-string v6, "android"

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 74
    invoke-static {v7, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    const-string v8, "Noto Serif Bold Italic"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v4, v0, v3

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 81
    const-string v6, ".ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    const-string v6, "bevan.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 83
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.bevan"

    const-string v7, "latin"

    const-string v8, "bevan.ttf"

    const-string v9, "Bevan"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const-string v6, "creepster-regular.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 85
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.creepster"

    const-string v7, "latin"

    const-string v8, "creepster-regular.ttf"

    const-string v9, "Creepster"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 128
    new-array v0, v13, [Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotomed"

    const-string v5, "android"

    const-string v6, "sans-serif-medium"

    .line 129
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Medium"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotomedi"

    const-string v5, "android"

    const-string v6, "sans-serif-medium"

    .line 130
    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Medium Italic"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v11

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotoblk"

    const-string v5, "android"

    const-string v6, "sans-serif-black"

    .line 131
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Black"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v10

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.robotoblki"

    const-string v5, "android"

    const-string v6, "sans-serif-black"

    .line 132
    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Roboto Black Italic"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v12

    .line 128
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    new-array v0, v12, [Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.cursive"

    const-string v5, "android"

    const-string v6, "cursive"

    .line 135
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Dancing Script Regular"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.cursiveb"

    const-string v5, "android"

    const-string v6, "cursive"

    .line 136
    invoke-static {v6, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const-string v7, "Dancing Script Bold"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v11

    new-instance v3, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string/jumbo v4, "system.mono"

    const-string v5, "android"

    const-string v6, "monospace"

    .line 137
    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v6, "Droid Sans Mono"

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;Ljava/lang/String;)V

    aput-object v3, v0, v10

    .line 134
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_3
    return-object v2

    .line 86
    :cond_4
    :try_start_1
    const-string v6, "goudy_stm_italic.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 87
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.sortsmillgoudyital"

    const-string v7, "latin"

    const-string v8, "goudy_stm_italic.ttf"

    const-string v9, "Sorts Mill Goudy Italic"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 88
    :cond_5
    const-string v6, "greatvibes-regular.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 89
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.greatvibes"

    const-string v7, "latin"

    const-string v8, "greatvibes-regular.ttf"

    const-string v9, "Great Vibes"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 90
    :cond_6
    const-string v6, "junction.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 91
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.junction"

    const-string v7, "latin"

    const-string v8, "junction.ttf"

    const-string v9, "Junction"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 92
    :cond_7
    const-string v6, "knewave.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 93
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.knewave"

    const-string v7, "latin"

    const-string v8, "knewave.ttf"

    const-string v9, "Knewave"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 94
    :cond_8
    const-string v6, "lato-bold.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 95
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.latobold"

    const-string v7, "latin"

    const-string v8, "lato-bold.ttf"

    const-string v9, "Lato Bold"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 96
    :cond_9
    const-string v6, "leaguegothic.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    .line 97
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.leaguegothic"

    const-string v7, "latin"

    const-string v8, "leaguegothic.ttf"

    const-string v9, "League Gothic"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 98
    :cond_a
    const-string v6, "leaguescript.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 99
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.leaguescriptthin"

    const-string v7, "latin"

    const-string v8, "leaguescript.ttf"

    const-string v9, "League Script"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 100
    :cond_b
    const-string v6, "lindenhill.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_c

    .line 101
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.lindenhillregular"

    const-string v7, "latin"

    const-string v8, "lindenhill.ttf"

    const-string v9, "Linden Hill"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 102
    :cond_c
    const-string v6, "orbitron-bold.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_d

    .line 103
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.orbitronbold"

    const-string v7, "latin"

    const-string v8, "orbitron-bold.ttf"

    const-string v9, "Orbitron Bold"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 104
    :cond_d
    const-string v6, "orbitron-medium.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e

    .line 105
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.orbitronmedium"

    const-string v7, "latin"

    const-string v8, "orbitron-medium.ttf"

    const-string v9, "Orbitron Medium"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 106
    :cond_e
    const-string v6, "raleway_thin.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f

    .line 107
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.ralewaythin"

    const-string v7, "latin"

    const-string v8, "raleway_thin.ttf"

    const-string v9, "Raleway Thin"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 108
    :cond_f
    const-string v6, "redressed.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_10

    .line 109
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.redressedregular"

    const-string v7, "latin"

    const-string v8, "redressed.ttf"

    const-string v9, "Redressed"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 110
    :cond_10
    const-string/jumbo v6, "sniglet.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_11

    .line 111
    new-instance v5, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    const-string v6, "builtin.font.sniglet"

    const-string v7, "latin"

    const-string/jumbo v8, "sniglet.ttf"

    const-string v9, "Sniglet"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 113
    :cond_11
    const-string v6, "_H_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 117
    new-instance v7, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "builtin.font."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/nexstreaming/kminternal/kinemaster/fonts/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "latin"

    invoke-static {v6}, Lcom/nexstreaming/kminternal/kinemaster/fonts/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-char v4, v2, v0

    .line 47
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 46
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
