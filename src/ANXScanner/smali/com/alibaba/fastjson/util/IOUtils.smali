.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0xa1

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x1

    .line 46
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    .line 48
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 50
    const/16 v3, 0x10

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    .line 53
    const/16 v3, 0x100

    new-array v3, v3, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 55
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 56
    const/16 v3, 0x41

    if-lt v0, v3, :cond_1

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_1

    .line 57
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    goto :goto_0

    .line 58
    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 59
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 60
    :cond_2
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 61
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 66
    :cond_3
    const/16 v3, 0x100

    new-array v3, v3, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 69
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 70
    const/16 v3, 0x41

    if-lt v0, v3, :cond_5

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_5

    .line 71
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    .line 69
    :cond_4
    :goto_3
    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    goto :goto_2

    .line 72
    :cond_5
    const/16 v3, 0x61

    if-lt v0, v3, :cond_6

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_6

    .line 73
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 74
    :cond_6
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_7

    .line 75
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 76
    :cond_7
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-gt v0, v3, :cond_4

    .line 77
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v4, v3, v0

    goto :goto_3

    .line 84
    :cond_8
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/util/IOUtils;->loadPropertiesFromFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_4
    new-array v3, v8, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 123
    new-array v3, v8, [B

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 124
    new-array v3, v8, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    .line 125
    new-array v3, v8, [Z

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    .line 127
    const/16 v3, 0x5d

    new-array v3, v3, [C

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 129
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v5

    .line 130
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v4

    .line 131
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x2

    aput-byte v7, v3, v6

    .line 132
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x3

    aput-byte v7, v3, v6

    .line 133
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v7

    .line 134
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x5

    aput-byte v7, v3, v6

    .line 135
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x6

    aput-byte v7, v3, v6

    .line 136
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v6, 0x7

    aput-byte v7, v3, v6

    .line 137
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x8

    aput-byte v4, v3, v6

    .line 138
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x9

    aput-byte v4, v3, v6

    .line 139
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v3, v9

    .line 140
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0xb

    aput-byte v7, v3, v6

    .line 141
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0xc

    aput-byte v4, v3, v6

    .line 142
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0xd

    aput-byte v4, v3, v6

    .line 143
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x22

    aput-byte v4, v3, v6

    .line 144
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v6, 0x5c

    aput-byte v4, v3, v6

    .line 146
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v5

    .line 147
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v4

    .line 148
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x2

    aput-byte v7, v3, v6

    .line 149
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x3

    aput-byte v7, v3, v6

    .line 150
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v7

    .line 151
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x5

    aput-byte v7, v3, v6

    .line 152
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x6

    aput-byte v7, v3, v6

    .line 153
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v6, 0x7

    aput-byte v7, v3, v6

    .line 154
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x8

    aput-byte v4, v3, v6

    .line 155
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x9

    aput-byte v4, v3, v6

    .line 156
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v3, v9

    .line 157
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0xb

    aput-byte v7, v3, v6

    .line 158
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0xc

    aput-byte v4, v3, v6

    .line 159
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0xd

    aput-byte v4, v3, v6

    .line 160
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x5c

    aput-byte v4, v3, v6

    .line 161
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v6, 0x27

    aput-byte v4, v3, v6

    .line 163
    const/16 v1, 0xe

    .local v1, "i":I
    :goto_5
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_9

    .line 164
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v1

    .line 165
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 168
    :cond_9
    const/16 v1, 0x7f

    :goto_6
    const/16 v3, 0xa0

    if-ge v1, v3, :cond_a

    .line 169
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v3, v1

    .line 170
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v3, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 173
    :cond_a
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v8, :cond_d

    .line 174
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_b

    move v3, v4

    :goto_8
    aput-boolean v3, v6, v1

    .line 175
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_c

    move v3, v4

    :goto_9
    aput-boolean v3, v6, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    move v3, v5

    .line 174
    goto :goto_8

    :cond_c
    move v3, v5

    .line 175
    goto :goto_9

    .line 178
    :cond_d
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v6, 0x30

    aput-char v6, v3, v5

    .line 179
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v6, 0x31

    aput-char v6, v3, v4

    .line 180
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x2

    const/16 v6, 0x32

    aput-char v6, v3, v4

    .line 181
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x3

    const/16 v6, 0x33

    aput-char v6, v3, v4

    .line 182
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x34

    aput-char v4, v3, v7

    .line 183
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x5

    const/16 v6, 0x35

    aput-char v6, v3, v4

    .line 184
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x6

    const/16 v6, 0x36

    aput-char v6, v3, v4

    .line 185
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v4, 0x7

    const/16 v6, 0x37

    aput-char v6, v3, v4

    .line 186
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x8

    const/16 v6, 0x62

    aput-char v6, v3, v4

    .line 187
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x9

    const/16 v6, 0x74

    aput-char v6, v3, v4

    .line 188
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x6e

    aput-char v4, v3, v9

    .line 189
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0xb

    const/16 v6, 0x76

    aput-char v6, v3, v4

    .line 190
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0xc

    const/16 v6, 0x66

    aput-char v6, v3, v4

    .line 191
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0xd

    const/16 v6, 0x72

    aput-char v6, v3, v4

    .line 192
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x22

    const/16 v6, 0x22

    aput-char v6, v3, v4

    .line 193
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x27

    const/16 v6, 0x27

    aput-char v6, v3, v4

    .line 194
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x2f

    const/16 v6, 0x2f

    aput-char v6, v3, v4

    .line 195
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v4, 0x5c

    const/16 v6, 0x5c

    aput-char v6, v3, v4

    .line 198
    const/16 v3, 0x60

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    .line 337
    const/16 v3, 0x24

    new-array v3, v3, [C

    fill-array-data v3, :array_2

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 340
    const/16 v3, 0x64

    new-array v3, v3, [C

    fill-array-data v3, :array_3

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 346
    const/16 v3, 0x64

    new-array v3, v3, [C

    fill-array-data v3, :array_4

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 352
    new-array v3, v9, [I

    fill-array-data v3, :array_5

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    .line 391
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 392
    const/16 v3, 0x100

    new-array v3, v3, [I

    sput-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 394
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 395
    const/4 v1, 0x0

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v2, v3

    .local v2, "iS":I
    :goto_a
    if-ge v1, v2, :cond_e

    .line 396
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v4, v4, v1

    aput v1, v3, v4

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 397
    :cond_e
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v4, 0x3d

    aput v5, v3, v4

    .line 398
    return-void

    .line 85
    .end local v1    # "i":I
    .end local v2    # "iS":I
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 50
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 198
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    .line 337
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 340
    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 346
    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .line 352
    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "x"    # Ljava/io/Closeable;

    .prologue
    .line 206
    if-eqz p0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 5
    .param p0, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p1, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "charByte"    # Ljava/nio/CharBuffer;

    .prologue
    .line 365
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 367
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 371
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_1
    return-void

    .line 376
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utf8 decode error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 21
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 534
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 535
    .local v16, "sLen":I
    if-nez v16, :cond_0

    .line 536
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 586
    :goto_0
    return-object v6

    .line 539
    :cond_0
    const/4 v14, 0x0

    .local v14, "sIx":I
    add-int/lit8 v7, v16, -0x1

    .line 542
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 543
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 546
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 547
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 550
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 551
    .local v12, "pad":I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 552
    .local v2, "cCnt":I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 554
    .local v17, "sepCnt":I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 555
    .local v11, "len":I
    new-array v6, v11, [B

    .line 558
    .local v6, "dArr":[B
    const/4 v4, 0x0

    .line 559
    .local v4, "d":I
    const/4 v3, 0x0

    .local v3, "cc":I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, "eLen":I
    move v5, v4

    .end local v4    # "d":I
    .local v5, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 561
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .line 562
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 565
    .local v9, "i":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 566
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 567
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 570
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 571
    add-int/lit8 v14, v15, 0x2

    .line 572
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    move v15, v14

    .line 574
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 550
    .end local v2    # "cCnt":I
    .end local v3    # "cc":I
    .end local v5    # "d":I
    .end local v6    # "dArr":[B
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v17    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 552
    .restart local v2    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 576
    .end local v14    # "sIx":I
    .restart local v3    # "cc":I
    .restart local v5    # "d":I
    .restart local v6    # "dArr":[B
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v17    # "sepCnt":I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 578
    const/4 v9, 0x0

    .line 579
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 580
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 579
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 582
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 583
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "d":I
    .restart local v4    # "d":I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 582
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4    # "d":I
    .restart local v5    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v4, v5

    .end local v5    # "d":I
    .restart local v4    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .locals 20
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 468
    if-nez p2, :cond_0

    .line 469
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 518
    :goto_0
    return-object v2

    .line 472
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 475
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 476
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 479
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 480
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 483
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 484
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 485
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 487
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 488
    .local v11, "len":I
    new-array v2, v11, [B

    .line 491
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 492
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 494
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 497
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 498
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 499
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 502
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 503
    add-int/lit8 v14, v15, 0x2

    .line 504
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 506
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 483
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 485
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 508
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 510
    const/4 v9, 0x0

    .line 511
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 512
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 511
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 514
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 515
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 514
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeBase64([CII)[B
    .locals 20
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 413
    if-nez p2, :cond_0

    .line 414
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 463
    :goto_0
    return-object v2

    .line 417
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 420
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v18, p0, v14

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 421
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 424
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v18, p0, v7

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 425
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 428
    :cond_2
    aget-char v17, p0, v7

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    aget-char v17, p0, v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 429
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 430
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    aget-char v17, p0, v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 432
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 433
    .local v11, "len":I
    new-array v2, v11, [B

    .line 436
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 437
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 439
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v18, p0, v15

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-char v19, p0, v14

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v19, p0, v15

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    aget-char v19, p0, v14

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 442
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 443
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 444
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 447
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 448
    add-int/lit8 v14, v15, 0x2

    .line 449
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 451
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 428
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 430
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    .line 453
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 455
    const/4 v9, 0x0

    .line 456
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 457
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    aget-char v18, p0, v15

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 456
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 459
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 460
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 459
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method public static decodeUTF8([BII[C)I
    .locals 15
    .param p0, "sa"    # [B
    .param p1, "sp"    # I
    .param p2, "len"    # I
    .param p3, "da"    # [C

    .prologue
    .line 653
    add-int v10, p1, p2

    .line 654
    .local v10, "sl":I
    const/4 v7, 0x0

    .line 655
    .local v7, "dp":I
    move-object/from16 v0, p3

    array-length v13, v0

    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "dlASCII":I
    move v8, v7

    .end local v7    # "dp":I
    .local v8, "dp":I
    move/from16 v11, p1

    .line 658
    .end local p1    # "sp":I
    .local v11, "sp":I
    :goto_0
    if-ge v8, v6, :cond_1

    aget-byte v13, p0, v11

    if-ltz v13, :cond_1

    .line 659
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    add-int/lit8 p1, v11, 0x1

    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v13, p0, v11

    int-to-char v13, v13

    aput-char v13, p3, v8

    move v8, v7

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    move/from16 v11, p1

    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    goto :goto_0

    .line 673
    .local v1, "b1":I
    .local v2, "b2":I
    :cond_0
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    shl-int/lit8 v13, v1, 0x6

    xor-int/2addr v13, v2

    xor-int/lit16 v13, v13, 0xf80

    int-to-char v13, v13

    aput-char v13, p3, v8

    move v8, v7

    .line 661
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    :cond_1
    :goto_1
    if-ge v11, v10, :cond_10

    .line 662
    add-int/lit8 p1, v11, 0x1

    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v1, p0, v11

    .line 663
    .restart local v1    # "b1":I
    if-ltz v1, :cond_2

    .line 665
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    int-to-char v13, v1

    aput-char v13, p3, v8

    move v8, v7

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    move/from16 v11, p1

    .line 735
    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    goto :goto_1

    .line 666
    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    :cond_2
    shr-int/lit8 v13, v1, 0x5

    const/4 v14, -0x2

    if-ne v13, v14, :cond_4

    and-int/lit8 v13, v1, 0x1e

    if-eqz v13, :cond_4

    .line 668
    move/from16 v0, p1

    if-ge v0, v10, :cond_3

    .line 669
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    aget-byte v2, p0, p1

    .line 670
    .restart local v2    # "b2":I
    and-int/lit16 v13, v2, 0xc0

    const/16 v14, 0x80

    if-eq v13, v14, :cond_0

    .line 671
    const/4 v8, -0x1

    move/from16 p1, v11

    .line 736
    .end local v1    # "b1":I
    .end local v2    # "b2":I
    .end local v8    # "dp":I
    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    :goto_2
    return v8

    .line 679
    .restart local v1    # "b1":I
    .restart local v8    # "dp":I
    :cond_3
    const/4 v8, -0x1

    goto :goto_2

    .line 680
    :cond_4
    shr-int/lit8 v13, v1, 0x4

    const/4 v14, -0x2

    if-ne v13, v14, :cond_b

    .line 682
    add-int/lit8 v13, p1, 0x1

    if-ge v13, v10, :cond_a

    .line 683
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    aget-byte v2, p0, p1

    .line 684
    .restart local v2    # "b2":I
    add-int/lit8 p1, v11, 0x1

    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v3, p0, v11

    .line 685
    .local v3, "b3":I
    const/16 v13, -0x20

    if-ne v1, v13, :cond_5

    and-int/lit16 v13, v2, 0xe0

    const/16 v14, 0x80

    if-eq v13, v14, :cond_6

    :cond_5
    and-int/lit16 v13, v2, 0xc0

    const/16 v14, 0x80

    if-ne v13, v14, :cond_6

    and-int/lit16 v13, v3, 0xc0

    const/16 v14, 0x80

    if-eq v13, v14, :cond_7

    .line 688
    :cond_6
    const/4 v8, -0x1

    goto :goto_2

    .line 690
    :cond_7
    shl-int/lit8 v13, v1, 0xc

    shl-int/lit8 v14, v2, 0x6

    xor-int/2addr v13, v14

    const v14, -0x1e080

    xor-int/2addr v14, v3

    xor-int/2addr v13, v14

    int-to-char v5, v13

    .line 696
    .local v5, "c":C
    const v13, 0xd800

    if-lt v5, v13, :cond_8

    const v13, 0xe000

    if-ge v5, v13, :cond_8

    const/4 v9, 0x1

    .line 697
    .local v9, "isSurrogate":Z
    :goto_3
    if-eqz v9, :cond_9

    .line 698
    const/4 v8, -0x1

    goto :goto_2

    .line 696
    .end local v9    # "isSurrogate":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 700
    .restart local v9    # "isSurrogate":Z
    :cond_9
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    aput-char v5, p3, v8

    move v8, v7

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    move/from16 v11, p1

    .line 703
    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    goto :goto_1

    .line 705
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v5    # "c":C
    .end local v9    # "isSurrogate":Z
    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    :cond_a
    const/4 v8, -0x1

    goto :goto_2

    .line 706
    :cond_b
    shr-int/lit8 v13, v1, 0x3

    const/4 v14, -0x2

    if-ne v13, v14, :cond_f

    .line 708
    add-int/lit8 v13, p1, 0x2

    if-ge v13, v10, :cond_e

    .line 709
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    aget-byte v2, p0, p1

    .line 710
    .restart local v2    # "b2":I
    add-int/lit8 p1, v11, 0x1

    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    aget-byte v3, p0, v11

    .line 711
    .restart local v3    # "b3":I
    add-int/lit8 v11, p1, 0x1

    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    aget-byte v4, p0, p1

    .line 712
    .local v4, "b4":I
    shl-int/lit8 v13, v1, 0x12

    shl-int/lit8 v14, v2, 0xc

    xor-int/2addr v13, v14

    shl-int/lit8 v14, v3, 0x6

    xor-int/2addr v13, v14

    const v14, 0x381f80

    xor-int/2addr v14, v4

    xor-int v12, v13, v14

    .line 720
    .local v12, "uc":I
    and-int/lit16 v13, v2, 0xc0

    const/16 v14, 0x80

    if-ne v13, v14, :cond_c

    and-int/lit16 v13, v3, 0xc0

    const/16 v14, 0x80

    if-ne v13, v14, :cond_c

    and-int/lit16 v13, v4, 0xc0

    const/16 v14, 0x80

    if-ne v13, v14, :cond_c

    .line 723
    invoke-static {v12}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v13

    if-nez v13, :cond_d

    .line 724
    :cond_c
    const/4 v8, -0x1

    move/from16 p1, v11

    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    goto/16 :goto_2

    .line 726
    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    :cond_d
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "dp":I
    .restart local v7    # "dp":I
    ushr-int/lit8 v13, v12, 0xa

    const v14, 0xd7c0

    add-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, p3, v8

    .line 727
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "dp":I
    .restart local v8    # "dp":I
    and-int/lit16 v13, v12, 0x3ff

    const v14, 0xdc00

    add-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, p3, v7

    goto/16 :goto_1

    .line 731
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v4    # "b4":I
    .end local v11    # "sp":I
    .end local v12    # "uc":I
    .restart local p1    # "sp":I
    :cond_e
    const/4 v8, -0x1

    goto/16 :goto_2

    .line 733
    :cond_f
    const/4 v8, -0x1

    goto/16 :goto_2

    .end local v1    # "b1":I
    .end local p1    # "sp":I
    .restart local v11    # "sp":I
    :cond_10
    move/from16 p1, v11

    .line 736
    .end local v11    # "sp":I
    .restart local p1    # "sp":I
    goto/16 :goto_2
.end method

.method public static encodeUTF8([CII[B)I
    .locals 14
    .param p0, "chars"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 590
    add-int v8, p1, p2

    .line 591
    .local v8, "sl":I
    const/4 v4, 0x0

    .line 592
    .local v4, "dp":I
    move-object/from16 v0, p3

    array-length v10, v0

    move/from16 v0, p2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v3, v4, v10

    .local v3, "dlASCII":I
    move v5, v4

    .end local v4    # "dp":I
    .local v5, "dp":I
    move v7, p1

    .line 595
    .end local p1    # "offset":I
    .local v7, "offset":I
    :goto_0
    if-ge v5, v3, :cond_0

    aget-char v10, p0, v7

    const/16 v11, 0x80

    if-ge v10, v11, :cond_0

    .line 596
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "offset":I
    .restart local p1    # "offset":I
    aget-char v10, p0, v7

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    move v5, v4

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    move v7, p1

    .end local p1    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_0

    .line 599
    :cond_0
    :goto_1
    if-ge v7, v8, :cond_9

    .line 600
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "offset":I
    .restart local p1    # "offset":I
    aget-char v1, p0, v7

    .line 601
    .local v1, "c":C
    const/16 v10, 0x80

    if-ge v1, v10, :cond_1

    .line 603
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v10, v1

    aput-byte v10, p3, v5

    :goto_2
    move v5, v4

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    move v7, p1

    .line 645
    .end local p1    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_1

    .line 604
    .end local v7    # "offset":I
    .restart local p1    # "offset":I
    :cond_1
    const/16 v10, 0x800

    if-ge v1, v10, :cond_2

    .line 606
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 607
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    move v4, v5

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    goto :goto_2

    .line 608
    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    :cond_2
    const v10, 0xd800

    if-lt v1, v10, :cond_8

    const v10, 0xe000

    if-ge v1, v10, :cond_8

    .line 610
    add-int/lit8 v6, p1, -0x1

    .line 611
    .local v6, "ip":I
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 612
    sub-int v10, v8, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    .line 613
    const/4 v9, -0x1

    .line 630
    .local v9, "uc":I
    :goto_3
    if-gez v9, :cond_7

    .line 631
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    const/16 v10, 0x3f

    aput-byte v10, p3, v5

    goto :goto_2

    .line 615
    .end local v4    # "dp":I
    .end local v9    # "uc":I
    .restart local v5    # "dp":I
    :cond_3
    add-int/lit8 v10, v6, 0x1

    aget-char v2, p0, v10

    .line 616
    .local v2, "d":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 617
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    .restart local v9    # "uc":I
    goto :goto_3

    .line 619
    .end local v9    # "uc":I
    :cond_4
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "encodeUTF8 error"

    new-instance v12, Ljava/nio/charset/MalformedInputException;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v10, v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 623
    .end local v2    # "d":C
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 624
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "encodeUTF8 error"

    new-instance v12, Ljava/nio/charset/MalformedInputException;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v10, v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 626
    :cond_6
    move v9, v1

    .restart local v9    # "uc":I
    goto :goto_3

    .line 633
    :cond_7
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v9, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 634
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v10, v9, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 635
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v9, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 636
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    and-int/lit8 v10, v9, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 637
    add-int/lit8 p1, p1, 0x1

    move v4, v5

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    goto/16 :goto_2

    .line 641
    .end local v4    # "dp":I
    .end local v6    # "ip":I
    .end local v9    # "uc":I
    .restart local v5    # "dp":I
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 642
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v4

    .line 643
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "dp":I
    .restart local v4    # "dp":I
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    goto/16 :goto_2

    .line 646
    .end local v1    # "c":C
    .end local v4    # "dp":I
    .end local p1    # "offset":I
    .restart local v5    # "dp":I
    .restart local v7    # "offset":I
    :cond_9
    return v5
.end method

.method public static firstIdentifier(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 384
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChars(BI[C)V
    .locals 7
    .param p0, "b"    # B
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 310
    move v1, p0

    .line 312
    .local v1, "i":I
    move v0, p1

    .line 313
    .local v0, "charPos":I
    const/4 v4, 0x0

    .line 315
    .local v4, "sign":C
    if-gez v1, :cond_0

    .line 316
    const/16 v4, 0x2d

    .line 317
    neg-int v1, v1

    .line 323
    :cond_0
    const v5, 0xcccd

    mul-int/2addr v5, v1

    ushr-int/lit8 v2, v5, 0x13

    .line 324
    .local v2, "q":I
    shl-int/lit8 v5, v2, 0x3

    shl-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    sub-int v3, v1, v5

    .line 325
    .local v3, "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v5, v5, v3

    aput-char v5, p2, v0

    .line 326
    move v1, v2

    .line 327
    if-nez v1, :cond_0

    .line 329
    if-eqz v4, :cond_1

    .line 330
    add-int/lit8 v0, v0, -0x1

    aput-char v4, p2, v0

    .line 332
    :cond_1
    return-void
.end method

.method public static getChars(II[C)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 278
    move v0, p1

    .line 279
    .local v0, "p":I
    const/4 v3, 0x0

    .line 281
    .local v3, "sign":C
    if-gez p0, :cond_0

    .line 282
    const/16 v3, 0x2d

    .line 283
    neg-int p0, p0

    .line 286
    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    if-lt p0, v4, :cond_1

    .line 287
    div-int/lit8 v1, p0, 0x64

    .line 289
    .local v1, "q":I
    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 290
    .local v2, "r":I
    move p0, v1

    .line 291
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 292
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    .line 298
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    .line 299
    .restart local v1    # "q":I
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 300
    .restart local v2    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 301
    move p0, v1

    .line 302
    if-nez p0, :cond_1

    .line 304
    if-eqz v3, :cond_2

    .line 305
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    .line 307
    :cond_2
    return-void
.end method

.method public static getChars(JI[C)V
    .locals 12
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 228
    move v0, p2

    .line 229
    .local v0, "charPos":I
    const/4 v6, 0x0

    .line 231
    .local v6, "sign":C
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    .line 232
    const/16 v6, 0x2d

    .line 233
    neg-long p0, p0

    .line 237
    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, p0, v8

    if-lez v7, :cond_1

    .line 238
    const-wide/16 v8, 0x64

    div-long v2, p0, v8

    .line 240
    .local v2, "q":J
    const/4 v7, 0x6

    shl-long v8, v2, v7

    const/4 v7, 0x5

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    const/4 v7, 0x2

    shl-long v10, v2, v7

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v5, v8

    .line 241
    .local v5, "r":I
    move-wide p0, v2

    .line 242
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 243
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    .line 248
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v1, p0

    .line 249
    .local v1, "i2":I
    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    .line 250
    div-int/lit8 v4, v1, 0x64

    .line 252
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 253
    .restart local v5    # "r":I
    move v1, v4

    .line 254
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 255
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    .line 261
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 262
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 263
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 264
    move v1, v4

    .line 265
    if-nez v1, :cond_2

    .line 267
    if-eqz v6, :cond_3

    .line 268
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 270
    :cond_3
    return-void
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 94
    .restart local v0    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isIdent(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 388
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 762
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v3

    .line 766
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 767
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 768
    .local v0, "ch":C
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 766
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 773
    .end local v0    # "ch":C
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static loadPropertiesFromFile()V
    .locals 2

    .prologue
    .line 101
    new-instance v1, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v1}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 112
    .local v0, "imputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static readAll(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x800

    :try_start_0
    new-array v1, v4, [C

    .line 748
    .local v1, "chars":[C
    :goto_0
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 749
    .local v3, "len":I
    if-gez v3, :cond_0

    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 752
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 754
    .end local v1    # "chars":[C
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 755
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "read string from reader error"

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 358
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 6
    .param p0, "x"    # J

    .prologue
    const/16 v1, 0x13

    .line 217
    const-wide/16 v2, 0xa

    .line 218
    .local v2, "p":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 219
    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    .line 222
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 220
    .restart local v0    # "i":I
    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 222
    goto :goto_1
.end method
