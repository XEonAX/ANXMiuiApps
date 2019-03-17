.class public final Lcom/google/zxing/client/result/AddressBookAUResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AddressBookAUResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "max"    # I
    .param p2, "rawText"    # Ljava/lang/String;
    .param p3, "trim"    # Z

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 85
    :cond_0
    if-nez v2, :cond_3

    .line 86
    const/4 v3, 0x0

    .line 88
    :goto_1
    return-object v3

    .line 76
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, p2, v4, p3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    if-nez v2, :cond_2

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 21
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v20

    .line 38
    .local v20, "rawText":Ljava/lang/String;
    const-string v1, "MEMORY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\r\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    .line 44
    :cond_1
    const-string v1, "NAME1:"

    const/16 v2, 0xd

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v19

    .line 45
    .local v19, "name":Ljava/lang/String;
    const-string v1, "NAME2:"

    const/16 v2, 0xd

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "pronunciation":Ljava/lang/String;
    const-string v1, "TEL"

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "phoneNumbers":[Ljava/lang/String;
    const-string v1, "MAIL"

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "emails":[Ljava/lang/String;
    const-string v1, "MEMORY:"

    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "note":Ljava/lang/String;
    const-string v1, "ADD:"

    const/16 v2, 0xd

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v18

    .line 51
    .local v18, "address":Ljava/lang/String;
    if-nez v18, :cond_2

    const/4 v11, 0x0

    .line 52
    .local v11, "addresses":[Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 56
    const/4 v6, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    const/16 v16, 0x0

    .line 67
    const/16 v17, 0x0

    .line 52
    invoke-direct/range {v1 .. v17}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v11    # "addresses":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v18, v11, v1

    goto :goto_1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
