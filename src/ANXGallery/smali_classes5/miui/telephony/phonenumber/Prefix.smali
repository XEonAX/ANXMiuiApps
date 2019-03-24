.class public Lmiui/telephony/phonenumber/Prefix;
.super Ljava/lang/Object;
.source "Prefix.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final PREFIX_10193:Ljava/lang/String; = "10193"

.field public static final PREFIX_11808:Ljava/lang/String; = "11808"

.field public static final PREFIX_12520:Ljava/lang/String; = "12520"

.field public static final PREFIX_12583:Ljava/lang/String; = "12583"

.field public static final PREFIX_12593:Ljava/lang/String; = "12593"

.field public static final PREFIX_17900:Ljava/lang/String; = "17900"

.field public static final PREFIX_17901:Ljava/lang/String; = "17901"

.field public static final PREFIX_17908:Ljava/lang/String; = "17908"

.field public static final PREFIX_17909:Ljava/lang/String; = "17909"

.field public static final PREFIX_17911:Ljava/lang/String; = "17911"

.field public static final PREFIX_17950:Ljava/lang/String; = "17950"

.field public static final PREFIX_17951:Ljava/lang/String; = "17951"

.field public static final PREFIX_17960:Ljava/lang/String; = "17960"

.field public static final PREFIX_17961:Ljava/lang/String; = "17961"

.field public static final PREFIX_17968:Ljava/lang/String; = "17968"

.field public static final PREFIX_17969:Ljava/lang/String; = "17969"

.field public static final PREFIX_17990:Ljava/lang/String; = "17990"

.field public static final PREFIX_17991:Ljava/lang/String; = "17991"

.field public static final PREFIX_17995:Ljava/lang/String; = "17995"

.field public static final PREFIX_17996:Ljava/lang/String; = "17996"

.field public static final SMS_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "12520"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSmsPrefix(Ljava/lang/String;)Z
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lmiui/telephony/phonenumber/Prefix;->SMS_PREFIXES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 113
    .local v4, "sms":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v4    # "sms":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return v1
.end method

.method public static parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 7
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 40
    if-gtz p2, :cond_0

    .line 41
    const-string v0, ""

    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    const/16 v2, 0x39

    const/16 v3, 0x30

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 94
    :pswitch_0
    const/16 v0, 0xa

    if-lt p2, v0, :cond_14

    .line 95
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    .line 97
    :cond_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-lt v0, v1, :cond_14

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-gt v0, v2, :cond_14

    .line 98
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :pswitch_1
    const/4 v0, 0x4

    if-le p2, v0, :cond_14

    .line 47
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v4, 0x37

    const/16 v5, 0x35

    const/16 v6, 0x38

    if-eq v0, v4, :cond_4

    const/16 v4, 0x33

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 59
    :pswitch_2
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_13

    .line 60
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "12583"

    return-object v0

    .line 61
    :cond_2
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "12593"

    return-object v0

    .line 62
    :cond_3
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_13

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_13

    const-string v0, "12520"

    return-object v0

    .line 54
    :pswitch_3
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_13

    .line 55
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_13

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_13

    const-string v0, "11808"

    return-object v0

    .line 49
    :pswitch_4
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_13

    .line 50
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_13

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_13

    const-string v0, "10193"

    return-object v0

    .line 66
    :cond_4
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_13

    .line 67
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "17900"

    return-object v0

    .line 68
    :cond_5
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_6

    const-string v0, "17901"

    return-object v0

    .line 69
    :cond_6
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_7

    const-string v0, "17908"

    return-object v0

    .line 70
    :cond_7
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_8

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_8

    const-string v0, "17909"

    return-object v0

    .line 71
    :cond_8
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_9

    const-string v0, "17911"

    return-object v0

    .line 72
    :cond_9
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_a

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_a

    const-string v0, "17950"

    return-object v0

    .line 73
    :cond_a
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_b

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_b

    const-string v0, "17951"

    return-object v0

    .line 74
    :cond_b
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v4, 0x36

    if-ne v0, v4, :cond_c

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_c

    const-string v0, "17960"

    return-object v0

    .line 75
    :cond_c
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_d

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_d

    const-string v0, "17961"

    return-object v0

    .line 76
    :cond_d
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_e

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_e

    const-string v0, "17968"

    return-object v0

    .line 77
    :cond_e
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_f

    const-string v0, "17969"

    return-object v0

    .line 78
    :cond_f
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_10

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_10

    const-string v0, "17990"

    return-object v0

    .line 79
    :cond_10
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_11

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_11

    const-string v0, "17991"

    return-object v0

    .line 80
    :cond_11
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_12

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_12

    const-string v0, "17995"

    return-object v0

    .line 81
    :cond_12
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_13

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_13

    const-string v0, "17996"

    return-object v0

    .line 83
    :cond_13
    :goto_0
    nop

    .line 107
    :cond_14
    :goto_1
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
