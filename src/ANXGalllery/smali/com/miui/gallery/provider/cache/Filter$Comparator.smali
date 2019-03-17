.class public final enum Lcom/miui/gallery/provider/cache/Filter$Comparator;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/provider/cache/Filter$Comparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum GREATER:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum GREATER_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum IS_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum LESS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum LESS_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum LIKE:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum NOT_EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum NOT_IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

.field public static final enum NOT_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "GREATER"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->GREATER:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "GREATER_OR_EQUAL"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->GREATER_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "LESS"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LESS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "LESS_OR_EQUAL"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LESS_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "NOT_EQUALS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "IN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "NOT_IN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "IS_NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IS_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "NOT_NULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    const-string v1, "LIKE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cache/Filter$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LIKE:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    .line 181
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/miui/gallery/provider/cache/Filter$Comparator;

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->GREATER:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->GREATER_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LESS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LESS_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/provider/cache/Filter$Comparator;->EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IS_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LIKE:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->$VALUES:[Lcom/miui/gallery/provider/cache/Filter$Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static from(Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .locals 8
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x6c

    const/16 v6, 0x4c

    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/16 v3, 0x3d

    .line 185
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 186
    .local v0, "prefix":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    .local v1, "suffix":C
    if-ne v0, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 188
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LESS_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    .line 212
    :goto_0
    return-object v2

    .line 189
    :cond_0
    if-ne v0, v4, :cond_1

    .line 190
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LESS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 191
    :cond_1
    if-ne v0, v5, :cond_2

    if-ne v1, v3, :cond_2

    .line 192
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->GREATER_OR_EQUAL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 193
    :cond_2
    if-ne v0, v5, :cond_3

    .line 194
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->GREATER:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 195
    :cond_3
    if-ne v0, v3, :cond_4

    .line 196
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 197
    :cond_4
    const/16 v2, 0x21

    if-ne v0, v2, :cond_5

    .line 198
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_EQUALS:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 199
    :cond_5
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_6

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_8

    .line 200
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_7

    .line 201
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 203
    :cond_7
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IN:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 204
    :cond_8
    if-eq v1, v7, :cond_9

    if-ne v1, v6, :cond_c

    .line 205
    :cond_9
    const/16 v2, 0x69

    if-eq v0, v2, :cond_a

    const/16 v2, 0x49

    if-ne v0, v2, :cond_b

    .line 206
    :cond_a
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->IS_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 208
    :cond_b
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->NOT_NULL:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 209
    :cond_c
    if-eq v0, v7, :cond_d

    if-ne v0, v6, :cond_f

    :cond_d
    const/16 v2, 0x45

    if-eq v1, v2, :cond_e

    const/16 v2, 0x65

    if-ne v1, v2, :cond_f

    .line 210
    :cond_e
    sget-object v2, Lcom/miui/gallery/provider/cache/Filter$Comparator;->LIKE:Lcom/miui/gallery/provider/cache/Filter$Comparator;

    goto :goto_0

    .line 212
    :cond_f
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/miui/gallery/provider/cache/Filter$Comparator;->$VALUES:[Lcom/miui/gallery/provider/cache/Filter$Comparator;

    invoke-virtual {v0}, [Lcom/miui/gallery/provider/cache/Filter$Comparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/provider/cache/Filter$Comparator;

    return-object v0
.end method
