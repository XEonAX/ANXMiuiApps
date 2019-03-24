.class public Lmiui/text/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static GJ:Lmiui/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static GK:Lmiui/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final Gi:I = 0xc

.field private static final Gj:I = 0xf

.field private static final Gk:I = 0x23

.field private static final Gl:I = 0x8

.field private static final Gm:I = 0x3

.field private static final Gn:Ljava/lang/String; = "\u094d"

.field private static final TAG:Ljava/lang/String; = "HindiPinyinConverter"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/text/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Go:[Ljava/lang/String;

.field private Gp:[Ljava/lang/String;

.field private Gq:[Ljava/lang/String;

.field private Gr:[Ljava/lang/String;

.field private Gs:[Ljava/lang/String;

.field private Gt:[Ljava/lang/String;

.field private Gu:[Ljava/lang/String;

.field private Gv:[Ljava/lang/String;

.field private Gw:[Ljava/lang/String;

.field private Gx:[Ljava/lang/String;

.field private Gy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Gz:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 332
    new-instance v0, Lmiui/text/HindiPinyinConverter$1;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$1;-><init>()V

    sput-object v0, Lmiui/text/HindiPinyinConverter;->s:Lmiui/util/SoftReferenceSingleton;

    .line 340
    new-instance v0, Lmiui/text/HindiPinyinConverter$2;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    .line 352
    new-instance v0, Lmiui/text/HindiPinyinConverter$3;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$3;-><init>()V

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/text/HindiPinyinConverter;->GK:Lmiui/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->cZ()V

    .line 369
    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->da()V

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/HindiPinyinConverter$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 506
    sget-object v0, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 508
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 509
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 510
    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 511
    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    .line 514
    :cond_0
    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 515
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 517
    :cond_1
    const-string v5, "\\u%04x"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 521
    sget-object v1, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 522
    return-object p0
.end method

.method private static varargs c([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 496
    sget-object v0, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 497
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 498
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    sget-object v1, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 502
    return-object p0
.end method

.method private cZ()V
    .locals 19

    .line 70
    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    .line 71
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    .line 73
    const/16 v2, 0xf

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    .line 74
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    .line 76
    const/16 v3, 0x23

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    .line 77
    const/16 v3, 0x23

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    .line 79
    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    .line 80
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    .line 82
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    .line 83
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    .line 85
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    .line 87
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->GC:Ljava/util/HashMap;

    .line 92
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0905"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 93
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0906"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 94
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0907"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 95
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0908"

    aput-object v6, v5, v4

    .line 96
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0909"

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 97
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u090a"

    const/4 v11, 0x5

    aput-object v6, v5, v11

    .line 98
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u090b"

    const/4 v12, 0x6

    aput-object v6, v5, v12

    .line 99
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u090f"

    const/4 v13, 0x7

    aput-object v6, v5, v13

    .line 100
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0910"

    aput-object v6, v5, v3

    .line 101
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0911"

    const/16 v14, 0x9

    aput-object v6, v5, v14

    .line 102
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0913"

    const/16 v15, 0xa

    aput-object v6, v5, v15

    .line 103
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    const-string v6, "\u0914"

    const/16 v16, 0xb

    aput-object v6, v5, v16

    .line 105
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v5, v7

    .line 106
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "aa"

    aput-object v6, v5, v8

    .line 107
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "i"

    aput-object v6, v5, v9

    .line 108
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "ee"

    aput-object v6, v5, v4

    .line 109
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "u"

    aput-object v6, v5, v10

    .line 110
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "oo"

    aput-object v6, v5, v11

    .line 111
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "r"

    aput-object v6, v5, v12

    .line 112
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "e"

    aput-object v6, v5, v13

    .line 113
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "ai"

    aput-object v6, v5, v3

    .line 114
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "o"

    aput-object v6, v5, v14

    .line 115
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "o"

    aput-object v6, v5, v15

    .line 116
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    const-string v6, "au"

    aput-object v6, v5, v16

    .line 121
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u093e"

    aput-object v6, v5, v7

    .line 122
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u093f"

    aput-object v6, v5, v8

    .line 123
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0940"

    aput-object v6, v5, v9

    .line 124
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0941"

    aput-object v6, v5, v4

    .line 125
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0942"

    aput-object v6, v5, v10

    .line 126
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0943"

    aput-object v6, v5, v11

    .line 127
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0944"

    aput-object v6, v5, v12

    .line 128
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0945"

    aput-object v6, v5, v13

    .line 129
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0947"

    aput-object v6, v5, v3

    .line 130
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0948"

    aput-object v6, v5, v14

    .line 131
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u0949"

    aput-object v6, v5, v15

    .line 132
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u094b"

    aput-object v6, v5, v16

    .line 133
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u094c"

    aput-object v6, v5, v1

    .line 134
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u094e"

    const/16 v17, 0xd

    aput-object v6, v5, v17

    .line 135
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    const-string v6, "\u094f"

    const/16 v18, 0xe

    aput-object v6, v5, v18

    .line 137
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "aa"

    aput-object v6, v5, v7

    .line 138
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "i"

    aput-object v6, v5, v8

    .line 139
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "ee"

    aput-object v6, v5, v9

    .line 140
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "u"

    aput-object v6, v5, v4

    .line 141
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "oo"

    aput-object v6, v5, v10

    .line 142
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "r"

    aput-object v6, v5, v11

    .line 143
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "R"

    aput-object v6, v5, v12

    .line 144
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "e"

    aput-object v6, v5, v13

    .line 145
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "e"

    aput-object v6, v5, v3

    .line 146
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "ai"

    aput-object v6, v5, v14

    .line 147
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "o"

    aput-object v6, v5, v15

    .line 148
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "o"

    aput-object v6, v5, v16

    .line 149
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "au"

    aput-object v6, v5, v1

    .line 150
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "e"

    aput-object v6, v5, v17

    .line 151
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    const-string v6, "aw"

    aput-object v6, v5, v18

    .line 156
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0915"

    aput-object v6, v5, v7

    .line 157
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0916"

    aput-object v6, v5, v8

    .line 158
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0917"

    aput-object v6, v5, v9

    .line 159
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0918"

    aput-object v6, v5, v4

    .line 160
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0919"

    aput-object v6, v5, v10

    .line 161
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u091a"

    aput-object v6, v5, v11

    .line 162
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u091b"

    aput-object v6, v5, v12

    .line 163
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u091c"

    aput-object v6, v5, v13

    .line 164
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u091d"

    aput-object v6, v5, v3

    .line 165
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u091e"

    aput-object v6, v5, v14

    .line 166
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u091f"

    aput-object v6, v5, v15

    .line 167
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0920"

    aput-object v6, v5, v16

    .line 168
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0921"

    aput-object v6, v5, v1

    .line 169
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0922"

    aput-object v6, v5, v17

    .line 170
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0923"

    aput-object v6, v5, v18

    .line 171
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0924"

    aput-object v6, v5, v2

    .line 172
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0925"

    const/16 v18, 0x10

    aput-object v6, v5, v18

    .line 173
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0926"

    const/16 v18, 0x11

    aput-object v6, v5, v18

    .line 174
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0927"

    const/16 v18, 0x12

    aput-object v6, v5, v18

    .line 175
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0928"

    const/16 v18, 0x13

    aput-object v6, v5, v18

    .line 176
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0929"

    const/16 v18, 0x14

    aput-object v6, v5, v18

    .line 177
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u092a"

    const/16 v18, 0x15

    aput-object v6, v5, v18

    .line 178
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u092b"

    const/16 v18, 0x16

    aput-object v6, v5, v18

    .line 179
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u092c"

    const/16 v18, 0x17

    aput-object v6, v5, v18

    .line 180
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u092d"

    const/16 v18, 0x18

    aput-object v6, v5, v18

    .line 181
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u092e"

    const/16 v18, 0x19

    aput-object v6, v5, v18

    .line 182
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u092f"

    const/16 v18, 0x1a

    aput-object v6, v5, v18

    .line 183
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0930"

    const/16 v18, 0x1b

    aput-object v6, v5, v18

    .line 184
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0931"

    const/16 v18, 0x1c

    aput-object v6, v5, v18

    .line 185
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0932"

    const/16 v18, 0x1d

    aput-object v6, v5, v18

    .line 186
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0935"

    const/16 v18, 0x1e

    aput-object v6, v5, v18

    .line 187
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0936"

    const/16 v18, 0x1f

    aput-object v6, v5, v18

    .line 188
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0937"

    const/16 v18, 0x20

    aput-object v6, v5, v18

    .line 189
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0938"

    const/16 v18, 0x21

    aput-object v6, v5, v18

    .line 190
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    const-string v6, "\u0939"

    const/16 v18, 0x22

    aput-object v6, v5, v18

    .line 192
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "k"

    aput-object v6, v5, v7

    .line 193
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "kh"

    aput-object v6, v5, v8

    .line 194
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "g"

    aput-object v6, v5, v9

    .line 195
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "gh"

    aput-object v6, v5, v4

    .line 196
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "ng"

    aput-object v6, v5, v10

    .line 197
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "c"

    aput-object v6, v5, v11

    .line 198
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "ch"

    aput-object v6, v5, v12

    .line 199
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "j"

    aput-object v6, v5, v13

    .line 200
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v6, "jh"

    aput-object v6, v5, v3

    .line 201
    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v5, "ny"

    aput-object v5, v3, v14

    .line 202
    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v5, "T"

    aput-object v5, v3, v15

    .line 203
    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v5, "Th"

    aput-object v5, v3, v16

    .line 204
    iget-object v3, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v5, "D"

    aput-object v5, v3, v1

    .line 205
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v3, "Dh"

    aput-object v3, v1, v17

    .line 206
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v3, "N"

    const/16 v5, 0xe

    aput-object v3, v1, v5

    .line 207
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v3, "t"

    aput-object v3, v1, v2

    .line 208
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "th"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 209
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "d"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 210
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "dh"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 211
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "n"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 212
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "Nn"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 213
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "p"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 214
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "ph"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 215
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "b"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 216
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "bh"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 217
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "m"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 218
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "y"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 219
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "r"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 220
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "R"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 221
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "l"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 222
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "v"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 223
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "sh"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 224
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "S"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 225
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "s"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 226
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    const-string v2, "h"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 231
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u0958"

    aput-object v2, v1, v7

    .line 232
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u0959"

    aput-object v2, v1, v8

    .line 233
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u095a"

    aput-object v2, v1, v9

    .line 234
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u095b"

    aput-object v2, v1, v4

    .line 235
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u095c"

    aput-object v2, v1, v10

    .line 236
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u095d"

    aput-object v2, v1, v11

    .line 237
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u095e"

    aput-object v2, v1, v12

    .line 238
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    const-string v2, "\u095f"

    aput-object v2, v1, v13

    .line 240
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v7

    .line 241
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "khh"

    aput-object v2, v1, v8

    .line 242
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "ghh"

    aput-object v2, v1, v9

    .line 243
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "z"

    aput-object v2, v1, v4

    .line 244
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "Ddh"

    aput-object v2, v1, v10

    .line 245
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "rh"

    aput-object v2, v1, v11

    .line 246
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "f"

    aput-object v2, v1, v12

    .line 247
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    const-string v2, "Y"

    aput-object v2, v1, v13

    .line 252
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    const-string v2, "\u0901"

    aput-object v2, v1, v7

    .line 253
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    const-string v2, "\u0902"

    aput-object v2, v1, v8

    .line 254
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    const-string v2, "\u0903"

    aput-object v2, v1, v9

    .line 256
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    const-string v2, "an"

    aput-object v2, v1, v7

    .line 257
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    const-string v2, "an"

    aput-object v2, v1, v8

    .line 258
    iget-object v0, v0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    const-string v1, "ah"

    aput-object v1, v0, v9

    .line 259
    return-void
.end method

.method private da()V
    .locals 11

    .line 263
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x23

    if-ge v1, v2, :cond_0

    .line 264
    iget-object v2, p0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    move v1, v0

    :goto_1
    const/16 v3, 0xc

    if-ge v1, v3, :cond_1

    .line 269
    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->Go:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 270
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Gp:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 271
    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    :cond_1
    move v1, v0

    :goto_2
    const/16 v4, 0x8

    if-ge v1, v4, :cond_2

    .line 274
    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 275
    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 276
    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 280
    :cond_2
    move v1, v0

    :goto_3
    const/4 v5, 0x3

    const/16 v6, 0xf

    if-ge v1, v2, :cond_5

    .line 281
    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_3

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 286
    :cond_3
    move v6, v0

    :goto_5
    if-ge v6, v5, :cond_4

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 289
    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 280
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 292
    :cond_5
    move v1, v0

    :goto_6
    if-ge v1, v4, :cond_8

    .line 293
    move v7, v0

    :goto_7
    if-ge v7, v6, :cond_6

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gu:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 298
    :cond_6
    move v7, v0

    :goto_8
    if-ge v7, v5, :cond_7

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 292
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 304
    :cond_8
    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_9

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u094d"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 307
    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 309
    :cond_9
    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_a

    .line 310
    nop

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 318
    :cond_a
    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_d

    .line 319
    move v3, v0

    :goto_c
    if-ge v3, v6, :cond_c

    .line 320
    move v4, v0

    :goto_d
    if-ge v4, v5, :cond_b

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->Gs:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->Gq:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->Gw:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gt:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gr:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->Gx:[Ljava/lang/String;

    aget-object v9, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->GC:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 319
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 318
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 329
    :cond_d
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    const-string v1, "\u0905\u0902"

    const-string v2, "am"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public static getInstance()Lmiui/text/HindiPinyinConverter;
    .locals 1

    .line 376
    sget-object v0, Lmiui/text/HindiPinyinConverter;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/HindiPinyinConverter;

    return-object v0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 421
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    sget-object v4, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v4}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_a

    .line 424
    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 425
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 426
    add-int v10, v7, v9

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 427
    const-string v11, ""

    .line 428
    const-string v12, ""

    .line 429
    const-string v13, ""

    .line 430
    nop

    .line 431
    if-ge v10, v5, :cond_0

    .line 432
    invoke-static {v1, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 433
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 434
    add-int v12, v10, v9

    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 436
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 438
    iget-object v8, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 439
    iget-object v8, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    .line 441
    :cond_1
    nop

    .line 483
    :goto_1
    move/from16 v17, v5

    :goto_2
    move v7, v10

    goto/16 :goto_4

    .line 443
    :cond_2
    add-int v14, v10, v9

    .line 444
    if-ge v14, v5, :cond_3

    .line 445
    invoke-static {v1, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 446
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 447
    add-int v13, v14, v9

    invoke-virtual {v1, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 449
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    const/4 v8, 0x2

    if-eqz v15, :cond_6

    .line 451
    new-array v14, v8, [Ljava/lang/String;

    aput-object v7, v14, v6

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-static {v14}, Lmiui/text/HindiPinyinConverter;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 452
    iget-object v15, v0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 453
    iget-object v7, v0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    .line 454
    add-int/2addr v10, v9

    goto :goto_3

    .line 455
    :cond_4
    iget-object v9, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 456
    iget-object v8, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    .line 457
    goto :goto_3

    .line 459
    :cond_5
    nop

    .line 460
    const-string v9, "HindiPinyinConverter"

    const-string v14, "Ignore unknown hindi: %s%s%s %s"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v6

    const/16 v16, 0x1

    aput-object v12, v15, v16

    aput-object v13, v15, v8

    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object v7, v1, v6

    aput-object v12, v1, v16

    const/4 v7, 0x2

    aput-object v13, v1, v7

    .line 461
    invoke-static {v1}, Lmiui/text/HindiPinyinConverter;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/text/HindiPinyinConverter;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v8

    .line 460
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_3
    goto :goto_1

    .line 465
    :cond_6
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    aput-object v7, v8, v6

    const/4 v15, 0x1

    aput-object v12, v8, v15

    invoke-static {v8}, Lmiui/text/HindiPinyinConverter;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 466
    move/from16 v17, v5

    new-array v5, v1, [Ljava/lang/String;

    aput-object v8, v5, v6

    aput-object v13, v5, v15

    invoke-static {v5}, Lmiui/text/HindiPinyinConverter;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->GC:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 468
    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->GC:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 469
    add-int/2addr v14, v9

    .line 483
    move v7, v14

    goto :goto_4

    .line 470
    :cond_7
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 471
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gz:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 472
    add-int/2addr v10, v9

    goto/16 :goto_2

    .line 473
    :cond_8
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 474
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->Gy:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 475
    goto/16 :goto_2

    .line 477
    :cond_9
    nop

    .line 478
    const-string v1, "HindiPinyinConverter"

    const-string v5, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v6

    const/4 v9, 0x1

    aput-object v12, v8, v9

    const/4 v14, 0x2

    aput-object v13, v8, v14

    const/4 v15, 0x3

    new-array v14, v15, [Ljava/lang/String;

    aput-object v7, v14, v6

    aput-object v12, v14, v9

    const/4 v7, 0x2

    aput-object v13, v14, v7

    .line 479
    invoke-static {v14}, Lmiui/text/HindiPinyinConverter;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/text/HindiPinyinConverter;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v15

    .line 478
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 483
    :goto_4
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    nop

    .line 423
    move/from16 v5, v17

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 488
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    sget-object v1, Lmiui/text/HindiPinyinConverter;->GJ:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v4}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 491
    const-string v1, "HindiPinyinConverter"

    const-string v7, "hindiToPinyin(): using time %d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-object v0
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 385
    sget-object v0, Lmiui/text/HindiPinyinConverter;->GK:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "ee"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    const-string v1, "ee"

    const-string v2, "ii"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    const-string v1, "oo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const-string v1, "oo"

    const-string v2, "uu"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    const-string v1, "v"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    const-string v1, "v"

    const-string v2, "w"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    sget-object p1, Lmiui/text/HindiPinyinConverter;->GK:Lmiui/util/Pools$SimplePool;

    invoke-virtual {p1}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    const-string v4, "aa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_3
    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 409
    sget-object v2, Lmiui/text/HindiPinyinConverter;->GK:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lmiui/text/HindiPinyinConverter;->GK:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 411
    return-object v1
.end method
