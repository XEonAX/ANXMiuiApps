.class public Lcom/xiaomi/scanner/camera/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 70
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 78
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 79
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 80
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 81
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 82
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 83
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 85
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-short p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mTagId:S

    .line 130
    iput-short p2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    .line 131
    iput p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .line 132
    iput-boolean p5, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 133
    iput p4, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mIfd:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 884
    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Lcom/xiaomi/scanner/camera/exif/Rational;)Z
    .locals 10
    .param p1, "value"    # [Lcom/xiaomi/scanner/camera/exif/Rational;

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    const/4 v1, 0x0

    .line 951
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 952
    .local v0, "v":Lcom/xiaomi/scanner/camera/exif/Rational;
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    .line 954
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 955
    :cond_0
    const/4 v1, 0x1

    .line 958
    .end local v0    # "v":Lcom/xiaomi/scanner/camera/exif/Rational;
    :cond_1
    return v1

    .line 951
    .restart local v0    # "v":Lcom/xiaomi/scanner/camera/exif/Rational;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4
    .param p1, "value"    # [I

    .prologue
    const/4 v1, 0x0

    .line 931
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 932
    .local v0, "v":I
    if-gez v0, :cond_1

    .line 933
    const/4 v1, 0x1

    .line 936
    .end local v0    # "v":I
    :cond_0
    return v1

    .line 931
    .restart local v0    # "v":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8
    .param p1, "value"    # [J

    .prologue
    const/4 v2, 0x0

    .line 922
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v0, p1, v3

    .line 923
    .local v0, "v":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 924
    :cond_0
    const/4 v2, 0x1

    .line 927
    .end local v0    # "v":J
    :cond_1
    return v2

    .line 922
    .restart local v0    # "v":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedRational([Lcom/xiaomi/scanner/camera/exif/Rational;)Z
    .locals 10
    .param p1, "value"    # [Lcom/xiaomi/scanner/camera/exif/Rational;

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 940
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 941
    .local v0, "v":Lcom/xiaomi/scanner/camera/exif/Rational;
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 942
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    .line 943
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 944
    :cond_0
    const/4 v1, 0x1

    .line 947
    .end local v0    # "v":Lcom/xiaomi/scanner/camera/exif/Rational;
    :cond_1
    return v1

    .line 940
    .restart local v0    # "v":Lcom/xiaomi/scanner/camera/exif/Rational;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    const/4 v1, 0x0

    .line 913
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p1, v2

    .line 914
    .local v0, "v":I
    const v4, 0xffff

    if-gt v0, v4, :cond_0

    if-gez v0, :cond_2

    .line 915
    :cond_0
    const/4 v1, 0x1

    .line 918
    .end local v0    # "v":I
    :cond_1
    return v1

    .line 913
    .restart local v0    # "v":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 890
    packed-switch p0, :pswitch_data_0

    .line 908
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 892
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 894
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 896
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 898
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 900
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 902
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 904
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 906
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 150
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .prologue
    const/4 v0, 0x1

    .line 111
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .prologue
    const/4 v0, 0x1

    .line 120
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 963
    if-nez p1, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v1

    .line 966
    :cond_1
    instance-of v2, p1, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 967
    check-cast v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;

    .line 968
    .local v0, "tag":Lcom/xiaomi/scanner/camera/exif/ExifTag;
    iget-short v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    .line 973
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 974
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 976
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 977
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    .line 980
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v2, :cond_3

    .line 982
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v2, :cond_0

    .line 985
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/xiaomi/scanner/camera/exif/Rational;

    check-cast v1, [Lcom/xiaomi/scanner/camera/exif/Rational;

    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/xiaomi/scanner/camera/exif/Rational;

    check-cast v2, [Lcom/xiaomi/scanner/camera/exif/Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 986
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 987
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 990
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 992
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 995
    :cond_5
    iget-object v2, v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsLong(J)J
    .locals 9
    .param p1, "defaultValue"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    .line 730
    .local v1, "l":[J
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v4, :cond_1

    .line 731
    aget-wide p1, v1, v8

    .line 741
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 733
    .restart local p1    # "defaultValue":J
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 734
    .local v0, "b":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v4, :cond_2

    .line 735
    aget-byte v3, v0, v8

    int-to-long p1, v3

    goto :goto_0

    .line 737
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsRationals()[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v2

    .line 738
    .local v2, "r":[Lcom/xiaomi/scanner/camera/exif/Rational;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v4, :cond_0

    aget-object v3, v2, v8

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/Rational;->getDenominator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 739
    aget-object v3, v2, v8

    invoke-virtual {v3}, Lcom/xiaomi/scanner/camera/exif/Rational;->toDouble()D

    move-result-wide v4

    double-to-long p1, v4

    goto :goto_0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 748
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 749
    const-string v1, ""

    .line 774
    :goto_0
    return-object v1

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 751
    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 752
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Lcom/xiaomi/scanner/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 756
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    .line 758
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 763
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    .line 764
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 765
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 766
    const-string v1, ""

    goto :goto_0

    .line 768
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 771
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 774
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .line 215
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 837
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getBytes([BII)V

    .line 838
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 851
    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 852
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    .line 853
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .end local p3    # "length":I
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 190
    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 826
    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    .line 828
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    check-cast v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 805
    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    .line 807
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/xiaomi/scanner/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method protected getStringByte()[B
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 174
    iget-short v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsByte(B)B
    .locals 3
    .param p1, "defaultValue"    # B

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 592
    .local v0, "b":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 595
    .end local p1    # "defaultValue":B
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":B
    :cond_1
    const/4 v1, 0x0

    aget-byte p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsBytes()[B
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 578
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    .line 676
    .local v0, "i":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 679
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_1
    const/4 v1, 0x0

    aget p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsInts()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 652
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 662
    :cond_0
    return-object v0

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v3, v3, [J

    if-eqz v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    .line 656
    .local v2, "val":[J
    array-length v3, v2

    new-array v0, v3, [I

    .line 657
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 658
    aget-wide v4, v2, v1

    long-to-int v3, v4

    aput v3, v0, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 707
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 710
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :cond_1
    const/4 v1, 0x0

    aget-wide p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsLongs()[J
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    .line 693
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsRational(J)Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 5
    .param p1, "defaultValue"    # J

    .prologue
    .line 640
    new-instance v0, Lcom/xiaomi/scanner/camera/exif/Rational;

    const-wide/16 v2, 0x1

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/xiaomi/scanner/camera/exif/Rational;-><init>(JJ)V

    .line 641
    .local v0, "defaultVal":Lcom/xiaomi/scanner/camera/exif/Rational;
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsRational(Lcom/xiaomi/scanner/camera/exif/Rational;)Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsRational(Lcom/xiaomi/scanner/camera/exif/Rational;)Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 3
    .param p1, "defaultValue"    # Lcom/xiaomi/scanner/camera/exif/Rational;

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsRationals()[Lcom/xiaomi/scanner/camera/exif/Rational;

    move-result-object v0

    .line 623
    .local v0, "r":[Lcom/xiaomi/scanner/camera/exif/Rational;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 626
    .end local p1    # "defaultValue":Lcom/xiaomi/scanner/camera/exif/Rational;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Lcom/xiaomi/scanner/camera/exif/Rational;
    :cond_1
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsRationals()[Lcom/xiaomi/scanner/camera/exif/Rational;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    check-cast v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    .line 609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 541
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-object v0

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 544
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    .line 546
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/xiaomi/scanner/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 564
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method protected getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 789
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 792
    :goto_0
    return-wide v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    .line 795
    invoke-static {v2}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 875
    iput-boolean p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 876
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mIfd:I

    .line 168
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 871
    iput p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mOffset:I

    .line 872
    return-void
.end method

.method public setTimeValue(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 528
    sget-object v1, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 529
    :try_start_0
    sget-object v0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(B)Z
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 442
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/xiaomi/scanner/camera/exif/Rational;)Z
    .locals 2
    .param p1, "value"    # Lcom/xiaomi/scanner/camera/exif/Rational;

    .prologue
    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaomi/scanner/camera/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const v5, 0xffff

    const/4 v4, 0x0

    .line 458
    if-nez p1, :cond_1

    .line 513
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 460
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_2

    .line 461
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 462
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 463
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 464
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, [I

    if-eqz v3, :cond_4

    .line 465
    check-cast p1, [I

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto :goto_0

    .line 466
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, [J

    if-eqz v3, :cond_5

    .line 467
    check-cast p1, [J

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([J)Z

    move-result v4

    goto :goto_0

    .line 468
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v3, :cond_6

    .line 469
    check-cast p1, Lcom/xiaomi/scanner/camera/exif/Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    move-result v4

    goto :goto_0

    .line 470
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, [Lcom/xiaomi/scanner/camera/exif/Rational;

    if-eqz v3, :cond_7

    .line 471
    check-cast p1, [Lcom/xiaomi/scanner/camera/exif/Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [Lcom/xiaomi/scanner/camera/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    move-result v4

    goto :goto_0

    .line 472
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, [B

    if-eqz v3, :cond_8

    .line 473
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([B)Z

    move-result v4

    goto :goto_0

    .line 474
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 475
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 476
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 477
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(J)Z

    move-result v4

    goto :goto_0

    .line 478
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_b

    .line 479
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue(B)Z

    move-result v4

    goto/16 :goto_0

    .line 480
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v3, p1, [Ljava/lang/Short;

    if-eqz v3, :cond_e

    .line 482
    check-cast p1, [Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Short;

    .line 483
    .local v0, "arr":[Ljava/lang/Short;
    array-length v3, v0

    new-array v1, v3, [I

    .line 484
    .local v1, "fin":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_d

    .line 485
    aget-object v3, v0, v2

    if-nez v3, :cond_c

    move v3, v4

    :goto_2
    aput v3, v1, v2

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    :cond_c
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    goto :goto_2

    .line 487
    :cond_d
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 488
    .end local v0    # "arr":[Ljava/lang/Short;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v3, p1, [Ljava/lang/Integer;

    if-eqz v3, :cond_11

    .line 490
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    .line 491
    .local v0, "arr":[Ljava/lang/Integer;
    array-length v3, v0

    new-array v1, v3, [I

    .line 492
    .restart local v1    # "fin":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 493
    aget-object v3, v0, v2

    if-nez v3, :cond_f

    move v3, v4

    :goto_4
    aput v3, v1, v2

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 493
    :cond_f
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 495
    :cond_10
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 496
    .end local v0    # "arr":[Ljava/lang/Integer;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    instance-of v3, p1, [Ljava/lang/Long;

    if-eqz v3, :cond_14

    .line 498
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    .line 499
    .local v0, "arr":[Ljava/lang/Long;
    array-length v3, v0

    new-array v1, v3, [J

    .line 500
    .local v1, "fin":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 501
    aget-object v3, v0, v2

    if-nez v3, :cond_12

    const-wide/16 v4, 0x0

    :goto_6
    aput-wide v4, v1, v2

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 501
    :cond_12
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 503
    :cond_13
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([J)Z

    move-result v4

    goto/16 :goto_0

    .line 504
    .end local v0    # "arr":[Ljava/lang/Long;
    .end local v1    # "fin":[J
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    instance-of v3, p1, [Ljava/lang/Byte;

    if-eqz v3, :cond_0

    .line 506
    check-cast p1, [Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    .line 507
    .local v0, "arr":[Ljava/lang/Byte;
    array-length v3, v0

    new-array v1, v3, [B

    .line 508
    .local v1, "fin":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 509
    aget-object v3, v0, v2

    if-nez v3, :cond_15

    move v3, v4

    :goto_8
    aput-byte v3, v1, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 509
    :cond_15
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_8

    .line 511
    :cond_16
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([B)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    iget-short v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-eq v5, v6, :cond_1

    iget-short v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-eq v5, v7, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v3

    .line 332
    :cond_1
    sget-object v5, Lcom/xiaomi/scanner/camera/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 333
    .local v0, "buf":[B
    move-object v2, v0

    .line 334
    .local v2, "finalBuf":[B
    array-length v5, v0

    if-lez v5, :cond_5

    .line 335
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    iget-short v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v5, v7, :cond_4

    :cond_2
    move-object v2, v0

    .line 340
    :cond_3
    :goto_1
    array-length v1, v2

    .line 341
    .local v1, "count":I
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 344
    iput v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .line 345
    iput-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    move v3, v4

    .line 346
    goto :goto_0

    .line 335
    .end local v1    # "count":I
    :cond_4
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    .line 336
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1

    .line 337
    :cond_5
    iget-short v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    if-ne v5, v4, :cond_3

    .line 338
    new-array v2, v4, [B

    .end local v2    # "finalBuf":[B
    aput-byte v3, v2, v3

    .restart local v2    # "finalBuf":[B
    goto :goto_1
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 428
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, p3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget-short v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 418
    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 419
    iget-object v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iput p3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    move v0, v1

    .line 421
    goto :goto_0
.end method

.method public setValue([I)Z
    .locals 7
    .param p1, "value"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 237
    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    .line 244
    :cond_2
    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    :cond_3
    iget-short v3, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    .line 251
    .local v0, "data":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 252
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_5
    iput-object v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 255
    array-length v2, p1

    iput v2, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .line 256
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .prologue
    const/4 v0, 0x0

    .line 287
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 294
    array-length v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Lcom/xiaomi/scanner/camera/exif/Rational;)Z
    .locals 4
    .param p1, "value"    # [Lcom/xiaomi/scanner/camera/exif/Rational;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 364
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    .line 370
    :cond_2
    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :cond_3
    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->checkOverflowForRational([Lcom/xiaomi/scanner/camera/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :cond_4
    iput-object p1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 377
    array-length v0, p1

    iput v0, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    .line 378
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mDataType:S

    .line 1004
    invoke-static {v1}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/camera/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    invoke-virtual {p0}, Lcom/xiaomi/scanner/camera/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
