.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 85
    .local v0, "comma":I
    if-ltz v0, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 21
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v20

    .line 41
    .local v20, "rawText":Ljava/lang/String;
    const-string v1, "MECARD:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 44
    :cond_0
    const-string v1, "N:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v19

    .line 45
    .local v19, "rawName":[Ljava/lang/String;
    if-nez v19, :cond_1

    .line 46
    const/4 v1, 0x0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-static {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 49
    .local v18, "name":Ljava/lang/String;
    const-string v1, "SOUND:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "pronunciation":Ljava/lang/String;
    const-string v1, "TEL:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "phoneNumbers":[Ljava/lang/String;
    const-string v1, "EMAIL:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "emails":[Ljava/lang/String;
    const-string v1, "NOTE:"

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "note":Ljava/lang/String;
    const-string v1, "ADR:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "addresses":[Ljava/lang/String;
    const-string v1, "BDAY:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 55
    .local v14, "birthday":Ljava/lang/String;
    const/16 v1, 0x8

    invoke-static {v14, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const/4 v14, 0x0

    .line 59
    :cond_2
    const-string v1, "URL:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, "urls":[Ljava/lang/String;
    const-string v1, "ORG:"

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v1, v0, v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 65
    .local v13, "org":Ljava/lang/String;
    new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    const/4 v3, 0x0

    .line 69
    const/4 v6, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 75
    const/4 v12, 0x0

    .line 78
    const/4 v15, 0x0

    .line 80
    const/16 v17, 0x0

    .line 65
    invoke-direct/range {v1 .. v17}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v0

    return-object v0
.end method
