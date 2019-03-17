.class public final Lcom/kingsoft/iciba/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[J

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/iciba/a/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingsoft/iciba/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iciba"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/iciba/a/b;->a:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "n."

    aput-object v1, v0, v3

    const-string v1, "v."

    aput-object v1, v0, v4

    const-string v1, "vt."

    aput-object v1, v0, v5

    const-string v1, "vi."

    aput-object v1, v0, v6

    const-string v1, "adj."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "adv."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "abbr."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "art."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pron."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prep."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "num."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "conj."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "interj."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "int."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "aux."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "na."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "link-v."

    aput-object v2, v0, v1

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "n"

    aput-object v1, v0, v3

    const-string v1, "v"

    aput-object v1, v0, v4

    const-string v1, "t"

    aput-object v1, v0, v5

    const-string v1, "i"

    aput-object v1, v0, v6

    const-string v1, "j"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "word_ing"

    aput-object v1, v0, v3

    const-string v1, "word_pl"

    aput-object v1, v0, v4

    const-string v1, "word_past"

    aput-object v1, v0, v5

    const-string v1, "word_done"

    aput-object v1, v0, v6

    const-string v1, "word_third"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "word_er"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "word_est"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "word_noun"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "word_adv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "word_conn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "word_adj"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "word_prep"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "word_verb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/iciba/a/b;->b:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/iciba/a/b;->c:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x4e85318
        0x4235ad4
        0x3ed7c8e
        0x3ed74c1
        0x3ed79f1
        0x3ed81af
        0x3ed84ab
        0x3ed6f5b
        0x3ed88a1
        0x3ea5815
        0x3ed6c6f
        0x3ea389c
        0x3ea3b87
        0x3ea40f2
        0x3ea4581
        0x3ea4902
        0x3ea4d97
        0x3ea4fac
        0x3ea5302
        0x3ea5962
    .end array-data
.end method
