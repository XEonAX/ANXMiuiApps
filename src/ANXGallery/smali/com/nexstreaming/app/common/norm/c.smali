.class public Lcom/nexstreaming/app/common/norm/c;
.super Ljava/lang/Object;
.source "NormTableInfo.java"


# static fields
.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">;",
            "Lcom/nexstreaming/app/common/norm/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:Lcom/nexstreaming/app/common/norm/NormColumnInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/norm/c;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/norm/a;->camelCaseToLCUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->d:Ljava/lang/String;

    .line 34
    const-string v0, "CREATE TABLE "

    .line 35
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nexstreaming/app/common/norm/c;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (\n    "

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "DROP TABLE IF EXISTS "

    .line 39
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nexstreaming/app/common/norm/c;->d:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 43
    array-length v3, v10

    move v2, v6

    move v0, v6

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v10, v2

    .line 44
    invoke-direct {p0, v4}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    array-length v2, v10

    sub-int/2addr v2, v0

    new-array v2, v2, [Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    iput-object v2, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    .line 48
    array-length v2, v10

    sub-int v0, v2, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->e:[Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    move v5, v6

    move-object v2, v1

    move-object v3, v1

    move v4, v6

    :goto_1
    array-length v7, v10

    if-ge v5, v7, :cond_a

    .line 54
    aget-object v11, v10, v5

    .line 55
    invoke-direct {p0, v11}, Lcom/nexstreaming/app/common/norm/c;->a(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 53
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 58
    new-instance v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    invoke-direct {v7, v11}, Lcom/nexstreaming/app/common/norm/NormColumnInfo;-><init>(Ljava/lang/reflect/Field;)V

    .line 59
    iget-object v11, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    aput-object v7, v11, v0

    .line 60
    iget-object v11, p0, Lcom/nexstreaming/app/common/norm/c;->e:[Ljava/lang/String;

    iget-object v12, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    aput-object v12, v11, v0

    .line 62
    iget-boolean v11, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->h:Z

    if-eqz v11, :cond_5

    .line 63
    if-nez v3, :cond_4

    .line 64
    array-length v2, v10

    new-array v3, v2, [Ljava/lang/String;

    .line 65
    array-length v2, v10

    new-array v2, v2, [Ljava/lang/String;

    .line 67
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CREATE INDEX idx_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ON "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nexstreaming/app/common/norm/c;->d:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    .line 69
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DROP INDEX IF EXISTS idx_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 74
    :cond_5
    iget-boolean v11, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->g:Z

    if-eqz v11, :cond_6

    move-object v1, v7

    .line 76
    :cond_6
    if-lez v0, :cond_7

    .line 77
    const-string v11, ",\n    "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_7
    iget-object v11, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    sget-object v11, Lcom/nexstreaming/app/common/norm/c$1;->a:[I

    iget-object v12, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-virtual {v12}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 102
    :goto_3
    iget-boolean v11, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->d:Z

    if-eqz v11, :cond_8

    .line 103
    const-string v11, " UNIQUE"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_8
    iget-boolean v7, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->e:Z

    if-eqz v7, :cond_2

    .line 106
    const-string v7, " NOT NULL"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 83
    :pswitch_0
    iget-boolean v11, v7, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->g:Z

    if-eqz v11, :cond_9

    .line 84
    const-string v11, "INTEGER PRIMARY KEY"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 86
    :cond_9
    const-string v11, "INTEGER"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 91
    :pswitch_1
    const-string v11, "REAL"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 96
    :pswitch_2
    const-string v11, "TEXT"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 99
    :pswitch_3
    const-string v11, "BLOB"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 109
    :cond_a
    iput-object v1, p0, Lcom/nexstreaming/app/common/norm/c;->f:Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    .line 110
    const/16 v0, 0x29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->a:[Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->a:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 113
    if-lez v4, :cond_b

    .line 114
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v3, v6, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_b
    add-int/lit8 v0, v4, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->b:[Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->b:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 118
    if-lez v4, :cond_c

    .line 119
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->b:[Ljava/lang/String;

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_c
    return-void

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/Class;)Lcom/nexstreaming/app/common/norm/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">;)",
            "Lcom/nexstreaming/app/common/norm/c;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/nexstreaming/app/common/norm/c;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/c;

    .line 127
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/nexstreaming/app/common/norm/c;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/norm/c;-><init>(Ljava/lang/Class;)V

    .line 129
    sget-object v1, Lcom/nexstreaming/app/common/norm/c;->g:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "serialVersionUID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/nexstreaming/app/common/norm/NormColumnInfo;
    .locals 5

    .prologue
    .line 155
    iget-object v2, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 156
    iget-object v4, v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    :goto_1
    return-object v0

    .line 155
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public a(II)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->i:I

    if-le v2, p1, :cond_0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 178
    new-array v0, v1, [Ljava/lang/String;

    .line 220
    :goto_1
    return-object v0

    .line 181
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 183
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    iget-object v4, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    aget-object v0, v4, v0

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v5, "ALTER TABLE "

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nexstreaming/app/common/norm/c;->d:Ljava/lang/String;

    .line 188
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ADD COLUMN "

    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v5, v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    sget-object v5, Lcom/nexstreaming/app/common/norm/c$1;->a:[I

    iget-object v6, v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-virtual {v6}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 216
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 219
    goto :goto_2

    .line 197
    :pswitch_0
    iget-boolean v0, v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->g:Z

    if-eqz v0, :cond_3

    .line 198
    const-string v0, "INTEGER PRIMARY KEY"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 200
    :cond_3
    const-string v0, "INTEGER"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 205
    :pswitch_1
    const-string v0, "REAL"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 210
    :pswitch_2
    const-string v0, "TEXT"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 213
    :pswitch_3
    const-string v0, "BLOB"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 220
    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public e()[Lcom/nexstreaming/app/common/norm/NormColumnInfo;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->c:[Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    return-object v0
.end method

.method public f()Lcom/nexstreaming/app/common/norm/NormColumnInfo;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/c;->f:Lcom/nexstreaming/app/common/norm/NormColumnInfo;

    return-object v0
.end method
