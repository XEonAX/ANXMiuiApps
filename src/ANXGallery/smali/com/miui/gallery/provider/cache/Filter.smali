.class abstract Lcom/miui/gallery/provider/cache/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/Filter$FilterFactory;,
        Lcom/miui/gallery/provider/cache/Filter$DummyFilter;,
        Lcom/miui/gallery/provider/cache/Filter$CompoundFilter;,
        Lcom/miui/gallery/provider/cache/Filter$CompareFilter;,
        Lcom/miui/gallery/provider/cache/Filter$Comparator;,
        Lcom/miui/gallery/provider/cache/Filter$Compound;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/gallery/provider/cache/CacheItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/regex/Pattern;

.field public static final NOT_SUPPORTED_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-string v0, "(?i)(<(?!=)|<=|>(?!=)|>=|=(?!=)|==|!=|(?<=\\s)LIKE(?=\\s)|(?<=\\s)IN(?=\\s|\\()|(?<=\\s)NOT\\s+IN(?=\\s|\\()|(?<=\\s)IS\\s+NULL(?=\\s|$)|(?<=\\s)NOT\\s+NULL(?=\\s|$))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter;->COMPARATOR:Ljava/util/regex/Pattern;

    .line 289
    new-instance v0, Lcom/miui/gallery/provider/cache/Filter$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/gallery/provider/cache/Filter$1;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/provider/cache/Filter;->NOT_SUPPORTED_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method

.method private static build(Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;
    .locals 22
    .param p0, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/gallery/provider/cache/CacheItem;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/cache/Filter$FilterFactory",
            "<TT;>;)",
            "Lcom/miui/gallery/provider/cache/Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "factory":Lcom/miui/gallery/provider/cache/Filter$FilterFactory;, "Lcom/miui/gallery/provider/cache/Filter$FilterFactory<TT;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 44
    new-instance v13, Lcom/miui/gallery/provider/cache/Filter$DummyFilter;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/miui/gallery/provider/cache/Filter$DummyFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$1;)V

    .line 84
    :goto_0
    return-object v13

    .line 47
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/provider/cache/Filter;->split(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v16

    .line 48
    .local v16, "splits":[[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 49
    .local v7, "filters":[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v5, v16, v17

    .line 51
    .local v5, "compounds":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 52
    .local v10, "indexOfGroup":I
    const/4 v12, 0x0

    .line 53
    .local v12, "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    array-length v0, v7

    move/from16 v18, v0

    const/16 v17, 0x0

    move-object v13, v12

    .end local v12    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .local v13, "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-object v15, v7, v17

    .line 54
    .local v15, "raw":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 55
    const-string v19, ".provider.cache.Filter"

    const-string v20, "build for %s"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-static {v15}, Lcom/miui/gallery/provider/cache/Filter;->inBracket(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 59
    const/16 v19, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/cache/Filter;->build(Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;

    move-result-object v6

    .line 76
    .local v6, "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    :goto_2
    if-nez v13, :cond_4

    .line 77
    move-object v12, v6

    .line 53
    .end local v13    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .restart local v12    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    :goto_3
    add-int/lit8 v17, v17, 0x1

    move-object v13, v12

    .end local v12    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .restart local v13    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    goto :goto_1

    .line 61
    .end local v6    # "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    :cond_1
    sget-object v19, Lcom/miui/gallery/provider/cache/Filter;->COMPARATOR:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 62
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 63
    const/16 v19, 0x0

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "identifier":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/provider/cache/Filter$FilterFactory;->getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;->getIndex(Ljava/lang/String;)I

    move-result v9

    .line 65
    .local v9, "index":I
    if-gez v9, :cond_2

    .line 66
    const-string v19, ".provider.cache.Filter"

    const-string v20, "Found a unrecognized column"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/provider/cache/Filter;->translateParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 69
    .local v14, "params":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/provider/cache/Filter$Comparator;->from(Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$Comparator;

    move-result-object v4

    .line 70
    .local v4, "comparator":Lcom/miui/gallery/provider/cache/Filter$Comparator;
    move-object/from16 v0, p1

    invoke-interface {v0, v9, v4, v14}, Lcom/miui/gallery/provider/cache/Filter$FilterFactory;->getFilter(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    move-result-object v6

    .line 71
    .restart local v6    # "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    goto :goto_2

    .line 72
    .end local v4    # "comparator":Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .end local v6    # "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .end local v8    # "identifier":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v14    # "params":Ljava/lang/String;
    :cond_3
    const-string v19, ".provider.cache.Filter"

    const-string v20, "Found a unrecognized operation"

    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/provider/cache/Filter$FilterFactory;->getFilter(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    move-result-object v6

    .restart local v6    # "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    goto :goto_2

    .line 79
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 80
    new-instance v12, Lcom/miui/gallery/provider/cache/Filter$CompoundFilter;

    add-int/lit8 v19, v10, -0x1

    aget-object v19, v5, v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0, v13, v6}, Lcom/miui/gallery/provider/cache/Filter$CompoundFilter;-><init>(Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter;Lcom/miui/gallery/provider/cache/Filter;)V

    .end local v13    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .restart local v12    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    goto/16 :goto_3

    .line 83
    .end local v6    # "filter":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .end local v12    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    .end local v15    # "raw":Ljava/lang/String;
    .restart local v13    # "output":Lcom/miui/gallery/provider/cache/Filter;, "Lcom/miui/gallery/provider/cache/Filter<TT;>;"
    :cond_5
    const-string v17, ".provider.cache.Filter"

    const-string v18, "filter build finish: %s"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static findCompound(ILjava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$Compound;
    .locals 4
    .param p0, "pos"    # I
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x28

    .line 139
    add-int/lit8 v1, p0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_6

    :cond_2
    add-int/lit8 v1, p0, 0x2

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_3

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_6

    :cond_3
    add-int/lit8 v1, p0, 0x3

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    add-int/lit8 v1, p0, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_6

    :cond_4
    add-int/lit8 v1, p0, 0x4

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, p0, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 147
    :cond_5
    sget-object v0, Lcom/miui/gallery/provider/cache/Filter$Compound;->AND:Lcom/miui/gallery/provider/cache/Filter$Compound;

    goto :goto_0

    .line 148
    :cond_6
    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_7

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_0

    :cond_7
    add-int/lit8 v1, p0, 0x2

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-eq v1, v2, :cond_8

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    :cond_8
    add-int/lit8 v1, p0, 0x3

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v1, p0, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 151
    :cond_9
    sget-object v0, Lcom/miui/gallery/provider/cache/Filter$Compound;->OR:Lcom/miui/gallery/provider/cache/Filter$Compound;

    goto/16 :goto_0
.end method

.method public static from(Ljava/lang/String;[Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;
    .locals 1
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/gallery/provider/cache/CacheItem;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/provider/cache/Filter$FilterFactory",
            "<TT;>;)",
            "Lcom/miui/gallery/provider/cache/Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "factory":Lcom/miui/gallery/provider/cache/Filter$FilterFactory;, "Lcom/miui/gallery/provider/cache/Filter$FilterFactory<TT;>;"
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/cache/Filter;->insertArgs(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/gallery/provider/cache/Filter;->build(Ljava/lang/String;Lcom/miui/gallery/provider/cache/Filter$FilterFactory;)Lcom/miui/gallery/provider/cache/Filter;

    move-result-object v0

    return-object v0
.end method

.method private static inBracket(Ljava/lang/String;)Z
    .locals 3
    .param p0, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static insertArgs(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 174
    .end local p0    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 164
    .restart local p0    # "selection":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 165
    .local v2, "i":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 167
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    .local v1, "c":C
    const/16 v5, 0x3f

    if-ne v1, v5, :cond_2

    .line 169
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v5, p1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 166
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 174
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static isIdentifier(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 135
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static split(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 10
    .param p0, "selection"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 97
    .local v0, "brackets":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "compounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 101
    .local v7, "startPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 102
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 103
    .local v1, "c":C
    invoke-static {v1}, Lcom/miui/gallery/provider/cache/Filter;->isIdentifier(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/16 v8, 0x28

    if-ne v1, v8, :cond_2

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_3

    .line 109
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 112
    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    invoke-static {v6, p0}, Lcom/miui/gallery/provider/cache/Filter;->findCompound(ILjava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$Compound;

    move-result-object v2

    .line 114
    .local v2, "compound":Lcom/miui/gallery/provider/cache/Filter$Compound;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v2}, Lcom/miui/gallery/provider/cache/Filter$Compound;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v8, Lcom/miui/gallery/provider/cache/Filter$Compound;->AND:Lcom/miui/gallery/provider/cache/Filter$Compound;

    if-ne v2, v8, :cond_4

    .line 118
    add-int/lit8 v6, v6, 0x3

    .line 122
    :goto_2
    add-int/lit8 v7, v6, 0x1

    goto :goto_1

    .line 120
    :cond_4
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 127
    .end local v1    # "c":C
    .end local v2    # "compound":Lcom/miui/gallery/provider/cache/Filter$Compound;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 130
    .local v4, "filter":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 131
    .local v2, "compound":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    return-object v8
.end method

.method private static translateParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x27

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 91
    .end local p0    # "params":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract filter(Lcom/miui/gallery/provider/cache/CacheItem;)Lcom/miui/gallery/provider/cache/CacheItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method
