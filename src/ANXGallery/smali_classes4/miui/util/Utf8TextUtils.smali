.class public Lmiui/util/Utf8TextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Utf8TextUtils$CharRange;
    }
.end annotation


# static fields
.field private static final JZ:Ljava/lang/String; = "UTF-8"

.field private static final Ka:I = 0x1

.field private static final Kb:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Utf8TextUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)I
    .locals 4

    .line 175
    nop

    .line 177
    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 178
    shr-int v3, p0, v1

    int-to-byte v3, v3

    .line 179
    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 180
    goto :goto_1

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 177
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    return v0
.end method

.method private static a([BI)Lmiui/util/Utf8TextUtils$CharRange;
    .locals 1

    .line 142
    aget-byte v0, p0, p1

    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->a(B)I

    move-result v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    new-instance p0, Lmiui/util/Utf8TextUtils$CharRange;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/util/Utf8TextUtils$CharRange;-><init>(II)V

    return-object p0

    .line 146
    :cond_0
    invoke-static {p0, p1, v0}, Lmiui/util/Utf8TextUtils;->a([BII)Lmiui/util/Utf8TextUtils$CharRange;

    move-result-object p0

    return-object p0
.end method

.method private static a([BII)Lmiui/util/Utf8TextUtils$CharRange;
    .locals 1

    .line 151
    new-instance v0, Lmiui/util/Utf8TextUtils$CharRange;

    invoke-direct {v0}, Lmiui/util/Utf8TextUtils$CharRange;-><init>()V

    .line 152
    invoke-static {p0, p1, p2}, Lmiui/util/Utf8TextUtils;->b([BII)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 153
    iput p1, v0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 154
    iput p2, v0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    .line 156
    :cond_0
    return-object v0
.end method

.method private static b([BII)Z
    .locals 4

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    const/4 v2, 0x6

    if-le p2, v2, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    .line 165
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lmiui/util/Utf8TextUtils;->a(B)I

    move-result v3

    .line 166
    if-eq v3, v1, :cond_1

    .line 168
    return v0

    .line 164
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    return v1

    .line 162
    :cond_3
    :goto_1
    return v0
.end method

.method private static c([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lmiui/util/Utf8TextUtils$CharRange;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    nop

    .line 129
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 130
    invoke-static {p0, v1}, Lmiui/util/Utf8TextUtils;->a([BI)Lmiui/util/Utf8TextUtils$CharRange;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lmiui/util/Utf8TextUtils$CharRange;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    goto :goto_1

    .line 135
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget v2, v2, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-gt p2, p1, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 59
    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->c([B)Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    if-ltz p1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lt p1, p0, :cond_2

    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    .line 68
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/util/Utf8TextUtils$CharRange;

    iget p1, p1, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 69
    if-lt p2, p0, :cond_3

    array-length p0, v0

    goto :goto_0

    :cond_3
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/util/Utf8TextUtils$CharRange;

    iget p0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 70
    :goto_0
    sub-int/2addr p0, p1

    .line 71
    new-array p2, p0, [B

    .line 72
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    const-string p0, ""

    return-object p0

    .line 65
    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0

    .line 56
    :cond_5
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 89
    invoke-static {v0}, Lmiui/util/Utf8TextUtils;->c([B)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 100
    :cond_2
    array-length v2, v0

    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/util/Utf8TextUtils$CharRange;

    .line 103
    iget v5, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-lt v5, p1, :cond_3

    .line 104
    nop

    .line 101
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v4}, Lmiui/util/Utf8TextUtils$CharRange;->getEndIndex()I

    move-result v2

    .line 107
    if-gt v2, p1, :cond_4

    .line 108
    goto :goto_2

    .line 110
    :cond_4
    iget v2, v4, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    .line 112
    nop

    .line 114
    :cond_5
    :goto_2
    array-length p1, v0

    if-ge v2, p1, :cond_6

    .line 115
    new-array p1, v2, [B

    .line 116
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 119
    :cond_6
    return-object p0

    .line 120
    :catch_0
    move-exception p1

    .line 121
    const-string v0, "Utf8TextUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get bytes of UTF-8 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 p0, 0x0

    return-object p0
.end method
