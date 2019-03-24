.class public Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final HASH_STRING_INDICATOR:C = '\u0001'

.field private static final MAX_NUMBER_LENGTH:I = 0x100

.field private static final MISSING_AREA_CODE_INDICATOR:C = '\u0002'

.field private static final POOL_SIZE:I = 0xa

.field private static final sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

.field private static sPoolIndex:I


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mBuffer:Ljava/lang/StringBuffer;

.field private mCountryCode:Ljava/lang/String;

.field private mDefaultCountryCode:Ljava/lang/String;

.field private mEffectiveNumber:Ljava/lang/String;

.field private mEffectiveNumberStart:I

.field private mIsChinaEnvironment:Z

.field private mNetIddCode:Ljava/lang/String;

.field private mOriginal:Ljava/lang/CharSequence;

.field private mPostDialString:Ljava/lang/String;

.field private mPostDialStringStart:I

.field private mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    const/16 v0, 0xa

    new-array v0, v0, [Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sput-object v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    .line 239
    const/4 v0, -0x1

    sput v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 256
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->clear()V

    .line 257
    return-void
.end method

.method public static addCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .line 725
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    return-object p0

    .line 728
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 729
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 730
    .local v1, "addCountryCode":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 732
    const/4 v1, 0x0

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    const/4 v1, 0x0

    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v3

    if-nez v3, :cond_3

    .line 736
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    move v1, v3

    .line 740
    :cond_3
    :goto_0
    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "#"

    .line 741
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 742
    const/4 v1, 0x0

    .line 745
    :cond_5
    move-object v3, p0

    .line 746
    .local v3, "result":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 747
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "countryCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 749
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 751
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 753
    const-string v5, "39"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_7

    goto :goto_1

    .line 756
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v4    # "countryCode":Ljava/lang/String;
    goto :goto_2

    .line 754
    .restart local v4    # "countryCode":Ljava/lang/String;
    :cond_8
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 760
    .end local v4    # "countryCode":Ljava/lang/String;
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 761
    return-object v3
.end method

.method private static areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "b1"    # I
    .param p2, "s2"    # Ljava/lang/CharSequence;
    .param p3, "b2"    # I
    .param p4, "length"    # I

    .line 888
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    if-ltz p1, :cond_5

    if-ltz p3, :cond_5

    if-gez p4, :cond_0

    goto :goto_2

    .line 891
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v2, p1, p4

    if-lt v1, v2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v2, p3, p4

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 895
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 896
    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 897
    return v0

    .line 895
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 892
    :cond_4
    :goto_1
    return v0

    .line 889
    :cond_5
    :goto_2
    return v0
.end method

.method private attach(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 273
    if-nez p1, :cond_0

    .line 274
    const-string p1, ""

    .line 276
    :cond_0
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "postDialString":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 279
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 280
    .local v3, "c":C
    if-eqz v0, :cond_1

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 282
    :cond_1
    if-nez v1, :cond_2

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 283
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 284
    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    .line 285
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 286
    :cond_3
    if-nez v0, :cond_4

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 288
    const/4 v0, 0x1

    .line 289
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 278
    .end local v3    # "c":C
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_5
    if-nez v0, :cond_6

    .line 293
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 295
    :cond_6
    return-void
.end method

.method private clear()V
    .locals 2

    .line 260
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 264
    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 265
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 266
    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 267
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 268
    iput-boolean v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    .line 269
    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    .line 877
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialableNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hash"    # Ljava/lang/String;

    .line 797
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const-string v0, ""

    return-object v0

    .line 801
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 802
    .local v0, "index":I
    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 803
    const/4 v0, 0x1

    goto :goto_0

    .line 805
    :cond_1
    add-int/2addr v0, v1

    .line 808
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method public static getHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "dialable"    # Ljava/lang/String;

    .line 771
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 772
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    move-object v1, p0

    .line 773
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isSmsPrefix()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "effectiveNumber":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 775
    const-string v3, "%c(00%s)%s%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v8

    aput-object v2, v6, v7

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 776
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 777
    const-string v3, "%c(00%s)%s%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v6, v5

    const-string v5, "86"

    aput-object v5, v6, v8

    aput-object v2, v6, v7

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 778
    :cond_2
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v9, 0x5

    if-nez v3, :cond_4

    .line 779
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 780
    const-string v3, "%c(00%s)%s-%s%s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v5, "86"

    aput-object v5, v9, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    aput-object v2, v9, v4

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 782
    :cond_3
    const-string v3, "%c(00%s)%s%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v6, v5

    const-string v5, "86"

    aput-object v5, v6, v8

    aput-object v2, v6, v7

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 784
    :cond_4
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 785
    const-string v3, "%c(00%s)%s-%s%s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v5, "86"

    aput-object v5, v9, v8

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    aput-object v2, v9, v4

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 787
    :cond_5
    const-string v3, "%c(00%s)%c%s%s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v5, "86"

    aput-object v5, v9, v8

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v9, v7

    aput-object v2, v9, v4

    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPostDialString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 789
    :goto_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 790
    return-object v1
.end method

.method public static getLocation(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 840
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 841
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 843
    return-object v1
.end method

.method public static getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 860
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 861
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 863
    return-object v1
.end method

.method public static getOperator(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 850
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 851
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "operator":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 853
    return-object v1
.end method

.method public static isChineseOperator()Z
    .locals 1

    .line 884
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    return v0
.end method

.method public static isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 870
    invoke-static {p0}, Lmiui/telephony/phonenumber/CountryCodeConverter;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 2
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 298
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->isChinaEnvironment()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;ZLjava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Z)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 1
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "isChinaEnvironment"    # Z

    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;ZLjava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;ZLjava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 5
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "isChinaEnvironment"    # Z
    .param p2, "iddCode"    # Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    monitor-enter v1

    .line 314
    :try_start_0
    sget v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 315
    new-instance v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    invoke-direct {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 317
    :cond_0
    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sget v3, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    aget-object v2, v2, v3

    move-object v0, v2

    .line 318
    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sget v3, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 320
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-direct {v0, p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->attach(Ljava/lang/CharSequence;)V

    .line 323
    iput-boolean p1, v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    .line 324
    iput-object p2, v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    .line 325
    return-object v0

    .line 320
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static replaceCdmaInternationalAccessCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .line 816
    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "86"

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "leftNumber":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    return-object v0

    .line 823
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 824
    return-object v0

    .line 826
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 829
    .end local v0    # "leftNumber":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_3

    .line 830
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIddCodes()Ljava/util/List;

    move-result-object v0

    .line 831
    .local v0, "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 833
    .end local v0    # "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object p0
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 7

    .line 412
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 413
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 414
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/phonenumber/Prefix;->isSmsPrefix(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    const/4 v0, 0x1

    .line 416
    .local v0, "areacodeExists":Z
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 419
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 421
    const/4 v0, 0x1

    .line 422
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 426
    :cond_0
    if-eqz v0, :cond_2

    .line 427
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 428
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    goto :goto_0

    .line 431
    :cond_1
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 436
    .end local v0    # "areacodeExists":Z
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 8

    .line 364
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 365
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    .line 366
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIddCodes()Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    .local v2, "iddCode":Ljava/lang/String;
    const-string v3, "+"

    .line 369
    .local v3, "idd":Ljava/lang/String;
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v7, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 370
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    move-object v3, v2

    goto :goto_1

    .line 373
    :cond_0
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mNetIddCode:Ljava/lang/String;

    .line 375
    :goto_1
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v3, v7, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->areEqual(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    const/4 v3, 0x0

    .line 380
    :cond_1
    if-eqz v3, :cond_3

    .line 381
    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 383
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lmiui/telephony/phonenumber/CountryCodeConverter;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 384
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 386
    goto :goto_3

    .line 388
    :cond_2
    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    goto :goto_2

    .line 391
    :cond_3
    const-string v4, ""

    iput-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 393
    .end local v2    # "iddCode":Ljava/lang/String;
    .end local v3    # "idd":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 395
    .end local v0    # "iddCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveNumber()Ljava/lang/String;
    .locals 3

    .line 440
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-le v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_0

    .line 445
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 448
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public getFakeNumberToQueryLocation()Ljava/lang/String;
    .locals 8

    .line 455
    const-string v0, ""

    .line 456
    .local v0, "queryNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "effectiveNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 460
    .local v2, "effectiveNumberlength":I
    const/4 v3, 0x7

    .line 461
    .local v3, "minLength":I
    const/16 v4, 0xb

    .line 463
    .local v4, "fakeNumberLength":I
    const-string v5, "141"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1064"

    .line 464
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    :cond_0
    const/16 v3, 0x9

    .line 466
    const/16 v4, 0xd

    .line 468
    :cond_1
    if-lt v2, v3, :cond_3

    if-ge v2, v4, :cond_3

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 470
    .local v5, "sb":Ljava/lang/StringBuilder;
    move v6, v2

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 471
    const/16 v7, 0x39

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 473
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 475
    :cond_3
    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .end local v2    # "effectiveNumberlength":I
    .end local v3    # "minLength":I
    .end local v4    # "fakeNumberLength":I
    :goto_1
    goto :goto_2

    .line 479
    :cond_4
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_2
    return-object v0
.end method

.method public getLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 669
    const-string v0, ""

    .line 670
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 671
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 672
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 675
    :cond_0
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v3

    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int v7, v2, v4

    .line 677
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 675
    :goto_1
    move v8, v2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 673
    :cond_3
    :goto_2
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mOriginal:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 679
    :goto_3
    return-object v0
.end method

.method public getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 702
    const-string v0, ""

    .line 703
    .local v0, "areaCode":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getNormalizedNumber(ZZ)Ljava/lang/String;
    .locals 5
    .param p1, "withCountryCode"    # Z
    .param p2, "withPostDialString"    # Z

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-nez v1, :cond_3

    .line 635
    if-eqz p1, :cond_0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 636
    .local v1, "start":I
    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 637
    .local v2, "end":I
    :goto_1
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 638
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_2
    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 643
    if-eqz p2, :cond_4

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_2

    :cond_4
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 644
    .local v1, "end":I
    :goto_2
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 645
    if-eqz p1, :cond_5

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .end local v1    # "end":I
    :cond_5
    goto :goto_4

    .line 650
    :cond_6
    if-eqz p2, :cond_7

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_3

    :cond_7
    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    .line 651
    .restart local v1    # "end":I
    :goto_3
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v2

    if-nez v2, :cond_9

    .line 652
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 653
    if-eqz p1, :cond_8

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 656
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 659
    :cond_9
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 662
    .end local v1    # "end":I
    :goto_4
    return-object v0
.end method

.method public getNumberWithoutPrefix(Z)Ljava/lang/String;
    .locals 3
    .param p1, "withPostDialString"    # Z

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "start":I
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 619
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 688
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    invoke-static {}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getInstance()Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;

    move-result-object v2

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int v6, v1, v3

    .line 693
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v7

    .line 692
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/telephony/phonenumber/ChineseTelocation;->getOperator(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 690
    :cond_1
    :goto_0
    const-string v1, ""

    .line 692
    .local v1, "operator":Ljava/lang/String;
    :goto_1
    nop

    .line 695
    return-object v1
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 2

    .line 488
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    if-le v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    .line 495
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    .line 350
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 351
    iget-boolean v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v2, v3

    .line 353
    invoke-static {v0, v1, v2}, Lmiui/telephony/phonenumber/Prefix;->parse(Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 354
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    iget-object v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    .line 357
    :cond_0
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isChineseNumber()Z
    .locals 3

    .line 402
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 405
    :cond_0
    iget-boolean v1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mIsChinaEnvironment:Z

    if-nez v1, :cond_2

    const-string v1, "86"

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 403
    :goto_1
    return v1
.end method

.method public isNormalMobileNumber()Z
    .locals 9

    .line 502
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 503
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 504
    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v0, v2

    .line 505
    .local v0, "length":I
    const/16 v2, 0xb

    const/16 v3, 0x31

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-ne v0, v2, :cond_4

    .line 506
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 507
    .local v2, "c":C
    if-ne v2, v3, :cond_3

    .line 508
    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 509
    packed-switch v2, :pswitch_data_0

    .line 532
    return v1

    .line 523
    :pswitch_0
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-eq v3, v4, :cond_0

    move v1, v5

    nop

    :cond_0
    return v1

    .line 529
    :pswitch_1
    return v5

    .line 512
    :pswitch_2
    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x38

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v8, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v8, v8, 0x3

    .line 513
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2

    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v8, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v8, v8, 0x4

    .line 514
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2

    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v8, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v8, v8, 0x5

    .line 515
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x6

    .line 516
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v6, 0x33

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x7

    .line 517
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x8

    .line 518
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x9

    .line 519
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0xa

    .line 520
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    move v1, v5

    :goto_1
    return v1

    .line 535
    .end local v2    # "c":C
    :cond_3
    goto :goto_3

    :cond_4
    const/16 v2, 0xd

    if-ne v0, v2, :cond_9

    .line 537
    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 538
    .restart local v2    # "c":C
    if-ne v2, v3, :cond_9

    .line 539
    iget-object v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v7, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 540
    const/16 v6, 0x34

    if-eq v2, v4, :cond_7

    if-eq v2, v6, :cond_5

    .end local v0    # "length":I
    .end local v2    # "c":C
    goto :goto_3

    .line 545
    .restart local v0    # "length":I
    .restart local v2    # "c":C
    :cond_5
    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v6, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_6

    move v1, v5

    nop

    :cond_6
    return v1

    .line 542
    :cond_7
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x36

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x3

    .line 543
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_8

    .line 542
    move v1, v5

    goto :goto_2

    .line 543
    :cond_8
    nop

    .line 542
    :goto_2
    return v1

    .line 550
    .end local v0    # "length":I
    .end local v2    # "c":C
    :cond_9
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isServiceNumber()Z
    .locals 12

    .line 557
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v0, v2

    const/4 v2, 0x2

    if-le v0, v2, :cond_8

    .line 559
    iget-object v0, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 560
    .local v0, "c":C
    const/16 v3, 0xa

    const/4 v4, 0x7

    const/16 v5, 0x39

    const/16 v6, 0x31

    const/16 v7, 0x38

    const/16 v8, 0x30

    const/4 v9, 0x1

    if-ne v0, v6, :cond_2

    .line 561
    iget-object v10, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v11, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 562
    packed-switch v0, :pswitch_data_0

    .line 585
    :pswitch_0
    return v1

    .line 583
    :pswitch_1
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    move v1, v9

    nop

    :cond_0
    return v1

    .line 571
    :pswitch_2
    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mPostDialStringStart:I

    iget v10, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v5, v10

    const/16 v10, 0xb

    if-lt v5, v10, :cond_1

    iget-object v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v10, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v10, v2

    .line 572
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v5, v5, 0x3

    .line 573
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v5, v5, 0x4

    .line 574
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v5, v5, 0x5

    .line 575
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v5, v5, 0x6

    .line 576
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v5, 0x33

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v5, v4

    .line 577
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x8

    .line 578
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/lit8 v4, v4, 0x9

    .line 579
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v4, v3

    .line 580
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_1

    .line 571
    move v1, v9

    goto :goto_0

    .line 580
    :cond_1
    nop

    .line 571
    :goto_0
    return v1

    .line 568
    :pswitch_3
    return v9

    .line 587
    :cond_2
    if-ne v0, v5, :cond_3

    .line 589
    return v9

    .line 590
    :cond_3
    const/16 v5, 0x32

    if-lt v0, v5, :cond_8

    if-gt v0, v7, :cond_8

    .line 596
    const/16 v5, 0x34

    if-eq v0, v5, :cond_6

    if-ne v0, v7, :cond_4

    goto :goto_2

    .line 602
    :cond_4
    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    iget v5, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    add-int/2addr v5, v2

    .line 603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_5

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget v3, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_5

    .line 602
    move v1, v9

    goto :goto_1

    .line 604
    :cond_5
    nop

    .line 602
    :goto_1
    return v1

    .line 597
    :cond_6
    :goto_2
    iget v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumberStart:I

    if-nez v4, :cond_7

    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_7

    iget-object v4, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_7

    iget-object v2, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mBuffer:Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 597
    move v1, v9

    goto :goto_3

    .line 600
    :cond_7
    nop

    .line 597
    :goto_3
    return v1

    .line 608
    .end local v0    # "c":C
    :cond_8
    return v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isSmsPrefix()Z
    .locals 1

    .line 718
    invoke-virtual {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/phonenumber/Prefix;->isSmsPrefix(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .line 329
    invoke-direct {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->clear()V

    .line 330
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    monitor-enter v0

    .line 331
    :try_start_0
    sget v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    sget-object v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 332
    sget-object v1, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPool:[Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    sget v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->sPoolIndex:I

    aput-object p0, v1, v2

    .line 334
    :cond_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultCountryCode"    # Ljava/lang/String;

    .line 343
    iput-object p1, p0, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->mDefaultCountryCode:Ljava/lang/String;

    .line 344
    return-void
.end method
