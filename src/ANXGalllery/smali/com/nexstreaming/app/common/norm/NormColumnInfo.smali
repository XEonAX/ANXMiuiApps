.class public Lcom/nexstreaming/app/common/norm/NormColumnInfo;
.super Ljava/lang/Object;
.source "NormColumnInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/reflect/Field;

.field final c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field final d:Z

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:I

.field final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/nexstreaming/app/common/norm/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 24
    const-class v0, Lcom/nexstreaming/app/common/norm/b$c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/nexstreaming/app/common/norm/b;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->f:Z

    .line 25
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->f:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/nexstreaming/app/common/norm/b;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iput-object v3, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/nexstreaming/app/common/norm/b$f;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->g:Z

    .line 31
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->f:Z

    if-eqz v0, :cond_5

    .line 33
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->LONG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    .line 63
    :goto_2
    iget-boolean v1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->g:Z

    if-eqz v1, :cond_17

    sget-object v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->LONG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    if-eq v0, v1, :cond_17

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary key must be \'long\' type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 24
    goto :goto_0

    .line 28
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->j:Ljava/lang/Class;

    goto :goto_1

    .line 34
    :cond_5
    const-class v0, Ljava/lang/Integer;

    if-eq v3, v0, :cond_6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_7

    .line 35
    :cond_6
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->INT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 36
    :cond_7
    const-class v0, Ljava/lang/Long;

    if-eq v3, v0, :cond_8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_9

    .line 37
    :cond_8
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->LONG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 38
    :cond_9
    const-class v0, Ljava/lang/Float;

    if-eq v3, v0, :cond_a

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_b

    .line 39
    :cond_a
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->FLOAT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 40
    :cond_b
    const-class v0, Ljava/lang/Double;

    if-eq v3, v0, :cond_c

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_d

    .line 41
    :cond_c
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->DOUBLE:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 42
    :cond_d
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_e

    .line 43
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->TEXT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 44
    :cond_e
    const-class v0, Ljava/lang/Boolean;

    if-eq v3, v0, :cond_f

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_10

    .line 45
    :cond_f
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->BOOL:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 46
    :cond_10
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JSON:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 48
    :cond_11
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 49
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JSON:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 50
    :cond_12
    const-class v0, [B

    if-ne v3, v0, :cond_13

    .line 51
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->BLOB:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 52
    :cond_13
    const-class v0, Landroid/graphics/Bitmap;

    if-ne v3, v0, :cond_15

    .line 53
    const-class v0, Lcom/nexstreaming/app/common/norm/b$b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JPEG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto :goto_2

    .line 56
    :cond_14
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->PNG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto/16 :goto_2

    .line 58
    :cond_15
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 59
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ENUM:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    goto/16 :goto_2

    .line 61
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized column type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (for column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_17
    const-class v1, Lcom/nexstreaming/app/common/norm/b$g;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->d:Z

    .line 67
    const-class v1, Lcom/nexstreaming/app/common/norm/b$d;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->h:Z

    .line 68
    const-class v1, Lcom/nexstreaming/app/common/norm/b$e;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->e:Z

    .line 69
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nexstreaming/app/common/norm/a;->camelCaseToLCUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->b:Ljava/lang/reflect/Field;

    .line 71
    iput-object v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->c:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    .line 73
    const-class v0, Lcom/nexstreaming/app/common/norm/b$a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 74
    const-class v0, Lcom/nexstreaming/app/common/norm/b$a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/b$a;

    invoke-interface {v0}, Lcom/nexstreaming/app/common/norm/b$a;->a()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->i:I

    .line 78
    :goto_3
    return-void

    .line 76
    :cond_18
    const/16 v0, 0xb

    iput v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->i:I

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nexstreaming/app/common/norm/NormColumnInfo;->a:Ljava/lang/String;

    return-object v0
.end method
