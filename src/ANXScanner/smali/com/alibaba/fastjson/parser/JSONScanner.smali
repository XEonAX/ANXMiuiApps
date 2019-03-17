.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 41
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 45
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 47
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 52
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 55
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 73
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 74
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 77
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .prologue
    const/4 v2, 0x0

    .line 85
    array-length v0, p2

    .line 86
    .local v0, "destLen":I
    add-int v3, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 91
    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 707
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 713
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 716
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 720
    if-ne p4, v2, :cond_4

    .line 721
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 732
    :cond_2
    if-ne p6, v2, :cond_5

    .line 733
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 748
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 724
    :cond_4
    if-ne p4, v3, :cond_0

    .line 725
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 736
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 737
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 740
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 741
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 653
    if-ne p1, v2, :cond_1

    .line 654
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 657
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 658
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 669
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 670
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 681
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 682
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 693
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 661
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 662
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 673
    :cond_6
    if-ne p3, v5, :cond_0

    .line 674
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 685
    :cond_7
    if-ne p5, v5, :cond_0

    .line 686
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 697
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 698
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 699
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 700
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 701
    .local v0, "day":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 702
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 703
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 704
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1788
    return-void
.end method

.method public bytesValue()[B
    .locals 13

    .prologue
    const/16 v12, 0x39

    const/16 v10, 0x37

    const/16 v9, 0x30

    .line 112
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v11, 0x1a

    if-ne v8, v11, :cond_3

    .line 113
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v7, v8, 0x1

    .local v7, "start":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 114
    .local v6, "len":I
    rem-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_0

    .line 115
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal state. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 118
    :cond_0
    div-int/lit8 v8, v6, 0x2

    new-array v2, v8, [B

    .line 119
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v2

    if-ge v5, v8, :cond_4

    .line 120
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v7

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 121
    .local v3, "c0":C
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v11, v5, 0x2

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 123
    .local v4, "c1":C
    if-gt v3, v12, :cond_1

    move v8, v9

    :goto_1
    sub-int v0, v3, v8

    .line 124
    .local v0, "b0":I
    if-gt v4, v12, :cond_2

    move v8, v9

    :goto_2
    sub-int v1, v4, v8

    .line 125
    .local v1, "b1":I
    shl-int/lit8 v8, v0, 0x4

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "b0":I
    .end local v1    # "b1":I
    :cond_1
    move v8, v10

    .line 123
    goto :goto_1

    .restart local v0    # "b0":I
    :cond_2
    move v8, v10

    .line 124
    goto :goto_2

    .line 131
    .end local v0    # "b0":I
    .end local v2    # "bytes":[B
    .end local v3    # "c0":C
    .end local v4    # "c1":C
    .end local v5    # "i":I
    .end local v6    # "len":I
    .end local v7    # "start":I
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v8, v9, v10}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_0

    .line 59
    const/16 v0, 0x1a

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 82
    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 183
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 185
    .local v0, "chLocal":C
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 186
    .local v4, "sp":I
    const/16 v5, 0x4c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x53

    if-eq v0, v5, :cond_0

    const/16 v5, 0x42

    if-eq v0, v5, :cond_0

    const/16 v5, 0x46

    if-eq v0, v5, :cond_0

    const/16 v5, 0x44

    if-ne v0, v5, :cond_1

    .line 187
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 190
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .local v3, "offset":I
    move v2, v4

    .line 191
    .local v2, "count":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v6, v3, v2

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v5, v3, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 193
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v5, v6, v8, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 197
    :goto_0
    return-object v5

    .line 195
    :cond_2
    new-array v1, v2, [C

    .line 196
    .local v1, "chars":[C
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v6, v3, v2

    invoke-virtual {v5, v3, v6, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 197
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1793
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1795
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1791
    return-object v0

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1795
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1039
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1047
    :goto_0
    return-object v2

    .line 1041
    :cond_0
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1042
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v3

    .line 1043
    goto :goto_0

    .line 1046
    .end local v3    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v2, v1

    .line 1047
    goto :goto_0

    .line 1048
    .end local v1    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final next()C
    .locals 2

    .prologue
    .line 66
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 67
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 69
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 67
    return v1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 174
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 175
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 176
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 179
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanDouble(C)D
    .locals 22
    .param p1, "seperator"    # C

    .prologue
    .line 1548
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1550
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1551
    .local v8, "offset":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1552
    .local v2, "chLocal":C
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/4 v12, 0x1

    .line 1553
    .local v12, "quote":Z
    :goto_0
    if-eqz v12, :cond_0

    .line 1554
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1557
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_0
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    .line 1558
    .local v5, "negative":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 1559
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1563
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_10

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_10

    .line 1564
    add-int/lit8 v18, v2, -0x30

    move/from16 v0, v18

    int-to-long v6, v0

    .local v6, "intVal":J
    move v8, v9

    .line 1566
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1567
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_4

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_4

    .line 1568
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    move v8, v9

    .line 1569
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 1552
    .end local v5    # "negative":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v12    # "quote":Z
    .restart local v9    # "offset":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1557
    .restart local v12    # "quote":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1575
    .restart local v5    # "negative":Z
    .restart local v6    # "intVal":J
    :cond_4
    const-wide/16 v10, 0x1

    .line 1576
    .local v10, "power":J
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    const/4 v13, 0x1

    .line 1577
    .local v13, "small":Z
    :goto_3
    if-eqz v13, :cond_7

    .line 1578
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1579
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_6

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_6

    .line 1580
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 1581
    const-wide/16 v10, 0xa

    .line 1583
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1584
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_7

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_7

    .line 1585
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 1586
    const-wide/16 v18, 0xa

    mul-long v10, v10, v18

    move v8, v9

    .line 1587
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_4

    .line 1576
    .end local v8    # "offset":I
    .end local v13    # "small":Z
    .restart local v9    # "offset":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 1593
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    .restart local v13    # "small":Z
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1594
    const-wide/16 v16, 0x0

    .line 1683
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :goto_5
    return-wide v16

    .line 1598
    .end local v8    # "offset":I
    .restart local v6    # "intVal":J
    .restart local v9    # "offset":I
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    :cond_7
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v2, v0, :cond_8

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    :cond_8
    const/4 v4, 0x1

    .line 1599
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_b

    .line 1600
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1601
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v2, v0, :cond_9

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    .line 1602
    :cond_9
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1605
    :goto_7
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_b

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_b

    .line 1606
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_7

    .line 1598
    .end local v4    # "exp":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    .line 1614
    .restart local v4    # "exp":Z
    :cond_b
    if-eqz v12, :cond_e

    .line 1615
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v2, v0, :cond_c

    .line 1616
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1617
    const-wide/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_5

    .line 1619
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_c
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    add-int/lit8 v14, v18, 0x1

    .line 1622
    .local v14, "start":I
    sub-int v18, v8, v14

    add-int/lit8 v3, v18, -0x2

    .line 1628
    .local v3, "count":I
    :goto_8
    if-nez v4, :cond_f

    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v3, v0, :cond_f

    .line 1629
    long-to-double v0, v6

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 1630
    .local v16, "value":D
    if-eqz v5, :cond_d

    .line 1631
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 1675
    :cond_d
    :goto_9
    move/from16 v0, p1

    if-ne v2, v0, :cond_17

    .line 1676
    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1677
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1678
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1679
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto/16 :goto_5

    .line 1624
    .end local v3    # "count":I
    .end local v8    # "offset":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1625
    .restart local v14    # "start":I
    sub-int v18, v9, v14

    add-int/lit8 v3, v18, -0x1

    .restart local v3    # "count":I
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_8

    .line 1634
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v15

    .line 1635
    .local v15, "text":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .restart local v16    # "value":D
    goto :goto_9

    .line 1637
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v10    # "power":J
    .end local v13    # "small":Z
    .end local v14    # "start":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_10
    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v2, v0, :cond_15

    add-int/lit8 v8, v9, 0x1

    .line 1638
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    const/16 v19, 0x75

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    add-int/lit8 v9, v8, 0x1

    .line 1639
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    add-int/lit8 v8, v9, 0x1

    .line 1640
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1641
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1642
    const-wide/16 v16, 0x0

    .line 1643
    .restart local v16    # "value":D
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1645
    if-eqz v12, :cond_11

    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    .line 1646
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1650
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_11
    :goto_a
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    .line 1651
    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1653
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1654
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v8, v9

    .line 1655
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_5

    .line 1656
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_13

    .line 1657
    move-object/from16 v0, p0

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1659
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1660
    const/16 v18, 0xf

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v8, v9

    .line 1661
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_5

    .line 1662
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_13
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1663
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v9, v8

    .line 1664
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_a

    .line 1668
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1669
    const-wide/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_5

    .end local v8    # "offset":I
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_15
    move v8, v9

    .line 1671
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_16
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1672
    const-wide/16 v16, 0x0

    goto/16 :goto_5

    .line 1682
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v6    # "intVal":J
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    .restart local v14    # "start":I
    .restart local v16    # "value":D
    :cond_17
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_5

    .end local v3    # "count":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    :cond_18
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_7
.end method

.method public scanFieldBoolean([C)Z
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x10

    const/16 v9, 0x22

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1319
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1321
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v6, v7, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1322
    const/4 v6, -0x2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1446
    :goto_0
    return v4

    .line 1326
    :cond_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v7, p1

    add-int v1, v6, v7

    .line 1328
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1330
    .local v0, "ch":C
    if-ne v0, v9, :cond_2

    const/4 v3, 0x1

    .line 1331
    .local v3, "quote":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 1332
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1336
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_1
    const/16 v6, 0x74

    if-ne v0, v6, :cond_8

    .line 1337
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x72

    if-eq v6, v7, :cond_3

    .line 1338
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1339
    goto :goto_0

    .end local v1    # "index":I
    .end local v3    # "quote":Z
    .restart local v2    # "index":I
    :cond_2
    move v3, v5

    .line 1330
    goto :goto_1

    .line 1341
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v3    # "quote":Z
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-eq v6, v7, :cond_4

    .line 1342
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1343
    goto :goto_0

    .line 1345
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_5

    .line 1346
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1347
    goto :goto_0

    .line 1350
    :cond_5
    if-eqz v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_6

    .line 1351
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1352
    goto :goto_0

    :cond_6
    move v1, v2

    .line 1355
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_7
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1356
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1357
    const/4 v4, 0x1

    .line 1408
    .local v4, "value":Z
    :goto_2
    if-ne v0, v11, :cond_16

    .line 1409
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1410
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1411
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_0

    .line 1358
    .end local v1    # "index":I
    .end local v4    # "value":Z
    .restart local v2    # "index":I
    :cond_8
    const/16 v6, 0x66

    if-ne v0, v6, :cond_f

    .line 1359
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_9

    .line 1360
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1361
    goto/16 :goto_0

    .line 1363
    :cond_9
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-eq v6, v7, :cond_a

    .line 1364
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1365
    goto/16 :goto_0

    .line 1367
    :cond_a
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x73

    if-eq v6, v7, :cond_b

    .line 1368
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1369
    goto/16 :goto_0

    .line 1371
    :cond_b
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_c

    .line 1372
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1373
    goto/16 :goto_0

    .line 1376
    :cond_c
    if-eqz v3, :cond_d

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_e

    .line 1377
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1378
    goto/16 :goto_0

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_d
    move v1, v2

    .line 1381
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_e
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1382
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1383
    const/4 v4, 0x0

    .restart local v4    # "value":Z
    goto :goto_2

    .line 1384
    .end local v1    # "index":I
    .end local v4    # "value":Z
    .restart local v2    # "index":I
    :cond_f
    const/16 v6, 0x31

    if-ne v0, v6, :cond_12

    .line 1385
    if-eqz v3, :cond_10

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_11

    .line 1386
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1387
    goto/16 :goto_0

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_10
    move v1, v2

    .line 1390
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_11
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1391
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1392
    const/4 v4, 0x1

    .restart local v4    # "value":Z
    goto/16 :goto_2

    .line 1393
    .end local v1    # "index":I
    .end local v4    # "value":Z
    .restart local v2    # "index":I
    :cond_12
    const/16 v6, 0x30

    if-ne v0, v6, :cond_15

    .line 1394
    if-eqz v3, :cond_13

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_14

    .line 1395
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1396
    goto/16 :goto_0

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_13
    move v1, v2

    .line 1399
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1400
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1401
    const/4 v4, 0x0

    .restart local v4    # "value":Z
    goto/16 :goto_2

    .line 1403
    .end local v1    # "index":I
    .end local v4    # "value":Z
    .restart local v2    # "index":I
    :cond_15
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1404
    goto/16 :goto_0

    .line 1413
    .end local v2    # "index":I
    .restart local v1    # "index":I
    .restart local v4    # "value":Z
    :cond_16
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_1c

    .line 1414
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1416
    :goto_3
    if-ne v0, v11, :cond_17

    .line 1417
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1418
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1436
    :goto_4
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1419
    :cond_17
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_18

    .line 1420
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1421
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1422
    :cond_18
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_19

    .line 1423
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1424
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 1425
    :cond_19
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_1a

    .line 1426
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    .line 1427
    :cond_1a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1428
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1429
    goto :goto_3

    .line 1431
    :cond_1b
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1432
    goto/16 :goto_0

    .line 1438
    :cond_1c
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1439
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto/16 :goto_2

    .line 1441
    :cond_1d
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v4, v5

    .line 1442
    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/4 v3, 0x1

    const/16 v13, 0x7d

    const/16 v12, 0x2c

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 757
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 758
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 759
    .local v6, "startPos":I
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 761
    .local v5, "startChar":C
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v9, v10, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v9

    if-nez v9, :cond_1

    .line 762
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 866
    :cond_0
    :goto_0
    return v7

    .line 766
    :cond_1
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v10, p1

    add-int v1, v9, v10

    .line 768
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 770
    .local v0, "ch":C
    const/16 v9, 0x22

    if-ne v0, v9, :cond_3

    move v4, v3

    .line 772
    .local v4, "quote":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 773
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 776
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v0, v9, :cond_4

    .line 777
    .local v3, "negative":Z
    :goto_2
    if-eqz v3, :cond_15

    .line 778
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 782
    :goto_3
    const/16 v9, 0x30

    if-lt v0, v9, :cond_d

    const/16 v9, 0x39

    if-gt v0, v9, :cond_d

    .line 783
    add-int/lit8 v7, v0, -0x30

    .line 785
    .local v7, "value":I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 786
    const/16 v9, 0x30

    if-lt v0, v9, :cond_5

    const/16 v9, 0x39

    if-gt v0, v9, :cond_5

    .line 787
    mul-int/lit8 v9, v7, 0xa

    add-int/lit8 v10, v0, -0x30

    add-int v7, v9, v10

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_4

    .end local v1    # "index":I
    .end local v3    # "negative":Z
    .end local v4    # "quote":Z
    .end local v7    # "value":I
    .restart local v2    # "index":I
    :cond_3
    move v4, v8

    .line 770
    goto :goto_1

    .restart local v4    # "quote":Z
    :cond_4
    move v3, v8

    .line 776
    goto :goto_2

    .line 788
    .restart local v3    # "negative":Z
    .restart local v7    # "value":I
    :cond_5
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6

    .line 789
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 790
    goto :goto_0

    .line 796
    :cond_6
    if-gez v7, :cond_7

    .line 797
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 798
    goto :goto_0

    .line 801
    :cond_7
    if-eqz v4, :cond_9

    .line 802
    const/16 v9, 0x22

    if-eq v0, v9, :cond_8

    .line 803
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 804
    goto :goto_0

    .line 806
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 811
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_9
    :goto_5
    if-eq v0, v12, :cond_a

    if-ne v0, v13, :cond_b

    .line 812
    :cond_a
    add-int/lit8 v9, v2, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 827
    if-ne v0, v12, :cond_e

    .line 828
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 829
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 830
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 831
    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    .line 814
    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 815
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 816
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_5

    .line 818
    :cond_c
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 819
    goto/16 :goto_0

    .line 823
    .end local v2    # "index":I
    .end local v7    # "value":I
    .restart local v1    # "index":I
    :cond_d
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 824
    goto/16 :goto_0

    .line 834
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v7    # "value":I
    :cond_e
    if-ne v0, v13, :cond_f

    .line 835
    add-int/lit8 v9, v2, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 836
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 838
    :goto_6
    if-ne v0, v12, :cond_10

    .line 839
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 840
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 863
    :goto_7
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 866
    :cond_f
    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    .line 842
    :cond_10
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_11

    .line 843
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 844
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 846
    :cond_11
    if-ne v0, v13, :cond_12

    .line 847
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 848
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 850
    :cond_12
    const/16 v9, 0x1a

    if-ne v0, v9, :cond_13

    .line 851
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_7

    .line 853
    :cond_13
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 854
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 855
    goto :goto_6

    .line 857
    :cond_14
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 858
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 859
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v7, v8

    .line 860
    goto/16 :goto_0

    .end local v7    # "value":I
    :cond_15
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_3
.end method

.method public scanFieldLong([C)J
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    .line 1206
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1207
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1208
    .local v6, "startPos":I
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1210
    .local v5, "startChar":C
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v7, v10, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1211
    const/4 v7, -0x2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1212
    const-wide/16 v8, 0x0

    .line 1315
    :cond_0
    :goto_0
    return-wide v8

    .line 1215
    :cond_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v10, p1

    add-int v1, v7, v10

    .line 1217
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1219
    .local v0, "ch":C
    const/16 v7, 0x22

    if-ne v0, v7, :cond_3

    const/4 v4, 0x1

    .line 1220
    .local v4, "quote":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 1221
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1224
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2
    const/4 v3, 0x0

    .line 1225
    .local v3, "negative":Z
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_14

    .line 1226
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1227
    const/4 v3, 0x1

    .line 1231
    :goto_2
    const/16 v7, 0x30

    if-lt v0, v7, :cond_9

    const/16 v7, 0x39

    if-gt v0, v7, :cond_9

    .line 1232
    add-int/lit8 v7, v0, -0x30

    int-to-long v8, v7

    .line 1234
    .local v8, "value":J
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1235
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 1236
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    add-int/lit8 v7, v0, -0x30

    int-to-long v12, v7

    add-long v8, v10, v12

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_3

    .line 1219
    .end local v1    # "index":I
    .end local v3    # "negative":Z
    .end local v4    # "quote":Z
    .end local v8    # "value":J
    .restart local v2    # "index":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1237
    .restart local v3    # "negative":Z
    .restart local v4    # "quote":Z
    .restart local v8    # "value":J
    :cond_4
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_5

    .line 1238
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1239
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1241
    :cond_5
    if-eqz v4, :cond_13

    .line 1242
    const/16 v7, 0x22

    if-eq v0, v7, :cond_6

    .line 1243
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1244
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1246
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1250
    :goto_4
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_7

    const/16 v7, 0x7d

    if-ne v0, v7, :cond_8

    .line 1251
    :cond_7
    add-int/lit8 v7, v1, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1257
    :cond_8
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_12

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v8, v10

    if-eqz v7, :cond_12

    .line 1258
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1259
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1260
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1261
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 1264
    .end local v8    # "value":J
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1265
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1266
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1267
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 1305
    .end local v1    # "index":I
    .restart local v2    # "index":I
    .restart local v8    # "value":J
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1306
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1307
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1271
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :goto_5
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_b

    .line 1272
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1273
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1274
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1275
    if-eqz v3, :cond_0

    neg-long v8, v8

    goto/16 :goto_0

    .line 1276
    :cond_b
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_a

    .line 1277
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1279
    :goto_6
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_c

    .line 1280
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1281
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1303
    :goto_7
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1315
    if-eqz v3, :cond_0

    neg-long v8, v8

    goto/16 :goto_0

    .line 1283
    :cond_c
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_d

    .line 1284
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1285
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1287
    :cond_d
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_e

    .line 1288
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1289
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1291
    :cond_e
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_f

    .line 1292
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_7

    .line 1294
    :cond_f
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1295
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 1297
    :cond_10
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1298
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1299
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1300
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 1310
    :cond_11
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1311
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_12
    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_5

    :cond_13
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_4

    .end local v1    # "index":I
    .end local v8    # "value":J
    .restart local v2    # "index":I
    :cond_14
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_2
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 16
    .param p1, "fieldName"    # [C

    .prologue
    .line 870
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 871
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 872
    .local v11, "startPos":I
    move-object/from16 v0, p0

    iget-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 874
    .local v9, "startChar":C
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 875
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    .line 964
    :goto_0
    return-object v12

    .line 879
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v6, v14, v15

    .line 881
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 882
    .local v1, "ch":C
    const/16 v14, 0x22

    if-eq v1, v14, :cond_1

    .line 883
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 890
    :cond_1
    move v10, v7

    .line 891
    .local v10, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 892
    .local v4, "endIndex":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_2

    .line 893
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 896
    :cond_2
    sub-int v14, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v13

    .line 897
    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 899
    :goto_1
    const/4 v8, 0x0

    .line 900
    .local v8, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_3

    .line 901
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_3

    .line 902
    add-int/lit8 v8, v8, 0x1

    .line 900
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 907
    :cond_3
    rem-int/lit8 v14, v8, 0x2

    if-nez v14, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    sub-int v3, v4, v14

    .line 914
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 916
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v13

    .line 919
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_4
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 922
    :goto_3
    const/16 v14, 0x2c

    if-eq v1, v14, :cond_5

    const/16 v14, 0x7d

    if-ne v1, v14, :cond_7

    .line 923
    :cond_5
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 924
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 925
    move-object v12, v13

    .line 938
    .local v12, "strVal":Ljava/lang/String;
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_9

    .line 939
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 940
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 910
    .end local v12    # "strVal":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "slashCount":I
    :cond_6
    const/16 v14, 0x22

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 911
    goto :goto_1

    .line 927
    .end local v5    # "i":I
    .end local v8    # "slashCount":I
    :cond_7
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 928
    add-int/lit8 v4, v4, 0x1

    .line 929
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 931
    :cond_8
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 944
    .restart local v12    # "strVal":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 945
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_a

    .line 946
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 947
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 962
    :goto_4
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 948
    :cond_a
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_b

    .line 949
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 950
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 951
    :cond_b
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_c

    .line 952
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 953
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_4

    .line 954
    :cond_c
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_d

    .line 955
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_4

    .line 957
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 958
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 959
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 15
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1058
    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v14, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    invoke-static {v13, v14, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1059
    const/4 v13, -0x2

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1060
    const/4 v8, 0x0

    .line 1202
    :goto_0
    return-object v8

    .line 1063
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v8

    .line 1077
    .local v8, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p1

    array-length v14, v0

    add-int v6, v13, v14

    .line 1079
    .local v6, "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1081
    .local v1, "ch":C
    const/16 v13, 0x5b

    if-ne v1, v13, :cond_b

    .line 1082
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v7, v6

    .line 1085
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :goto_1
    const/16 v13, 0x22

    if-ne v1, v13, :cond_5

    .line 1086
    move v11, v7

    .line 1087
    .local v11, "startIndex":I
    const/16 v13, 0x22

    invoke-virtual {p0, v13, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 1088
    .local v4, "endIndex":I
    const/4 v13, -0x1

    if-ne v4, v13, :cond_1

    .line 1089
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "unclosed str"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1092
    :cond_1
    sub-int v13, v4, v11

    invoke-virtual {p0, v11, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 1093
    .local v12, "stringVal":Ljava/lang/String;
    const/16 v13, 0x5c

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 1095
    :goto_2
    const/4 v9, 0x0

    .line 1096
    .local v9, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_2

    .line 1097
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_2

    .line 1098
    add-int/lit8 v9, v9, 0x1

    .line 1096
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1103
    :cond_2
    rem-int/lit8 v13, v9, 0x2

    if-nez v13, :cond_4

    .line 1109
    sub-int v3, v4, v11

    .line 1110
    .local v3, "chars_len":I
    invoke-virtual {p0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v2

    .line 1112
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v12

    .line 1115
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v9    # "slashCount":I
    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 1116
    .end local v7    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1118
    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v4    # "endIndex":I
    .end local v11    # "startIndex":I
    .end local v12    # "stringVal":Ljava/lang/String;
    :goto_4
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_9

    .line 1132
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v7, v6

    .line 1133
    .end local v6    # "index":I
    .restart local v7    # "index":I
    goto :goto_1

    .line 1106
    .restart local v4    # "endIndex":I
    .restart local v5    # "i":I
    .restart local v9    # "slashCount":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "stringVal":Ljava/lang/String;
    :cond_4
    const/16 v13, 0x22

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {p0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    .line 1107
    goto :goto_2

    .line 1119
    .end local v4    # "endIndex":I
    .end local v5    # "i":I
    .end local v9    # "slashCount":I
    .end local v11    # "startIndex":I
    .end local v12    # "stringVal":Ljava/lang/String;
    :cond_5
    const/16 v13, 0x6e

    if-ne v1, v13, :cond_6

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v14, "ull"

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1120
    add-int/lit8 v6, v7, 0x3

    .line 1121
    .end local v7    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1122
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1123
    :cond_6
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_8

    .line 1124
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1156
    :cond_7
    :goto_5
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1157
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_d

    .line 1158
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1159
    const/4 v13, 0x3

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1127
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_8
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1128
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1136
    :cond_9
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_a

    .line 1137
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1138
    :goto_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1139
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_6

    .line 1144
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_a
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1145
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1147
    :cond_b
    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v14, "ull"

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1148
    add-int/lit8 v6, v7, 0x3

    .line 1149
    .end local v7    # "index":I
    .restart local v6    # "index":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1150
    const/4 v8, 0x0

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_5

    .line 1152
    .end local v6    # "index":I
    .restart local v7    # "index":I
    :cond_c
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1153
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1161
    .end local v7    # "index":I
    .restart local v6    # "index":I
    :cond_d
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_14

    .line 1162
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1164
    :cond_e
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_f

    .line 1165
    const/16 v13, 0x10

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1166
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1196
    :goto_7
    const/4 v13, 0x4

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto/16 :goto_0

    .line 1168
    :cond_f
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_10

    .line 1169
    const/16 v13, 0xf

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1170
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1172
    :cond_10
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_11

    .line 1173
    const/16 v13, 0xd

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1174
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1176
    :cond_11
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_12

    .line 1177
    const/16 v13, 0x14

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1178
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_7

    .line 1181
    :cond_12
    const/4 v10, 0x0

    .line 1182
    .local v10, "space":Z
    :goto_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1183
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1184
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1185
    const/4 v10, 0x1

    move v6, v7

    .end local v7    # "index":I
    .restart local v6    # "index":I
    goto :goto_8

    .line 1187
    :cond_13
    if-nez v10, :cond_e

    .line 1191
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1192
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1198
    .end local v10    # "space":Z
    :cond_14
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1199
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldSymbol([C)J
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v13, 0x7d

    const/16 v12, 0x2c

    const/16 v11, 0x22

    const/4 v10, -0x1

    const-wide/16 v6, 0x0

    .line 968
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 970
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v8, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 971
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1034
    :goto_0
    return-wide v2

    .line 975
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v8, p1

    add-int v1, v5, v8

    .line 977
    .local v1, "index":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 978
    .local v0, "ch":C
    if-eq v0, v11, :cond_1

    .line 979
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 980
    goto :goto_0

    .line 983
    :cond_1
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .local v2, "hash":J
    move v1, v4

    .line 985
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 986
    if-ne v0, v11, :cond_2

    .line 987
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 988
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1000
    :goto_2
    if-ne v0, v12, :cond_4

    .line 1001
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1002
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 990
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v4, v5, :cond_3

    .line 991
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 992
    goto :goto_0

    .line 995
    :cond_3
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 996
    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    move v1, v4

    .end local v4    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 1004
    .end local v1    # "index":I
    .restart local v4    # "index":I
    :cond_4
    if-ne v0, v13, :cond_9

    .line 1005
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1006
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v0

    .line 1008
    if-ne v0, v12, :cond_5

    .line 1009
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1010
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1023
    :goto_3
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_0

    .line 1011
    :cond_5
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_6

    .line 1012
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1013
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1014
    :cond_6
    if-ne v0, v13, :cond_7

    .line 1015
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1016
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_3

    .line 1017
    :cond_7
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_8

    .line 1018
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_3

    .line 1020
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1021
    goto/16 :goto_0

    .line 1025
    :cond_9
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1026
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1027
    goto/16 :goto_2

    .line 1029
    :cond_a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move-wide v2, v6

    .line 1030
    goto/16 :goto_0
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 75
    .param p1, "strict"    # Z

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    sub-int v61, v12, v19

    .line 208
    .local v61, "rest":I
    if-nez p1, :cond_4

    const/16 v12, 0xd

    move/from16 v0, v61

    if-le v0, v12, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 210
    .local v32, "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 211
    .local v33, "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 212
    .local v38, "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v39

    .line 213
    .local v39, "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v40

    .line 214
    .local v40, "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v41

    .line 216
    .local v41, "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v61

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v47

    .line 217
    .local v47, "c_r0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v61

    add-int/lit8 v12, v12, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v48

    .line 218
    .local v48, "c_r1":C
    const/16 v12, 0x2f

    move/from16 v0, v32

    if-ne v0, v12, :cond_4

    const/16 v12, 0x44

    move/from16 v0, v33

    if-ne v0, v12, :cond_4

    const/16 v12, 0x61

    move/from16 v0, v38

    if-ne v0, v12, :cond_4

    const/16 v12, 0x74

    move/from16 v0, v39

    if-ne v0, v12, :cond_4

    const/16 v12, 0x65

    move/from16 v0, v40

    if-ne v0, v12, :cond_4

    const/16 v12, 0x28

    move/from16 v0, v41

    if-ne v0, v12, :cond_4

    const/16 v12, 0x2f

    move/from16 v0, v47

    if-ne v0, v12, :cond_4

    const/16 v12, 0x29

    move/from16 v0, v48

    if-ne v0, v12, :cond_4

    .line 220
    const/16 v60, -0x1

    .line 221
    .local v60, "plusIndex":I
    const/16 v53, 0x6

    .local v53, "i":I
    :goto_0
    move/from16 v0, v53

    move/from16 v1, v61

    if-ge v0, v1, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v53

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    .line 223
    .local v31, "c":C
    const/16 v12, 0x2b

    move/from16 v0, v31

    if-ne v0, v12, :cond_1

    .line 224
    move/from16 v60, v53

    .line 221
    :cond_0
    add-int/lit8 v53, v53, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/16 v12, 0x30

    move/from16 v0, v31

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    move/from16 v0, v31

    if-le v0, v12, :cond_0

    .line 229
    .end local v31    # "c":C
    :cond_2
    const/4 v12, -0x1

    move/from16 v0, v60

    if-ne v0, v12, :cond_3

    .line 230
    const/4 v12, 0x0

    .line 625
    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v38    # "c2":C
    .end local v39    # "c3":C
    .end local v40    # "c4":C
    .end local v41    # "c5":C
    .end local v47    # "c_r0":C
    .end local v48    # "c_r1":C
    .end local v53    # "i":I
    .end local v60    # "plusIndex":I
    :goto_1
    return v12

    .line 232
    .restart local v32    # "c0":C
    .restart local v33    # "c1":C
    .restart local v38    # "c2":C
    .restart local v39    # "c3":C
    .restart local v40    # "c4":C
    .restart local v41    # "c5":C
    .restart local v47    # "c_r0":C
    .restart local v48    # "c_r1":C
    .restart local v53    # "i":I
    .restart local v60    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v59, v12, 0x6

    .line 233
    .local v59, "offset":I
    sub-int v12, v60, v59

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v58

    .line 234
    .local v58, "numberText":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 236
    .local v54, "millis":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v54

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 239
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 240
    const/4 v12, 0x1

    goto :goto_1

    .line 245
    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v38    # "c2":C
    .end local v39    # "c3":C
    .end local v40    # "c4":C
    .end local v41    # "c5":C
    .end local v47    # "c_r0":C
    .end local v48    # "c_r1":C
    .end local v53    # "i":I
    .end local v54    # "millis":J
    .end local v58    # "numberText":Ljava/lang/String;
    .end local v59    # "offset":I
    .end local v60    # "plusIndex":I
    :cond_4
    const/16 v12, 0x8

    move/from16 v0, v61

    if-eq v0, v12, :cond_6

    const/16 v12, 0xe

    move/from16 v0, v61

    if-eq v0, v12, :cond_6

    const/16 v12, 0x10

    move/from16 v0, v61

    if-ne v0, v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .local v34, "c10":C
    const/16 v12, 0x54

    move/from16 v0, v34

    if-eq v0, v12, :cond_6

    const/16 v12, 0x20

    move/from16 v0, v34

    if-eq v0, v12, :cond_6

    .end local v34    # "c10":C
    :cond_5
    const/16 v12, 0x11

    move/from16 v0, v61

    if-ne v0, v12, :cond_1b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x2d

    move/from16 v0, v19

    if-eq v12, v0, :cond_1b

    .line 249
    :cond_6
    if-eqz p1, :cond_7

    .line 250
    const/4 v12, 0x0

    goto :goto_1

    .line 255
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 256
    .restart local v32    # "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 257
    .restart local v33    # "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 258
    .restart local v38    # "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v39

    .line 259
    .restart local v39    # "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v40

    .line 260
    .restart local v40    # "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v41

    .line 261
    .restart local v41    # "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v42

    .line 262
    .local v42, "c6":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v43

    .line 263
    .local v43, "c7":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v44

    .line 265
    .local v44, "c8":C
    const/16 v12, 0x2d

    move/from16 v0, v40

    if-ne v0, v12, :cond_9

    const/16 v12, 0x2d

    move/from16 v0, v43

    if-ne v0, v12, :cond_9

    const/16 v46, 0x1

    .line 266
    .local v46, "c_47":Z
    :goto_2
    if-eqz v46, :cond_a

    const/16 v12, 0x10

    move/from16 v0, v61

    if-ne v0, v12, :cond_a

    const/16 v63, 0x1

    .line 267
    .local v63, "sperate16":Z
    :goto_3
    if-eqz v46, :cond_b

    const/16 v12, 0x11

    move/from16 v0, v61

    if-ne v0, v12, :cond_b

    const/16 v64, 0x1

    .line 268
    .local v64, "sperate17":Z
    :goto_4
    if-nez v64, :cond_8

    if-eqz v63, :cond_c

    .line 269
    :cond_8
    move/from16 v4, v32

    .line 270
    .local v4, "y0":C
    move/from16 v5, v33

    .line 271
    .local v5, "y1":C
    move/from16 v6, v38

    .line 272
    .local v6, "y2":C
    move/from16 v7, v39

    .line 273
    .local v7, "y3":C
    move/from16 v8, v41

    .line 274
    .local v8, "M0":C
    move/from16 v9, v42

    .line 275
    .local v9, "M1":C
    move/from16 v10, v44

    .line 276
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 289
    .local v11, "d1":C
    :goto_5
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-nez v12, :cond_d

    .line 290
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 265
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v46    # "c_47":Z
    .end local v63    # "sperate16":Z
    .end local v64    # "sperate17":Z
    :cond_9
    const/16 v46, 0x0

    goto :goto_2

    .line 266
    .restart local v46    # "c_47":Z
    :cond_a
    const/16 v63, 0x0

    goto :goto_3

    .line 267
    .restart local v63    # "sperate16":Z
    :cond_b
    const/16 v64, 0x0

    goto :goto_4

    .line 278
    .restart local v64    # "sperate17":Z
    :cond_c
    move/from16 v4, v32

    .line 279
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 280
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 281
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 282
    .restart local v7    # "y3":C
    move/from16 v8, v40

    .line 283
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 284
    .restart local v9    # "M1":C
    move/from16 v10, v42

    .line 285
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto :goto_5

    :cond_d
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 293
    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 296
    const/16 v12, 0x8

    move/from16 v0, v61

    if-eq v0, v12, :cond_1a

    .line 297
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v45

    .line 298
    .local v45, "c9":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 299
    .restart local v34    # "c10":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 300
    .local v35, "c11":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 301
    .local v36, "c12":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 305
    .local v37, "c13":C
    if-eqz v64, :cond_e

    const/16 v12, 0x54

    move/from16 v0, v34

    if-ne v0, v12, :cond_e

    const/16 v12, 0x3a

    move/from16 v0, v37

    if-ne v0, v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x5a

    move/from16 v0, v19

    if-eq v12, v0, :cond_10

    :cond_e
    if-eqz v63, :cond_11

    const/16 v12, 0x20

    move/from16 v0, v34

    if-eq v0, v12, :cond_f

    const/16 v12, 0x54

    move/from16 v0, v34

    if-ne v0, v12, :cond_11

    :cond_f
    const/16 v12, 0x3a

    move/from16 v0, v37

    if-ne v0, v12, :cond_11

    .line 307
    :cond_10
    move/from16 v13, v35

    .line 308
    .local v13, "h0":C
    move/from16 v14, v36

    .line 309
    .local v14, "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 310
    .local v15, "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 311
    .local v16, "m1":C
    const/16 v17, 0x30

    .line 312
    .local v17, "s0":C
    const/16 v18, 0x30

    .local v18, "s1":C
    :goto_6
    move-object/from16 v12, p0

    .line 322
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-nez v12, :cond_12

    .line 323
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 314
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    :cond_11
    move/from16 v13, v44

    .line 315
    .restart local v13    # "h0":C
    move/from16 v14, v45

    .line 316
    .restart local v14    # "h1":C
    move/from16 v15, v34

    .line 317
    .restart local v15    # "m0":C
    move/from16 v16, v35

    .line 318
    .restart local v16    # "m1":C
    move/from16 v17, v36

    .line 319
    .restart local v17    # "s0":C
    move/from16 v18, v37

    .restart local v18    # "s1":C
    goto :goto_6

    .line 326
    :cond_12
    const/16 v12, 0x11

    move/from16 v0, v61

    if-ne v0, v12, :cond_19

    if-nez v64, :cond_19

    .line 327
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 328
    .local v28, "S0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 329
    .local v29, "S1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 330
    .local v30, "S2":C
    const/16 v12, 0x30

    move/from16 v0, v28

    if-lt v0, v12, :cond_13

    const/16 v12, 0x39

    move/from16 v0, v28

    if-le v0, v12, :cond_14

    .line 331
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 333
    :cond_14
    const/16 v12, 0x30

    move/from16 v0, v29

    if-lt v0, v12, :cond_15

    const/16 v12, 0x39

    move/from16 v0, v29

    if-le v0, v12, :cond_16

    .line 334
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 336
    :cond_16
    const/16 v12, 0x30

    move/from16 v0, v30

    if-lt v0, v12, :cond_17

    const/16 v12, 0x39

    move/from16 v0, v30

    if-le v0, v12, :cond_18

    .line 337
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 340
    :cond_18
    add-int/lit8 v12, v28, -0x30

    mul-int/lit8 v12, v12, 0x64

    add-int/lit8 v19, v29, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v12, v12, v19

    add-int/lit8 v19, v30, -0x30

    add-int v54, v12, v19

    .line 345
    .end local v28    # "S0":C
    .end local v29    # "S1":C
    .end local v30    # "S2":C
    .local v54, "millis":I
    :goto_7
    add-int/lit8 v12, v13, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v14, -0x30

    add-int v52, v12, v19

    .line 346
    .local v52, "hour":I
    add-int/lit8 v12, v15, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v16, -0x30

    add-int v57, v12, v19

    .line 347
    .local v57, "minute":I
    add-int/lit8 v12, v17, -0x30

    mul-int/lit8 v12, v12, 0xa

    add-int/lit8 v19, v18, -0x30

    add-int v62, v12, v19

    .line 355
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v34    # "c10":C
    .end local v35    # "c11":C
    .end local v36    # "c12":C
    .end local v37    # "c13":C
    .end local v45    # "c9":C
    .local v62, "seconds":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    move/from16 v0, v19

    move/from16 v1, v52

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v57

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    move/from16 v0, v19

    move/from16 v1, v62

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v54

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 360
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 361
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 342
    .end local v52    # "hour":I
    .end local v54    # "millis":I
    .end local v57    # "minute":I
    .end local v62    # "seconds":I
    .restart local v13    # "h0":C
    .restart local v14    # "h1":C
    .restart local v15    # "m0":C
    .restart local v16    # "m1":C
    .restart local v17    # "s0":C
    .restart local v18    # "s1":C
    .restart local v34    # "c10":C
    .restart local v35    # "c11":C
    .restart local v36    # "c12":C
    .restart local v37    # "c13":C
    .restart local v45    # "c9":C
    :cond_19
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_7

    .line 349
    .end local v13    # "h0":C
    .end local v14    # "h1":C
    .end local v15    # "m0":C
    .end local v16    # "m1":C
    .end local v17    # "s0":C
    .end local v18    # "s1":C
    .end local v34    # "c10":C
    .end local v35    # "c11":C
    .end local v36    # "c12":C
    .end local v37    # "c13":C
    .end local v45    # "c9":C
    .end local v54    # "millis":I
    :cond_1a
    const/16 v52, 0x0

    .line 350
    .restart local v52    # "hour":I
    const/16 v57, 0x0

    .line 351
    .restart local v57    # "minute":I
    const/16 v62, 0x0

    .line 352
    .restart local v62    # "seconds":I
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_8

    .line 364
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v32    # "c0":C
    .end local v33    # "c1":C
    .end local v38    # "c2":C
    .end local v39    # "c3":C
    .end local v40    # "c4":C
    .end local v41    # "c5":C
    .end local v42    # "c6":C
    .end local v43    # "c7":C
    .end local v44    # "c8":C
    .end local v46    # "c_47":Z
    .end local v52    # "hour":I
    .end local v54    # "millis":I
    .end local v57    # "minute":I
    .end local v62    # "seconds":I
    .end local v63    # "sperate16":Z
    .end local v64    # "sperate17":Z
    :cond_1b
    const/16 v12, 0x9

    move/from16 v0, v61

    if-ge v0, v12, :cond_1c

    .line 365
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 368
    :cond_1c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 369
    .restart local v32    # "c0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 370
    .restart local v33    # "c1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 371
    .restart local v38    # "c2":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v39

    .line 372
    .restart local v39    # "c3":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v40

    .line 373
    .restart local v40    # "c4":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v41

    .line 374
    .restart local v41    # "c5":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v42

    .line 375
    .restart local v42    # "c6":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v43

    .line 376
    .restart local v43    # "c7":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v44

    .line 377
    .restart local v44    # "c8":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v45

    .line 379
    .restart local v45    # "c9":C
    const/16 v49, 0xa

    .line 381
    .local v49, "date_len":I
    const/16 v12, 0x2d

    move/from16 v0, v40

    if-ne v0, v12, :cond_1d

    const/16 v12, 0x2d

    move/from16 v0, v43

    if-eq v0, v12, :cond_1e

    :cond_1d
    const/16 v12, 0x2f

    move/from16 v0, v40

    if-ne v0, v12, :cond_1f

    const/16 v12, 0x2f

    move/from16 v0, v43

    if-ne v0, v12, :cond_1f

    .line 384
    :cond_1e
    move/from16 v4, v32

    .line 385
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 386
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 387
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 388
    .restart local v7    # "y3":C
    move/from16 v8, v41

    .line 389
    .restart local v8    # "M0":C
    move/from16 v9, v42

    .line 390
    .restart local v9    # "M1":C
    move/from16 v10, v44

    .line 391
    .restart local v10    # "d0":C
    move/from16 v11, v45

    .line 461
    .restart local v11    # "d1":C
    :goto_9
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v12

    if-nez v12, :cond_33

    .line 462
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 392
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_1f
    const/16 v12, 0x2d

    move/from16 v0, v40

    if-ne v0, v12, :cond_21

    const/16 v12, 0x2d

    move/from16 v0, v42

    if-ne v0, v12, :cond_21

    .line 394
    move/from16 v4, v32

    .line 395
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 396
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 397
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 398
    .restart local v7    # "y3":C
    const/16 v8, 0x30

    .line 399
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 401
    .restart local v9    # "M1":C
    const/16 v12, 0x20

    move/from16 v0, v44

    if-ne v0, v12, :cond_20

    .line 402
    const/16 v10, 0x30

    .line 403
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .line 404
    .restart local v11    # "d1":C
    const/16 v49, 0x8

    goto :goto_9

    .line 406
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_20
    move/from16 v10, v43

    .line 407
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .line 408
    .restart local v11    # "d1":C
    const/16 v49, 0x9

    goto :goto_9

    .line 410
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_21
    const/16 v12, 0x2e

    move/from16 v0, v38

    if-ne v0, v12, :cond_22

    const/16 v12, 0x2e

    move/from16 v0, v41

    if-eq v0, v12, :cond_23

    :cond_22
    const/16 v12, 0x2d

    move/from16 v0, v38

    if-ne v0, v12, :cond_24

    const/16 v12, 0x2d

    move/from16 v0, v41

    if-ne v0, v12, :cond_24

    .line 413
    :cond_23
    move/from16 v10, v32

    .line 414
    .restart local v10    # "d0":C
    move/from16 v11, v33

    .line 415
    .restart local v11    # "d1":C
    move/from16 v8, v39

    .line 416
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 417
    .restart local v9    # "M1":C
    move/from16 v4, v42

    .line 418
    .restart local v4    # "y0":C
    move/from16 v5, v43

    .line 419
    .restart local v5    # "y1":C
    move/from16 v6, v44

    .line 420
    .restart local v6    # "y2":C
    move/from16 v7, v45

    .restart local v7    # "y3":C
    goto :goto_9

    .line 422
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_24
    const/16 v12, 0x5e74

    move/from16 v0, v40

    if-eq v0, v12, :cond_25

    const v12, 0xb144

    move/from16 v0, v40

    if-ne v0, v12, :cond_32

    .line 423
    :cond_25
    move/from16 v4, v32

    .line 424
    .restart local v4    # "y0":C
    move/from16 v5, v33

    .line 425
    .restart local v5    # "y1":C
    move/from16 v6, v38

    .line 426
    .restart local v6    # "y2":C
    move/from16 v7, v39

    .line 428
    .restart local v7    # "y3":C
    const/16 v12, 0x6708

    move/from16 v0, v43

    if-eq v0, v12, :cond_26

    const v12, 0xc6d4

    move/from16 v0, v43

    if-ne v0, v12, :cond_2b

    .line 429
    :cond_26
    move/from16 v8, v41

    .line 430
    .restart local v8    # "M0":C
    move/from16 v9, v42

    .line 431
    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    move/from16 v0, v45

    if-eq v0, v12, :cond_27

    const v12, 0xc77c

    move/from16 v0, v45

    if-ne v0, v12, :cond_28

    .line 432
    :cond_27
    const/16 v10, 0x30

    .line 433
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 434
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_28
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x65e5

    move/from16 v0, v19

    if-eq v12, v0, :cond_29

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const v19, 0xc77c

    move/from16 v0, v19

    if-ne v12, v0, :cond_2a

    .line 435
    :cond_29
    move/from16 v10, v44

    .line 436
    .restart local v10    # "d0":C
    move/from16 v11, v45

    .line 437
    .restart local v11    # "d1":C
    const/16 v49, 0xb

    goto/16 :goto_9

    .line 439
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 441
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_2b
    const/16 v12, 0x6708

    move/from16 v0, v42

    if-eq v0, v12, :cond_2c

    const v12, 0xc6d4

    move/from16 v0, v42

    if-ne v0, v12, :cond_31

    .line 442
    :cond_2c
    const/16 v8, 0x30

    .line 443
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 444
    .restart local v9    # "M1":C
    const/16 v12, 0x65e5

    move/from16 v0, v44

    if-eq v0, v12, :cond_2d

    const v12, 0xc77c

    move/from16 v0, v44

    if-ne v0, v12, :cond_2e

    .line 445
    :cond_2d
    const/16 v10, 0x30

    .line 446
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 447
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2e
    const/16 v12, 0x65e5

    move/from16 v0, v45

    if-eq v0, v12, :cond_2f

    const v12, 0xc77c

    move/from16 v0, v45

    if-ne v0, v12, :cond_30

    .line 448
    :cond_2f
    move/from16 v10, v43

    .line 449
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 451
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_30
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 454
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_31
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 457
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    :cond_32
    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    .restart local v8    # "M0":C
    .restart local v9    # "M1":C
    .restart local v10    # "d0":C
    .restart local v11    # "d1":C
    :cond_33
    move-object/from16 v19, p0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    .line 465
    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 467
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v65

    .line 468
    .local v65, "t":C
    const/16 v12, 0x54

    move/from16 v0, v65

    if-eq v0, v12, :cond_34

    const/16 v12, 0x20

    move/from16 v0, v65

    if-ne v0, v12, :cond_35

    if-nez p1, :cond_35

    .line 469
    :cond_34
    add-int/lit8 v12, v49, 0x9

    move/from16 v0, v61

    if-ge v0, v12, :cond_3d

    .line 470
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 472
    :cond_35
    const/16 v12, 0x22

    move/from16 v0, v65

    if-eq v0, v12, :cond_36

    const/16 v12, 0x1a

    move/from16 v0, v65

    if-eq v0, v12, :cond_36

    const/16 v12, 0x65e5

    move/from16 v0, v65

    if-eq v0, v12, :cond_36

    const v12, 0xc77c

    move/from16 v0, v65

    if-ne v0, v12, :cond_37

    .line 473
    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xb

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xd

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 478
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 480
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 481
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 482
    :cond_37
    const/16 v12, 0x2b

    move/from16 v0, v65

    if-eq v0, v12, :cond_38

    const/16 v12, 0x2d

    move/from16 v0, v65

    if-ne v0, v12, :cond_3c

    .line 483
    :cond_38
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v19, v49, 0x6

    move/from16 v0, v19

    if-ne v12, v0, :cond_3b

    .line 484
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-ne v12, v0, :cond_39

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x4

    .line 485
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-ne v12, v0, :cond_39

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x5

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x30

    move/from16 v0, v19

    if-eq v12, v0, :cond_3a

    .line 487
    :cond_39
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 490
    :cond_3a
    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    const/16 v25, 0x30

    move-object/from16 v19, p0

    invoke-virtual/range {v19 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 492
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v19, v0

    add-int v19, v19, v49

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v65

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 493
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 495
    :cond_3b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 497
    :cond_3c
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 500
    :cond_3d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_3e

    .line 501
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 503
    :cond_3e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    const/16 v19, 0x3a

    move/from16 v0, v19

    if-eq v12, v0, :cond_3f

    .line 504
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 507
    :cond_3f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 508
    .restart local v13    # "h0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 509
    .restart local v14    # "h1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 510
    .restart local v15    # "m0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .line 511
    .restart local v16    # "m1":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v17

    .line 512
    .restart local v17    # "s0":C
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v18

    .restart local v18    # "s1":C
    move-object/from16 v12, p0

    .line 514
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v12

    if-nez v12, :cond_40

    .line 515
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_40
    move-object/from16 v12, p0

    .line 518
    invoke-virtual/range {v12 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 520
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v50

    .line 521
    .local v50, "dot":C
    const/16 v12, 0x2e

    move/from16 v0, v50

    if-ne v0, v12, :cond_41

    .line 522
    add-int/lit8 v12, v49, 0xb

    move/from16 v0, v61

    if-ge v0, v12, :cond_43

    .line 523
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 526
    :cond_41
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 528
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0x9

    add-int v12, v12, v19

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 530
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 532
    const/16 v12, 0x5a

    move/from16 v0, v50

    if-ne v0, v12, :cond_42

    .line 534
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_42

    .line 535
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v73

    .line 536
    .local v73, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v73

    array-length v12, v0

    if-lez v12, :cond_42

    .line 537
    const/4 v12, 0x0

    aget-object v12, v73, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v71

    .line 538
    .local v71, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v71

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 542
    .end local v71    # "timeZone":Ljava/util/TimeZone;
    .end local v73    # "timeZoneIDs":[Ljava/lang/String;
    :cond_42
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 545
    :cond_43
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 546
    .restart local v28    # "S0":C
    const/16 v12, 0x30

    move/from16 v0, v28

    if-lt v0, v12, :cond_44

    const/16 v12, 0x39

    move/from16 v0, v28

    if-le v0, v12, :cond_45

    .line 547
    :cond_44
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 549
    :cond_45
    add-int/lit8 v54, v28, -0x30

    .line 550
    .restart local v54    # "millis":I
    const/16 v56, 0x1

    .line 552
    .local v56, "millisLen":I
    add-int/lit8 v12, v49, 0xb

    move/from16 v0, v61

    if-le v0, v12, :cond_46

    .line 553
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 554
    .restart local v29    # "S1":C
    const/16 v12, 0x30

    move/from16 v0, v29

    if-lt v0, v12, :cond_46

    const/16 v12, 0x39

    move/from16 v0, v29

    if-gt v0, v12, :cond_46

    .line 555
    mul-int/lit8 v12, v54, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v54, v12, v19

    .line 556
    const/16 v56, 0x2

    .line 560
    .end local v29    # "S1":C
    :cond_46
    const/4 v12, 0x2

    move/from16 v0, v56

    if-ne v0, v12, :cond_47

    .line 561
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 562
    .restart local v30    # "S2":C
    const/16 v12, 0x30

    move/from16 v0, v30

    if-lt v0, v12, :cond_47

    const/16 v12, 0x39

    move/from16 v0, v30

    if-gt v0, v12, :cond_47

    .line 563
    mul-int/lit8 v12, v54, 0xa

    add-int/lit8 v19, v30, -0x30

    add-int v54, v12, v19

    .line 564
    const/16 v56, 0x3

    .line 568
    .end local v30    # "S2":C
    :cond_47
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, v54

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 570
    const/16 v74, 0x0

    .line 571
    .local v74, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v72

    .line 572
    .local v72, "timeZoneFlag":C
    const/16 v12, 0x2b

    move/from16 v0, v72

    if-eq v0, v12, :cond_48

    const/16 v12, 0x2d

    move/from16 v0, v72

    if-ne v0, v12, :cond_53

    .line 573
    :cond_48
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v66

    .line 574
    .local v66, "t0":C
    const/16 v12, 0x30

    move/from16 v0, v66

    if-lt v0, v12, :cond_49

    const/16 v12, 0x31

    move/from16 v0, v66

    if-le v0, v12, :cond_4a

    .line 575
    :cond_49
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 578
    :cond_4a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v67

    .line 579
    .local v67, "t1":C
    const/16 v12, 0x30

    move/from16 v0, v67

    if-lt v0, v12, :cond_4b

    const/16 v12, 0x39

    move/from16 v0, v67

    if-le v0, v12, :cond_4c

    .line 580
    :cond_4b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 583
    :cond_4c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v68

    .line 584
    .local v68, "t2":C
    const/16 v12, 0x3a

    move/from16 v0, v68

    if-ne v0, v12, :cond_50

    .line 585
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v69

    .line 586
    .local v69, "t3":C
    const/16 v12, 0x30

    move/from16 v0, v69

    if-eq v0, v12, :cond_4d

    .line 587
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 590
    :cond_4d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v70

    .line 591
    .local v70, "t4":C
    const/16 v12, 0x30

    move/from16 v0, v70

    if-eq v0, v12, :cond_4e

    .line 592
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 594
    :cond_4e
    const/16 v74, 0x6

    .line 605
    .end local v69    # "t3":C
    .end local v70    # "t4":C
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    .line 618
    .end local v66    # "t0":C
    .end local v67    # "t1":C
    .end local v68    # "t2":C
    :cond_4f
    :goto_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0xa

    add-int v19, v19, v56

    add-int v19, v19, v74

    add-int v12, v12, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v51

    .line 619
    .local v51, "end":C
    const/16 v12, 0x1a

    move/from16 v0, v51

    if-eq v0, v12, :cond_54

    const/16 v12, 0x22

    move/from16 v0, v51

    if-eq v0, v12, :cond_54

    .line 620
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 595
    .end local v51    # "end":C
    .restart local v66    # "t0":C
    .restart local v67    # "t1":C
    .restart local v68    # "t2":C
    :cond_50
    const/16 v12, 0x30

    move/from16 v0, v68

    if-ne v0, v12, :cond_52

    .line 596
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v12, v12, v49

    add-int/lit8 v12, v12, 0xa

    add-int v12, v12, v56

    add-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v69

    .line 597
    .restart local v69    # "t3":C
    const/16 v12, 0x30

    move/from16 v0, v69

    if-eq v0, v12, :cond_51

    .line 598
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 600
    :cond_51
    const/16 v74, 0x5

    .line 601
    goto :goto_a

    .line 602
    .end local v69    # "t3":C
    :cond_52
    const/16 v74, 0x3

    goto :goto_a

    .line 607
    .end local v66    # "t0":C
    .end local v67    # "t1":C
    .end local v68    # "t2":C
    :cond_53
    const/16 v12, 0x5a

    move/from16 v0, v72

    if-ne v0, v12, :cond_4f

    .line 608
    const/16 v74, 0x1

    .line 609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    if-eqz v12, :cond_4f

    .line 610
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v73

    .line 611
    .restart local v73    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v73

    array-length v12, v0

    if-lez v12, :cond_4f

    .line 612
    const/4 v12, 0x0

    aget-object v12, v73, v12

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v71

    .line 613
    .restart local v71    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v71

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_b

    .line 622
    .end local v71    # "timeZone":Ljava/util/TimeZone;
    .end local v73    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v51    # "end":C
    :cond_54
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v19, v49, 0xa

    add-int v19, v19, v56

    add-int v19, v19, v74

    add-int v12, v12, v19

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 624
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 625
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method public final scanInt(C)I
    .locals 12
    .param p1, "expectNext"    # C

    .prologue
    const/4 v1, 0x1

    const/16 v11, 0x22

    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 1450
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1452
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1453
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1454
    .local v0, "chLocal":C
    if-ne v0, v11, :cond_2

    move v4, v1

    .line 1456
    .local v4, "quote":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1457
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1460
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_3

    .line 1461
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 1462
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1466
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v7, 0x30

    if-lt v0, v7, :cond_7

    const/16 v7, 0x39

    if-gt v0, v7, :cond_7

    .line 1467
    add-int/lit8 v5, v0, -0x30

    .local v5, "value":I
    move v2, v3

    .line 1469
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1470
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 1471
    mul-int/lit8 v7, v5, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v5, v7, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v5    # "value":I
    .restart local v3    # "offset":I
    :cond_2
    move v4, v6

    .line 1454
    goto :goto_0

    .restart local v4    # "quote":Z
    :cond_3
    move v1, v6

    .line 1460
    goto :goto_1

    .line 1472
    .restart local v1    # "negative":Z
    .restart local v5    # "value":I
    :cond_4
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_5

    .line 1473
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 1542
    .end local v5    # "value":I
    :goto_3
    return v5

    .line 1476
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_5
    if-eqz v4, :cond_13

    .line 1477
    if-eq v0, v11, :cond_6

    .line 1478
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 1479
    goto :goto_3

    .line 1481
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1487
    :goto_4
    if-gez v5, :cond_12

    .line 1488
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1489
    goto :goto_3

    .line 1491
    .end local v2    # "offset":I
    .end local v5    # "value":I
    .restart local v3    # "offset":I
    :cond_7
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 1492
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_d

    add-int/lit8 v3, v2, 0x1

    .line 1493
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 1494
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_d

    .line 1495
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1496
    const/4 v5, 0x0

    .line 1497
    .restart local v5    # "value":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1499
    if-eqz v4, :cond_8

    if-ne v0, v11, :cond_8

    .line 1500
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1504
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    :goto_5
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    .line 1505
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1506
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1507
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1508
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1509
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1510
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    .line 1511
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1512
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1513
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1514
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1515
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1516
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1517
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1518
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_5

    .line 1522
    :cond_b
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 1523
    goto/16 :goto_3

    .end local v2    # "offset":I
    .end local v5    # "value":I
    .restart local v3    # "offset":I
    :cond_c
    move v2, v3

    .line 1525
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_d
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v5, v6

    .line 1526
    goto/16 :goto_3

    .line 1537
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1538
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1530
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_6
    if-ne v0, p1, :cond_e

    .line 1531
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1532
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1533
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1534
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1535
    if-eqz v1, :cond_f

    neg-int v5, v5

    .end local v5    # "value":I
    :cond_f
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .line 1541
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_10
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1542
    if-eqz v1, :cond_11

    neg-int v5, v5

    .end local v5    # "value":I
    :cond_11
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .restart local v5    # "value":I
    :cond_12
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_6

    :cond_13
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4
.end method

.method public scanLong(C)J
    .locals 12
    .param p1, "expectNextChar"    # C

    .prologue
    .line 1688
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1690
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1691
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1692
    .local v0, "chLocal":C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    const/4 v4, 0x1

    .line 1694
    .local v4, "quote":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1695
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1698
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    const/4 v1, 0x1

    .line 1699
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 1700
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1704
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v5, 0x30

    if-lt v0, v5, :cond_7

    const/16 v5, 0x39

    if-gt v0, v5, :cond_7

    .line 1705
    add-int/lit8 v5, v0, -0x30

    int-to-long v6, v5

    .local v6, "value":J
    move v2, v3

    .line 1707
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1708
    const/16 v5, 0x30

    if-lt v0, v5, :cond_4

    const/16 v5, 0x39

    if-gt v0, v5, :cond_4

    .line 1709
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v5, v0, -0x30

    int-to-long v10, v5

    add-long v6, v8, v10

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1692
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1698
    .restart local v4    # "quote":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1710
    .restart local v1    # "negative":Z
    .restart local v6    # "value":J
    :cond_4
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_5

    .line 1711
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1712
    const-wide/16 v6, 0x0

    move v2, v3

    .line 1781
    .end local v3    # "offset":I
    .end local v6    # "value":J
    .restart local v2    # "offset":I
    :goto_3
    return-wide v6

    .line 1714
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_5
    if-eqz v4, :cond_12

    .line 1715
    const/16 v5, 0x22

    if-eq v0, v5, :cond_6

    .line 1716
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1717
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1719
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1725
    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_11

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, v6, v8

    if-eqz v5, :cond_11

    .line 1726
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1727
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 1729
    .end local v2    # "offset":I
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_7
    const/16 v5, 0x6e

    if-ne v0, v5, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 1730
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v8, 0x75

    if-ne v5, v8, :cond_d

    add-int/lit8 v3, v2, 0x1

    .line 1731
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v8, 0x6c

    if-ne v5, v8, :cond_c

    add-int/lit8 v2, v3, 0x1

    .line 1732
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v8, 0x6c

    if-ne v5, v8, :cond_d

    .line 1733
    const/4 v5, 0x5

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1734
    const-wide/16 v6, 0x0

    .line 1735
    .restart local v6    # "value":J
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 1737
    if-eqz v4, :cond_8

    const/16 v5, 0x22

    if-ne v0, v5, :cond_8

    .line 1738
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1742
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    :goto_5
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_9

    .line 1743
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1744
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1745
    const/4 v5, 0x5

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1746
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1747
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1748
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_a

    .line 1749
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1750
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1751
    const/4 v5, 0x5

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1752
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    move v2, v3

    .line 1753
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .line 1754
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1755
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1756
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_5

    .line 1760
    :cond_b
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1761
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .end local v2    # "offset":I
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_c
    move v2, v3

    .line 1763
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_d
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1764
    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 1775
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1776
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1768
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_6
    if-ne v0, p1, :cond_e

    .line 1769
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1770
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1771
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1772
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1773
    if-eqz v1, :cond_f

    neg-long v6, v6

    .end local v6    # "value":J
    :cond_f
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    .line 1780
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_10
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    move v2, v3

    .line 1781
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_3

    :cond_11
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_6

    :cond_12
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    .line 629
    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    .line 630
    .local v0, "hour":I
    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    .line 631
    .local v1, "minute":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

    .line 632
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 633
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 634
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 635
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 5
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .prologue
    .line 638
    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    .line 639
    .local v2, "timeZoneOffset":I
    const/16 v3, 0x2d

    if-ne p1, v3, :cond_0

    .line 640
    neg-int v2, v2

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 644
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 646
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 647
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 650
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 149
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 156
    :goto_0
    return-object v1

    .line 151
    :cond_0
    new-array v0, p2, [C

    .line 152
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 153
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 156
    .end local v0    # "chars":[C
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 161
    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    .line 167
    :goto_0
    return-object v0

    .line 165
    :cond_0
    new-array v0, p2, [C

    .line 166
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method
