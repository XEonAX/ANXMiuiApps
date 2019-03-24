.class public Lmiui/date/Calendar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lmiui/date/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final AD:I = 0x1

.field public static final AFTERNOON:I = 0x4

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x11

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final AUTUMN_BEGINS:I = 0xf

.field public static final AUTUMN_EQUINOX:I = 0x12

.field public static final BC:I = 0x0

.field public static final CHICKEN:I = 0x9

.field public static final CHINESE_ERA_DAY:I = 0xb

.field public static final CHINESE_ERA_HOUR:I = 0x13

.field public static final CHINESE_ERA_MONTH:I = 0x7

.field public static final CHINESE_ERA_YEAR:I = 0x4

.field public static final CHINESE_MONTH:I = 0x6

.field public static final CHINESE_MONTH_IS_LEAP:I = 0x8

.field public static final CHINESE_YEAR:I = 0x2

.field private static final CHINESE_YEAR_INFO:[I

.field public static final CHINESE_YEAR_SYMBOL_ANIMAL:I = 0x3

.field public static final CLEAR_AND_BRIGHT:I = 0x7

.field public static final COLD_DEWS:I = 0x13

.field public static final COW:I = 0x1

.field private static final DAYS_19000131_TO_19700101:I = -0x63c1

.field private static final DAYS_IN_MONTH:[B

.field private static final DAYS_IN_YEAR:[I

.field private static final DAY_CHINESE_YEAR_FROM_19000101:[I

.field public static final DAY_OF_CHINESE_MONTH:I = 0xa

.field public static final DAY_OF_CHINESE_YEAR:I = 0xd

.field public static final DAY_OF_MONTH:I = 0x9

.field public static final DAY_OF_WEEK:I = 0xe

.field public static final DAY_OF_YEAR:I = 0xc

.field public static final DECEMBER:I = 0xb

.field public static final DETAIL_AM_PM:I = 0x10

.field public static final DOG:I = 0xa

.field public static final DRAGON:I = 0x4

.field public static final DST_OFFSET:I = 0x18

.field public static final EARLY_MORNING:I = 0x1

.field public static final ERA:I = 0x0

.field public static final EVENING:I = 0x5

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x19

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field private static final FORMAT_CHARACTERS:[I

.field public static final FRIDAY:I = 0x6

.field public static final GRAIN_BUDS:I = 0xa

.field public static final GRAIN_IN_EAR:I = 0xb

.field public static final GRAIN_RAIN:I = 0x8

.field public static final GREAT_COLD:I = 0x2

.field public static final GREAT_HEAT:I = 0xe

.field public static final HEAVY_SNOW:I = 0x17

.field public static final HOAR_FROST_FALLS:I = 0x14

.field public static final HORSE:I = 0x6

.field public static final HOUR:I = 0x12

.field public static final INSECTS_AWAKEN:I = 0x5

.field public static final IS_CHINESE_LEAP_MONTH:I = 0x1

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LIGHT_SNOW:I = 0x16

.field public static final MARCH:I = 0x2

.field private static final MAX_CHINESE_CALENDAR_MILLISECOND:J = 0x3c314a71400L

.field private static final MAX_CHINESE_YEAR:I = 0x834

.field public static final MAY:I = 0x4

.field public static final MIDNIGHT:I = 0x0

.field public static final MILLISECOND:I = 0x16

.field public static final MILLISECOND_OF_DAY:I = 0x5265c00

.field public static final MILLISECOND_OF_HOUR:I = 0x36ee80

.field public static final MILLISECOND_OF_MINUTE:I = 0xea60

.field public static final MILLISECOND_OF_SECOND:I = 0x3e8

.field public static final MINUTE:I = 0x14

.field private static final MIN_CHINESE_CALENDAR_MILLISECOND:J = -0x201b77f5c00L

.field private static final MIN_CHINESE_YEAR:I = 0x76c

.field public static final MONDAY:I = 0x2

.field public static final MONKEY:I = 0x8

.field public static final MONTH:I = 0x5

.field public static final MORNING:I = 0x2

.field public static final MOUSE:I = 0x0

.field public static final NIGHT:I = 0x6

.field public static final NOON:I = 0x3

.field public static final NOT_CHINESE_LEAP_MONTH:I = 0x0

.field public static final NOVEMBER:I = 0xa

.field public static final NO_SOLAR_TERM:I = 0x0

.field public static final OCTOBER:I = 0x9

.field public static final PIG:I = 0xb

.field public static final PM:I = 0x1

.field public static final RABBIT:I = 0x3

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0x15

.field public static final SEPTEMBER:I = 0x8

.field public static final SHEEP:I = 0x7

.field public static final SLIGHT_COLD:I = 0x1

.field public static final SLIGHT_HEAT:I = 0xd

.field public static final SNAKE:I = 0x5

.field public static final SOLAR_TERM:I = 0xf

.field private static final SOLAR_TERM_BASE:[I

.field private static final SOLAR_TERM_INDEX:[B

.field private static final SOLAR_TERM_OS:[B

.field public static final SPRING_BEGINS:I = 0x3

.field public static final STOPPING_THE_HEAT:I = 0x10

.field public static final SUMMER_BEGINS:I = 0x9

.field public static final SUMMER_SOLSTICE:I = 0xc

.field public static final SUNDAY:I = 0x1

.field public static final THE_RAINS:I = 0x4

.field public static final THURSDAY:I = 0x5

.field public static final TIGER:I = 0x2

.field public static final TUESDAY:I = 0x3

.field public static final VERNAL_EQUINOX:I = 0x6

.field public static final WEDNESDAY:I = 0x4

.field public static final WHITE_DEWS:I = 0x11

.field public static final WINTER_BEGINS:I = 0x15

.field public static final WINTER_SOLSTICE:I = 0x18

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0x17

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient changeYear:I

.field private transient currentYearSkew:I

.field private transient gregorianCutover:J

.field private transient julianError:I

.field private transient julianSkew:I

.field private transient lastYearSkew:I

.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 97
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    .line 325
    const-string v1, "ERA"

    const-string v2, "YEAR"

    const-string v3, "CHINESE_YEAR"

    const-string v4, "CHINESE_YEAR_SYMBOL_ANIMAL"

    const-string v5, "CHINESE_ERA_YEAR"

    const-string v6, "MONTH"

    const-string v7, "CHINESE_MONTH"

    const-string v8, "CHINESE_ERA_MONTH"

    const-string v9, "CHINESE_MONTH_IS_LEAP"

    const-string v10, "DAY_OF_MONTH"

    const-string v11, "DAY_OF_CHINESE_MONTH"

    const-string v12, "CHINESE_ERA_DAY"

    const-string v13, "DAY_OF_YEAR"

    const-string v14, "DAY_OF_CHINESE_YEAR"

    const-string v15, "DAY_OF_WEEK"

    const-string v16, "SOLAR_TERM"

    const-string v17, "DETAIL_AM_PM"

    const-string v18, "AM_PM"

    const-string v19, "HOUR"

    const-string v20, "CHINESE_ERA_HOUR"

    const-string v21, "MINUTE"

    const-string v22, "SECOND"

    const-string v23, "MILLISECOND"

    const-string v24, "ZONE_OFFSET"

    const-string v25, "DST_OFFSET"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 680
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    .line 689
    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 713
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 737
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    .line 741
    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    .line 745
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_INDEX:[B

    .line 747
    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    .line 778
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    .line 747
    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    :array_2
    .array-data 4
        0x3
        -0x1
        -0x1
        0xc
        0xe
        0x1a
        0x0
        0x12
        0x13
        -0x1
        0x12
        0x5
        0x5
        0x7
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        0x1a
        -0x1
        0x4
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        -0x1
        0xe
        0x9
        0x7
        -0x1
        -0x1
        0x12
        -0x1
        -0x1
        0x12
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x1a
        -0x1
        0x1
        0x19
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x180
        0x2e2
        0x445
        0x5c4
        0x726
        0x889
        0xa09
        0xb6b
        0xcce
        0xe4e
        0xfb0
        0x1130
        0x1292
        0x13f4
        0x1574
        0x16d6
        0x1839
        0x19b9
        0x1b1c
        0x1c9c
        0x1dfe
        0x1f60
        0x20e0
        0x2242
        0x23a4
        0x2525
        0x2687
        0x27ea
        0x296a
        0x2acc
        0x2c4b
        0x2dad
        0x2f10
        0x3090
        0x31f3
        0x3355
        0x34d5
        0x3637
        0x37b7
        0x3919
        0x3a7b
        0x3bfb
        0x3d5e
        0x3ec0
        0x4041
        0x41a3
        0x4305
        0x4485
        0x45e7
        0x4767
        0x48c9
        0x4a2c
        0x4bac
        0x4d0e
        0x4e71
        0x4ff1
        0x5153
        0x52d2
        0x5435
        0x5597
        0x5717
        0x587a
        0x59dc
        0x5b5c
        0x5cbf
        0x5e20
        0x5fa0
        0x6103
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
        0xc7ca
        0xc92d
        0xca90
        0xcc10
        0xcd72
        0xcef2
        0xd054
        0xd1b6
        0xd336
        0xd498
        0xd5fb
        0xd77b
        0xd8de
        0xda5e
        0xdbc0
        0xdd22
        0xdea1
        0xe004
        0xe166
        0xe2e6
        0xe449
        0xe5ab
        0xe72b
        0xe88d
        0xea0d
        0xeb6f
        0xecd2
        0xee52
        0xefb4
        0xf117
        0xf297
        0xf3f9
        0xf579
        0xf6db
        0xf83d
        0xf9bd
        0xfb20
        0xfc82
        0xfe02
        0xff65
        0x100c7
        0x10247
        0x103a9
        0x10529
        0x1068b
        0x107ee
        0x1096e
        0x10ad0
        0x10c33
        0x10db2
        0x10f14
        0x11094
        0x111f6
        0x11359
        0x114d9
        0x1163c
        0x1179e
        0x1191e
        0x11a80
        0x11be2
        0x11d62
        0x11ec4
    .end array-data

    :array_4
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x13
        0x3
        0x12
        0x4
        0x13
        0x4
        0x13
        0x4
        0x14
        0x4
        0x14
        0x6
        0x16
        0x6
        0x16
        0x6
        0x16
        0x7
        0x16
        0x6
        0x15
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 784
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 785
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    .line 1415
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lmiui/date/Calendar;->gregorianCutover:J

    .line 1417
    const/16 v0, 0x62e

    iput v0, p0, Lmiui/date/Calendar;->changeYear:I

    .line 1419
    iget v0, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lmiui/date/Calendar;->julianError:I

    .line 1421
    iget v0, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    iget v1, p0, Lmiui/date/Calendar;->julianError:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/date/Calendar;->julianSkew:I

    .line 1424
    const/16 v0, 0xa

    iput v0, p0, Lmiui/date/Calendar;->currentYearSkew:I

    .line 1426
    const/4 v0, 0x0

    iput v0, p0, Lmiui/date/Calendar;->lastYearSkew:I

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 793
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 794
    return-void
.end method

.method private D(I)I
    .locals 2

    .line 1906
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    .line 1907
    :goto_0
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    if-ne p1, v1, :cond_1

    .line 1908
    iget v1, p0, Lmiui/date/Calendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 1910
    :cond_1
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1911
    iget p1, p0, Lmiui/date/Calendar;->lastYearSkew:I

    sub-int/2addr v0, p1

    .line 1913
    :cond_2
    return v0
.end method

.method static E(I)I
    .locals 2

    .line 1947
    sget-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    sget-object v1, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    aget p0, v1, p0

    sub-int/2addr v0, p0

    return v0
.end method

.method static F(I)I
    .locals 1

    .line 1957
    invoke-static {p0}, Lmiui/date/Calendar;->G(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1958
    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    const/16 v0, 0xf

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x1e

    goto :goto_0

    :cond_0
    const/16 p0, 0x1d

    goto :goto_0

    .line 1959
    :cond_1
    const/4 p0, 0x0

    .line 1957
    :goto_0
    return p0
.end method

.method private static G(I)I
    .locals 1

    .line 1966
    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/16 v0, 0xf

    and-int/2addr p0, v0

    .line 1967
    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method private H(I)I
    .locals 10

    .line 2264
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 2266
    move p1, v2

    goto :goto_0

    .line 2264
    :cond_0
    iget-object v3, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v4, 0x1

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v0, v1

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x5

    aget v6, v0, v6

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x9

    aget v7, v0, v7

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v8, 0xe

    aget v8, v0, v8

    move v9, p1

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    .line 2266
    :goto_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 2267
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x17

    aget v0, v0, v1

    sub-int/2addr p1, v0

    return p1

    .line 2270
    :cond_1
    return v2
.end method

.method private static a(JI)I
    .locals 3

    .line 1928
    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 1929
    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_0

    if-gez v0, :cond_0

    .line 1930
    add-int/2addr v0, p2

    return v0

    .line 1932
    :cond_0
    return v0
.end method

.method private static a(ZI)I
    .locals 1

    .line 1895
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 1896
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte p1, v0, p1

    add-int/2addr p1, p0

    return p1

    .line 1899
    :cond_0
    sget-object p0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method private a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V
    .locals 9

    .line 2103
    const/4 v0, 0x3

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_1

    .line 2221
    :sswitch_0
    invoke-direct {p0, p1, p2, p4}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V

    goto/16 :goto_1

    .line 2214
    :sswitch_1
    if-ne p4, v7, :cond_0

    .line 2215
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v8

    rem-int/lit8 p2, p2, 0x64

    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_1

    .line 2217
    :cond_0
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v8

    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2219
    goto/16 :goto_1

    .line 2211
    :sswitch_2
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p4, 0xf

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    goto/16 :goto_1

    .line 2208
    :sswitch_3
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v1

    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2209
    goto/16 :goto_1

    .line 2203
    :sswitch_4
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v1

    rem-int/2addr p2, v6

    .line 2204
    if-nez p2, :cond_1

    move p2, v6

    :cond_1
    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2205
    goto/16 :goto_1

    .line 2195
    :sswitch_5
    if-eq p4, v7, :cond_2

    .line 2196
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v5

    sub-int/2addr p3, v8

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2198
    :cond_2
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p5, 0xb

    aget p4, p4, p5

    rem-int/2addr p4, v5

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, p5

    rem-int/2addr p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    goto/16 :goto_1

    .line 2188
    :sswitch_6
    if-eq p4, v7, :cond_3

    .line 2189
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p4, 0x11

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2191
    :cond_3
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p4, 0x10

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    goto/16 :goto_1

    .line 2179
    :sswitch_7
    if-ne p4, v3, :cond_4

    .line 2180
    invoke-direct {p0, p1, v8, v8}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_1

    .line 2181
    :cond_4
    if-ne p4, v4, :cond_5

    .line 2182
    invoke-direct {p0, p1, v2, v8}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_1

    .line 2184
    :cond_5
    invoke-direct {p0, p1, v2, v2}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    .line 2186
    goto/16 :goto_1

    .line 2164
    :sswitch_8
    if-eq p4, v7, :cond_7

    .line 2165
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    move-result-object p2

    .line 2166
    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v7

    .line 2167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    .line 2168
    :goto_0
    if-lez p3, :cond_6

    .line 2169
    rem-int/lit8 p5, p3, 0xa

    .line 2170
    div-int/lit8 p3, p3, 0xa

    .line 2171
    aget-object p5, p2, p5

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    goto :goto_0

    .line 2173
    :cond_6
    goto/16 :goto_1

    .line 2174
    :cond_7
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    aget p4, p4, v3

    rem-int/2addr p4, v5

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v3

    rem-int/2addr p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    goto/16 :goto_1

    .line 2155
    :sswitch_9
    if-eq p4, v7, :cond_8

    .line 2156
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p5, 0x8

    aget p4, p4, p5

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 p4, 0x6

    aget p3, p3, p4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2159
    :cond_8
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 p5, 0x7

    aget p4, p4, p5

    rem-int/2addr p4, v5

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, p5

    rem-int/2addr p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    goto/16 :goto_1

    .line 2144
    :sswitch_a
    if-ge p4, v0, :cond_9

    .line 2145
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v4

    add-int/2addr p2, v8

    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_1

    .line 2146
    :cond_9
    if-ne p4, v3, :cond_a

    .line 2147
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2148
    :cond_a
    if-ne p4, v4, :cond_b

    .line 2149
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2151
    :cond_b
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v4

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    goto/16 :goto_1

    .line 2140
    :sswitch_b
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v1

    rem-int/2addr p2, v6

    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2141
    goto/16 :goto_1

    .line 2134
    :sswitch_c
    const/16 p3, 0x13

    if-ne p4, v7, :cond_c

    .line 2135
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lmiui/date/Calendar;->mFields:[I

    aget p5, p5, p3

    rem-int/2addr p5, v5

    aget-object p4, p4, p5

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    :cond_c
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p4, p3

    rem-int/2addr p3, v6

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    goto :goto_1

    .line 2131
    :sswitch_d
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v2

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    goto :goto_1

    .line 2129
    :sswitch_e
    goto :goto_1

    .line 2117
    :sswitch_f
    const/16 p3, 0xe

    if-ne p4, v3, :cond_d

    .line 2118
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p4, p3

    sub-int/2addr p3, v8

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2119
    :cond_d
    if-ne p4, v4, :cond_e

    .line 2120
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p4, p3

    sub-int/2addr p3, v8

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2122
    :cond_e
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p4, p3

    sub-int/2addr p3, v8

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    goto :goto_1

    .line 2113
    :sswitch_10
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, p5

    invoke-static {p1, p4, p2}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2114
    goto :goto_1

    .line 2105
    :sswitch_11
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    aget p3, p3, v0

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    nop

    .line 2224
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_11
        0x44 -> :sswitch_10
        0x45 -> :sswitch_f
        0x46 -> :sswitch_e
        0x47 -> :sswitch_d
        0x48 -> :sswitch_10
        0x49 -> :sswitch_c
        0x4b -> :sswitch_b
        0x4c -> :sswitch_a
        0x4d -> :sswitch_a
        0x4e -> :sswitch_9
        0x53 -> :sswitch_10
        0x57 -> :sswitch_e
        0x59 -> :sswitch_8
        0x5a -> :sswitch_7
        0x61 -> :sswitch_6
        0x63 -> :sswitch_f
        0x64 -> :sswitch_10
        0x65 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6b -> :sswitch_3
        0x6d -> :sswitch_10
        0x73 -> :sswitch_10
        0x74 -> :sswitch_2
        0x77 -> :sswitch_e
        0x79 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V
    .locals 5

    .line 2231
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2232
    move v1, v2

    goto :goto_0

    .line 2231
    :cond_0
    nop

    .line 2232
    move v1, v3

    :goto_0
    const/4 v4, 0x4

    if-eq p3, v4, :cond_1

    .line 2233
    move v2, v3

    goto :goto_1

    .line 2232
    :cond_1
    nop

    .line 2233
    :goto_1
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object p2

    .line 2231
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2234
    if-eqz p2, :cond_2

    .line 2235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2237
    :cond_2
    invoke-direct {p0, p1, v3, v3}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;ZZ)V

    .line 2239
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;ZZ)V
    .locals 3

    .line 2246
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2247
    nop

    .line 2248
    if-gez v0, :cond_0

    .line 2249
    const/16 v1, 0x2d

    .line 2250
    neg-int v0, v0

    goto :goto_0

    .line 2252
    :cond_0
    const/16 v1, 0x2b

    :goto_0
    if-eqz p2, :cond_1

    .line 2253
    const-string p2, "GMT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2256
    const p2, 0x36ee80

    div-int v1, v0, p2

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2257
    if-eqz p3, :cond_2

    .line 2258
    const/16 p3, 0x3a

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2260
    :cond_2
    rem-int/2addr v0, p2

    const p2, 0xea60

    div-int/2addr v0, p2

    invoke-static {p1, v2, v0}, Lmiui/date/Calendar;->b(Ljava/lang/StringBuilder;II)V

    .line 2261
    return-void
.end method

.method private static b(ZI)I
    .locals 1

    .line 1920
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 1921
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    aget p1, v0, p1

    add-int/2addr p1, p0

    return p1

    .line 1924
    :cond_0
    sget-object p0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    aget p0, p0, p1

    return p0
.end method

.method private b(JJ)V
    .locals 5

    .line 1824
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/date/Calendar;->c(JJ)I

    move-result v0

    .line 1825
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xc

    aput v0, v1, v2

    .line 1826
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, p0, Lmiui/date/Calendar;->changeYear:I

    if-ne v1, v3, :cond_0

    iget-wide v3, p0, Lmiui/date/Calendar;->gregorianCutover:J

    cmp-long p3, v3, p3

    if-gtz p3, :cond_0

    .line 1827
    iget p3, p0, Lmiui/date/Calendar;->currentYearSkew:I

    add-int/2addr v0, p3

    .line 1829
    :cond_0
    div-int/lit8 p3, v0, 0x20

    .line 1830
    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    aget p4, p4, v2

    invoke-virtual {p0, p4}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result p4

    .line 1831
    invoke-static {p4, p3}, Lmiui/date/Calendar;->b(ZI)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1832
    invoke-static {p4, p3}, Lmiui/date/Calendar;->a(ZI)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1833
    invoke-static {p4, p3}, Lmiui/date/Calendar;->a(ZI)I

    move-result p4

    sub-int/2addr v0, p4

    .line 1834
    add-int/lit8 p3, p3, 0x1

    .line 1837
    :cond_1
    iget-object p4, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aput p3, p4, v1

    .line 1838
    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p4, 0x9

    aput v0, p3, p4

    .line 1839
    iget-object p3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p4, 0xe

    const-wide/16 v0, 0x3

    sub-long/2addr p1, v0

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lmiui/date/Calendar;->a(JI)I

    move-result p1

    add-int/2addr p1, v2

    aput p1, p3, p4

    .line 1840
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;II)V
    .locals 0

    .line 2227
    invoke-static {p1, p2}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    return-void
.end method

.method private c(JJ)I
    .locals 4

    .line 1847
    nop

    .line 1848
    nop

    .line 1849
    iget-wide v0, p0, Lmiui/date/Calendar;->gregorianCutover:J

    cmp-long p3, p3, v0

    const/16 p4, 0x7b2

    if-gez p3, :cond_0

    .line 1850
    iget p3, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v0, p3

    sub-long v0, p1, v0

    goto :goto_0

    .line 1854
    :cond_0
    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x16d

    div-long v2, v0, v2

    long-to-int p3, v2

    if-eqz p3, :cond_1

    .line 1855
    add-int/2addr p4, p3

    .line 1856
    int-to-long v0, p4

    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->f(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_0

    .line 1858
    :cond_1
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    .line 1859
    add-int/lit8 p4, p4, -0x1

    .line 1860
    invoke-direct {p0, p4}, Lmiui/date/Calendar;->D(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    .line 1862
    :cond_2
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 p2, 0x1

    aput p4, p1, p2

    .line 1863
    long-to-int p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private ce()V
    .locals 10

    .line 1218
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 1219
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x5

    aget v5, v2, v3

    .line 1220
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x9

    aget v6, v2, v3

    .line 1222
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lmiui/date/Calendar;->f(J)J

    move-result-wide v2

    .line 1223
    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v4

    invoke-static {v4, v5}, Lmiui/date/Calendar;->b(ZI)I

    move-result v4

    add-int/2addr v4, v6

    sub-int/2addr v4, v1

    int-to-long v7, v4

    add-long/2addr v2, v7

    .line 1225
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const-wide/16 v7, 0x3

    sub-long v7, v2, v7

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Lmiui/date/Calendar;->a(JI)I

    move-result v7

    add-int/2addr v7, v1

    const/16 v1, 0xe

    aput v7, v4, v1

    .line 1227
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x12

    aget v1, v1, v4

    const v4, 0x36ee80

    mul-int/2addr v1, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v8, 0x14

    aget v4, v4, v8

    const v8, 0xea60

    mul-int/2addr v4, v8

    add-int/2addr v1, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v8, 0x15

    aget v4, v4, v8

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v1, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v8, 0x16

    aget v4, v4, v8

    add-int/2addr v1, v4

    .line 1229
    const-wide/32 v8, 0x5265c00

    mul-long/2addr v2, v8

    int-to-long v8, v1

    add-long/2addr v2, v8

    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1231
    iget-object v2, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v3, 0x1

    move v4, v0

    move v8, v1

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v2

    int-to-long v2, v2

    .line 1233
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1234
    iget-object v5, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1235
    invoke-direct {p0, v1}, Lmiui/date/Calendar;->H(I)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 1237
    :cond_0
    iget-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    if-gtz v0, :cond_1

    const-wide/16 v2, 0x0

    :cond_1
    sub-long/2addr v4, v2

    iput-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1239
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1240
    return-void
.end method

.method private cf()V
    .locals 7

    .line 1243
    nop

    .line 1244
    sget-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit16 v1, v1, -0x76c

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v3, -0x63c1

    add-long/2addr v3, v0

    .line 1246
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x6

    aget v1, v1, v5

    if-ge v0, v1, :cond_0

    .line 1247
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    invoke-static {v1, v0}, Lmiui/date/Calendar;->h(II)I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1251
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v5

    invoke-static {v0, v2}, Lmiui/date/Calendar;->h(II)I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    goto :goto_1

    .line 1253
    :cond_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-static {v0}, Lmiui/date/Calendar;->G(I)I

    move-result v0

    .line 1254
    if-ltz v0, :cond_2

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v6, v5

    if-ge v0, v5, :cond_2

    .line 1255
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-static {v0}, Lmiui/date/Calendar;->F(I)I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 1258
    :cond_2
    :goto_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 1260
    const-wide/16 v0, 0x0

    invoke-direct {p0, v3, v4, v0, v1}, Lmiui/date/Calendar;->b(JJ)V

    .line 1261
    invoke-direct {p0}, Lmiui/date/Calendar;->ce()V

    .line 1262
    return-void
.end method

.method private cg()V
    .locals 7

    .line 1347
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v0, v2}, Lmiui/date/Calendar;->i(II)I

    move-result v0

    .line 1348
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x9

    aget v2, v2, v4

    shr-int/lit8 v5, v0, 0x8

    const/16 v6, 0xf

    if-ne v2, v5, :cond_0

    .line 1349
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    aput v2, v0, v6

    goto :goto_0

    .line 1350
    :cond_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v4

    and-int/lit16 v0, v0, 0xff

    if-ne v1, v0, :cond_1

    .line 1351
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    aput v1, v0, v6

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x0

    aput v1, v0, v6

    .line 1355
    :goto_0
    return-void
.end method

.method private ch()J
    .locals 19

    .line 1458
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/date/Calendar;->mFields:[I

    iget-object v2, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const/16 v3, 0x17

    aput v2, v1, v3

    .line 1460
    iget-wide v1, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    div-long/2addr v1, v4

    .line 1461
    iget-wide v6, v0, Lmiui/date/Calendar;->mMillisecond:J

    rem-long/2addr v6, v4

    long-to-int v4, v6

    .line 1463
    const-wide/16 v5, 0x1

    const v7, 0x5265c00

    if-gez v4, :cond_0

    .line 1464
    add-int/2addr v4, v7

    .line 1465
    sub-long/2addr v1, v5

    .line 1468
    :cond_0
    iget-object v8, v0, Lmiui/date/Calendar;->mFields:[I

    aget v8, v8, v3

    add-int/2addr v4, v8

    .line 1469
    :goto_0
    if-gez v4, :cond_1

    .line 1470
    add-int/2addr v4, v7

    .line 1471
    sub-long/2addr v1, v5

    goto :goto_0

    .line 1473
    :cond_1
    :goto_1
    if-lt v4, v7, :cond_2

    .line 1474
    sub-int/2addr v4, v7

    .line 1475
    add-long/2addr v1, v5

    goto :goto_1

    .line 1478
    :cond_2
    iget-object v8, v0, Lmiui/date/Calendar;->mFields:[I

    aget v8, v8, v3

    .line 1479
    iget-wide v9, v0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    .line 1480
    iget-wide v11, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    const-wide/high16 v15, -0x8000000000000000L

    const-wide v17, 0x7fffffffffffffffL

    if-lez v11, :cond_3

    cmp-long v11, v9, v13

    if-gez v11, :cond_3

    if-lez v8, :cond_3

    .line 1481
    nop

    .line 1486
    move-wide/from16 v9, v17

    goto :goto_2

    .line 1482
    :cond_3
    iget-wide v11, v0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_4

    cmp-long v11, v9, v13

    if-lez v11, :cond_4

    if-gez v8, :cond_4

    .line 1483
    nop

    .line 1486
    move-wide v9, v15

    :cond_4
    :goto_2
    invoke-direct {v0, v1, v2, v9, v10}, Lmiui/date/Calendar;->b(JJ)V

    .line 1488
    invoke-direct {v0, v4}, Lmiui/date/Calendar;->H(I)I

    move-result v8

    .line 1489
    iget-object v9, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v10, 0x18

    aput v8, v9, v10

    .line 1490
    if-eqz v8, :cond_a

    .line 1491
    nop

    .line 1492
    add-int/2addr v4, v8

    .line 1493
    if-gez v4, :cond_5

    .line 1494
    add-int/2addr v4, v7

    .line 1495
    sub-long v5, v1, v5

    goto :goto_3

    .line 1496
    :cond_5
    if-lt v4, v7, :cond_6

    .line 1497
    sub-int/2addr v4, v7

    .line 1498
    add-long/2addr v5, v1

    goto :goto_3

    .line 1500
    :cond_6
    move-wide v5, v1

    :goto_3
    cmp-long v1, v1, v5

    if-eqz v1, :cond_9

    .line 1501
    iget-object v1, v0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v10

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 1502
    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v7, v1

    add-long/2addr v2, v7

    .line 1503
    iget-wide v7, v0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v7, v7, v13

    if-lez v7, :cond_7

    cmp-long v7, v2, v13

    if-gez v7, :cond_7

    if-lez v1, :cond_7

    .line 1504
    nop

    .line 1509
    move-wide/from16 v2, v17

    goto :goto_4

    .line 1505
    :cond_7
    iget-wide v7, v0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v7, v7, v13

    if-gez v7, :cond_8

    cmp-long v7, v2, v13

    if-lez v7, :cond_8

    if-gez v1, :cond_8

    .line 1506
    nop

    .line 1509
    move-wide v2, v15

    :cond_8
    :goto_4
    invoke-direct {v0, v5, v6, v2, v3}, Lmiui/date/Calendar;->b(JJ)V

    .line 1513
    :cond_9
    move-wide v1, v5

    :cond_a
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    const/4 v6, 0x0

    if-gtz v3, :cond_b

    .line 1514
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    aput v6, v3, v6

    .line 1515
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    iget-object v7, v0, Lmiui/date/Calendar;->mFields:[I

    aget v7, v7, v5

    rsub-int/lit8 v7, v7, 0x1

    aput v7, v3, v5

    goto :goto_5

    .line 1517
    :cond_b
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    aput v5, v3, v6

    .line 1520
    :goto_5
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x16

    rem-int/lit16 v8, v4, 0x3e8

    aput v8, v3, v7

    .line 1521
    div-int/lit16 v4, v4, 0x3e8

    .line 1522
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x15

    rem-int/lit8 v8, v4, 0x3c

    aput v8, v3, v7

    .line 1523
    div-int/lit8 v4, v4, 0x3c

    .line 1524
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x14

    rem-int/lit8 v8, v4, 0x3c

    aput v8, v3, v7

    .line 1525
    div-int/lit8 v4, v4, 0x3c

    .line 1526
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    rem-int/2addr v4, v10

    const/16 v7, 0x12

    aput v4, v3, v7

    .line 1528
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x11

    iget-object v8, v0, Lmiui/date/Calendar;->mFields:[I

    aget v8, v8, v7

    const/16 v9, 0xb

    if-le v8, v9, :cond_c

    move v8, v5

    goto :goto_6

    :cond_c
    move v8, v6

    :goto_6
    aput v8, v3, v4

    .line 1530
    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v7

    const/16 v4, 0x10

    packed-switch v3, :pswitch_data_0

    goto :goto_7

    .line 1567
    :pswitch_0
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x6

    aput v3, v0, v4

    goto :goto_7

    .line 1560
    :pswitch_1
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x5

    aput v3, v0, v4

    .line 1561
    goto :goto_7

    .line 1557
    :pswitch_2
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x4

    aput v3, v0, v4

    .line 1558
    goto :goto_7

    .line 1550
    :pswitch_3
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x3

    aput v3, v0, v4

    .line 1551
    goto :goto_7

    .line 1547
    :pswitch_4
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x2

    aput v3, v0, v4

    .line 1548
    goto :goto_7

    .line 1539
    :pswitch_5
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    aput v5, v0, v4

    .line 1540
    goto :goto_7

    .line 1532
    :pswitch_6
    iget-object v0, v0, Lmiui/date/Calendar;->mFields:[I

    aput v6, v0, v4

    .line 1533
    nop

    .line 1570
    :goto_7
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private compute()V
    .locals 3

    .line 1303
    invoke-direct {p0}, Lmiui/date/Calendar;->ch()J

    move-result-wide v0

    .line 1304
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1305
    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->e(J)V

    .line 1306
    invoke-direct {p0}, Lmiui/date/Calendar;->cg()V

    .line 1307
    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->d(J)V

    .line 1309
    :cond_0
    return-void
.end method

.method private d(J)V
    .locals 10

    .line 1320
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 1321
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 1322
    add-int/lit8 v0, v0, -0x1

    .line 1325
    :cond_0
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    const/16 v5, 0x9

    if-ne v2, v1, :cond_1

    .line 1326
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    aget v6, v6, v1

    invoke-static {v6, v1}, Lmiui/date/Calendar;->i(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    if-lt v2, v6, :cond_1

    .line 1327
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    .line 1330
    :cond_1
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x3

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v7, v0, 0xc

    int-to-long v7, v7

    const/16 v9, 0xc

    invoke-static {v7, v8, v9}, Lmiui/date/Calendar;->a(JI)I

    move-result v7

    aput v7, v2, v6

    .line 1331
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x4

    add-int/lit8 v0, v0, 0x24

    int-to-long v7, v0

    const/16 v0, 0x3c

    invoke-static {v7, v8, v0}, Lmiui/date/Calendar;->a(JI)I

    move-result v7

    aput v7, v2, v6

    .line 1333
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v1

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    aget v6, v6, v3

    invoke-static {v2, v6}, Lmiui/date/Calendar;->i(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    .line 1334
    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    aget v6, v6, v1

    add-int/lit16 v6, v6, -0x76c

    mul-int/2addr v6, v9

    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v7, v3

    add-int/2addr v6, v3

    .line 1335
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v5

    if-lt v3, v2, :cond_2

    .line 1336
    add-int/lit8 v6, v6, 0x1

    .line 1338
    :cond_2
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x7

    add-int/2addr v6, v9

    int-to-long v5, v6

    invoke-static {v5, v6, v0}, Lmiui/date/Calendar;->a(JI)I

    move-result v5

    aput v5, v2, v3

    .line 1340
    const-wide/16 v2, -0x63c1

    sub-long/2addr p1, v2

    long-to-int p1, p1

    .line 1341
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xb

    add-int/lit8 v3, p1, 0x28

    int-to-long v5, v3

    invoke-static {v5, v6, v0}, Lmiui/date/Calendar;->a(JI)I

    move-result v3

    aput v3, p2, v2

    .line 1343
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x13

    mul-int/2addr p1, v9

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x12

    aget v3, v3, v5

    add-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x18

    div-int/2addr v3, v4

    add-int/2addr p1, v3

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Lmiui/date/Calendar;->a(JI)I

    move-result p1

    aput p1, p2, v2

    .line 1344
    return-void
.end method

.method private e(J)V
    .locals 7

    .line 1358
    const-wide/16 v0, -0x63c1

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 1360
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    const/16 v1, 0x834

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v0

    add-int/lit8 v1, p2, 0x1

    .line 1361
    :goto_0
    sget-object p2, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v2, v1, -0x76c

    aget p2, p2, v2

    sub-int/2addr p1, p2

    .line 1362
    if-gez p1, :cond_1

    .line 1363
    add-int/lit8 v1, v1, -0x1

    .line 1364
    invoke-static {v1}, Lmiui/date/Calendar;->E(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 1366
    :cond_1
    if-gez p1, :cond_2

    .line 1367
    add-int/lit8 v1, v1, -0x1

    .line 1368
    invoke-static {v1}, Lmiui/date/Calendar;->E(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 1371
    :cond_2
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x2

    aput v1, p2, v2

    .line 1372
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xd

    add-int/lit8 v3, p1, 0x1

    aput v3, p2, v2

    .line 1375
    invoke-static {v1}, Lmiui/date/Calendar;->G(I)I

    move-result p2

    .line 1376
    nop

    .line 1378
    nop

    .line 1379
    const/4 v2, 0x0

    move v3, p1

    move p1, v2

    move v4, p1

    move v5, v4

    :goto_1
    const/16 v6, 0xc

    if-ge p1, v6, :cond_5

    if-lez v3, :cond_5

    .line 1380
    if-ltz p2, :cond_3

    add-int/lit8 v5, p2, 0x1

    if-ne p1, v5, :cond_3

    if-nez v4, :cond_3

    .line 1381
    add-int/lit8 p1, p1, -0x1

    .line 1382
    nop

    .line 1383
    invoke-static {v1}, Lmiui/date/Calendar;->F(I)I

    move-result v4

    .line 1388
    move v5, v4

    move v4, v0

    goto :goto_2

    .line 1385
    :cond_3
    invoke-static {v1, p1}, Lmiui/date/Calendar;->h(II)I

    move-result v5

    .line 1388
    :goto_2
    if-eqz v4, :cond_4

    add-int/lit8 v6, p2, 0x1

    if-ne p1, v6, :cond_4

    .line 1389
    nop

    .line 1392
    move v4, v2

    :cond_4
    sub-int/2addr v3, v5

    .line 1379
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1395
    :cond_5
    if-nez v3, :cond_7

    if-lez p2, :cond_7

    add-int/2addr p2, v0

    if-ne p1, p2, :cond_7

    .line 1396
    if-eqz v4, :cond_6

    .line 1397
    goto :goto_3

    .line 1399
    :cond_6
    nop

    .line 1400
    add-int/lit8 p1, p1, -0x1

    .line 1404
    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v4

    :goto_3
    if-gez v3, :cond_8

    .line 1405
    add-int/2addr v3, v5

    .line 1406
    add-int/lit8 p1, p1, -0x1

    .line 1408
    :cond_8
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aput v2, p2, v1

    .line 1409
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x6

    aput p1, p2, v1

    .line 1410
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0xa

    add-int/2addr v3, v0

    aput v3, p1, p2

    .line 1411
    return-void
.end method

.method private f(J)J
    .locals 13

    .line 1870
    const-wide/16 v0, 0x7b2

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x16d

    if-ltz v2, :cond_3

    .line 1871
    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    const-wide/16 v9, 0x7b1

    sub-long v9, p1, v9

    div-long/2addr v9, v7

    add-long/2addr v0, v9

    .line 1872
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v7, v2

    cmp-long v2, p1, v7

    if-lez v2, :cond_0

    .line 1873
    const-wide/16 v7, 0x76d

    sub-long v7, p1, v7

    div-long/2addr v7, v5

    const-wide/16 v5, 0x641

    sub-long/2addr p1, v5

    div-long/2addr p1, v3

    sub-long/2addr v7, p1

    sub-long/2addr v0, v7

    goto :goto_0

    .line 1875
    :cond_0
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1876
    iget p1, p0, Lmiui/date/Calendar;->currentYearSkew:I

    int-to-long p1, p1

    add-long/2addr v0, p1

    goto :goto_0

    .line 1877
    :cond_1
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    .line 1878
    iget p1, p0, Lmiui/date/Calendar;->lastYearSkew:I

    int-to-long p1, p1

    add-long/2addr v0, p1

    goto :goto_0

    .line 1880
    :cond_2
    iget p1, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long p1, p1

    add-long/2addr v0, p1

    .line 1883
    :goto_0
    return-wide v0

    .line 1884
    :cond_3
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v11, v2

    cmp-long v2, p1, v11

    const-wide/16 v11, 0x7b4

    if-gtz v2, :cond_4

    .line 1885
    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long/2addr p1, v11

    div-long/2addr p1, v7

    add-long/2addr v0, p1

    iget p1, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0

    .line 1887
    :cond_4
    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long v9, p1, v11

    div-long/2addr v9, v7

    add-long/2addr v0, v9

    const-wide/16 v7, 0x7d0

    sub-long/2addr p1, v7

    div-long v5, p1, v5

    sub-long/2addr v0, v5

    div-long/2addr p1, v3

    add-long/2addr v0, p1

    return-wide v0
.end method

.method static h(II)I
    .locals 1

    .line 1939
    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    add-int/lit8 p1, p1, 0x1

    const/high16 v0, 0x10000

    shr-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    .line 1940
    const/16 p0, 0x1e

    goto :goto_0

    :cond_0
    const/16 p0, 0x1d

    .line 1939
    :goto_0
    return p0
.end method

.method static i(II)I
    .locals 2

    .line 1977
    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    .line 1978
    const/4 p0, 0x0

    return p0

    .line 1981
    :cond_0
    sget-object v0, Lmiui/date/Calendar;->SOLAR_TERM_INDEX:[B

    add-int/lit16 p0, p0, -0x76c

    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, -0x30

    .line 1982
    mul-int/lit8 p1, p1, 0x2

    .line 1983
    mul-int/lit8 p0, p0, 0x18

    add-int/2addr p0, p1

    .line 1984
    add-int/lit8 v0, p0, 0x1

    .line 1985
    sget-object v1, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte p0, v1, p0

    add-int/lit8 p0, p0, -0x30

    sget-object v1, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    aget v1, v1, p1

    add-int/2addr p0, v1

    .line 1986
    sget-object v1, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte v0, v1, v0

    add-int/lit8 v0, v0, -0x30

    sget-object v1, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    add-int/2addr v0, p1

    .line 1987
    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public add(II)Lmiui/date/Calendar;
    .locals 11

    .line 1015
    if-ltz p1, :cond_26

    const/16 v0, 0x19

    if-ge p1, v0, :cond_26

    .line 1019
    const/16 v0, 0x76c

    const/16 v1, 0x834

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1212
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported set field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1201
    :pswitch_1
    if-eqz p2, :cond_25

    .line 1202
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 1203
    if-lez p2, :cond_0

    move p1, v9

    goto :goto_0

    :cond_0
    move p1, v8

    :goto_0
    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    move v8, v9

    nop

    :cond_1
    if-ne p1, v8, :cond_2

    .line 1206
    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1207
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1208
    goto/16 :goto_d

    .line 1204
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1189
    :pswitch_2
    if-eqz p2, :cond_25

    .line 1190
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1191
    if-lez p2, :cond_3

    move p1, v9

    goto :goto_1

    :cond_3
    move p1, v8

    :goto_1
    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_4

    move v8, v9

    nop

    :cond_4
    if-ne p1, v8, :cond_5

    .line 1194
    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1195
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1196
    goto/16 :goto_d

    .line 1192
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1177
    :pswitch_3
    if-eqz p2, :cond_25

    .line 1178
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v2, p2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1179
    if-lez p2, :cond_6

    move p1, v9

    goto :goto_2

    :cond_6
    move p1, v8

    :goto_2
    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_7

    move v8, v9

    nop

    :cond_7
    if-ne p1, v8, :cond_8

    .line 1182
    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1183
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1184
    goto/16 :goto_d

    .line 1180
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1165
    :pswitch_4
    if-eqz p2, :cond_25

    .line 1166
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v2, p2

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1167
    if-lez p2, :cond_9

    move p1, v9

    goto :goto_3

    :cond_9
    move p1, v8

    :goto_3
    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_a

    move v8, v9

    nop

    :cond_a
    if-ne p1, v8, :cond_b

    .line 1170
    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1171
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1172
    goto/16 :goto_d

    .line 1168
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1154
    :pswitch_5
    if-eqz p2, :cond_25

    .line 1155
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v2, p2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1156
    if-lez p2, :cond_c

    move p1, v9

    goto :goto_4

    :cond_c
    move p1, v8

    :goto_4
    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_d

    move v8, v9

    nop

    :cond_d
    if-ne p1, v8, :cond_e

    .line 1159
    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1160
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1161
    goto/16 :goto_d

    .line 1157
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1098
    :pswitch_6
    if-eqz p2, :cond_25

    .line 1099
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1103
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    invoke-static {p1}, Lmiui/date/Calendar;->G(I)I

    move-result p1

    .line 1104
    :goto_5
    const/16 v2, 0xb

    if-lez p2, :cond_12

    .line 1105
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v6

    if-ne v3, p1, :cond_f

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v5

    if-nez v3, :cond_f

    .line 1106
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aput v9, v2, v5

    goto :goto_6

    .line 1108
    :cond_f
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v10, v3, v6

    add-int/2addr v10, v9

    aput v10, v3, v6

    .line 1109
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aput v8, v3, v5

    .line 1110
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v6

    if-le v3, v2, :cond_11

    .line 1111
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v8, p1, v6

    .line 1112
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, p1, v7

    add-int/2addr v2, v9

    aput v2, p1, v7

    .line 1113
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    if-gt p1, v1, :cond_10

    .line 1116
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    invoke-static {p1}, Lmiui/date/Calendar;->G(I)I

    move-result p1

    goto :goto_6

    .line 1114
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range of Chinese Lunar Year"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1104
    :cond_11
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 1121
    :cond_12
    :goto_7
    if-gez p2, :cond_17

    .line 1122
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_13

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    if-ne v1, v9, :cond_13

    .line 1123
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v8, v1, v5

    goto :goto_9

    .line 1125
    :cond_13
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v1, v6

    sub-int/2addr v3, v9

    aput v3, v1, v6

    .line 1126
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    if-gez v1, :cond_15

    .line 1127
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v2, p1, v6

    .line 1128
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, p1, v6

    sub-int/2addr v1, v9

    aput v1, p1, v6

    .line 1129
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    if-lt p1, v0, :cond_14

    .line 1132
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v9

    invoke-static {p1}, Lmiui/date/Calendar;->G(I)I

    move-result p1

    goto :goto_8

    .line 1130
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range of Chinese Lunar Year"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1134
    :cond_15
    :goto_8
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_16

    .line 1135
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v9, v1, v5

    .line 1121
    :cond_16
    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1140
    :cond_17
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v5

    if-ne p1, v9, :cond_18

    .line 1141
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    invoke-static {p1}, Lmiui/date/Calendar;->F(I)I

    move-result p1

    goto :goto_a

    .line 1142
    :cond_18
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v6

    invoke-static {p1, p2}, Lmiui/date/Calendar;->h(II)I

    move-result p1

    .line 1143
    :goto_a
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v4

    if-le p2, p1, :cond_19

    .line 1144
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aput p1, p2, v4

    .line 1146
    :cond_19
    invoke-direct {p0}, Lmiui/date/Calendar;->cf()V

    .line 1147
    goto/16 :goto_d

    .line 1100
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range of Chinese Lunar Year"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1071
    :pswitch_7
    if-eqz p2, :cond_25

    .line 1072
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v3

    add-int/2addr p2, p1

    .line 1073
    div-int/lit8 p1, p2, 0xc

    .line 1074
    rem-int/lit8 p2, p2, 0xc

    .line 1075
    if-gez p2, :cond_1b

    .line 1076
    add-int/lit8 p2, p2, 0xc

    .line 1077
    add-int/lit8 p1, p1, -0x1

    .line 1080
    :cond_1b
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, v0, v3

    .line 1081
    if-nez p1, :cond_1e

    .line 1082
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v8

    if-nez p1, :cond_1c

    .line 1083
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v9

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v9

    .line 1086
    :cond_1c
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v9

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v3

    invoke-static {p1, p2}, Lmiui/date/Calendar;->a(ZI)I

    move-result p1

    .line 1087
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v2

    if-le p2, p1, :cond_1d

    .line 1088
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aput p1, p2, v2

    .line 1090
    :cond_1d
    invoke-direct {p0}, Lmiui/date/Calendar;->ce()V

    .line 1091
    goto :goto_b

    .line 1092
    :cond_1e
    invoke-virtual {p0, v9, p1}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 1094
    :goto_b
    goto/16 :goto_d

    .line 1047
    :pswitch_8
    if-eqz p2, :cond_25

    .line 1048
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    add-int/2addr p2, p1

    .line 1049
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-nez p1, :cond_22

    if-lt p2, v0, :cond_22

    if-gt p2, v1, :cond_22

    .line 1053
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, p1, v7

    .line 1054
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v5

    if-ne p1, v9, :cond_1f

    .line 1055
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v6

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v7

    invoke-static {p2}, Lmiui/date/Calendar;->G(I)I

    move-result p2

    if-ne p1, p2, :cond_1f

    .line 1056
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v8, p1, v5

    .line 1060
    :cond_1f
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v5

    if-ne p1, v9, :cond_20

    .line 1061
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    invoke-static {p1}, Lmiui/date/Calendar;->F(I)I

    move-result p1

    goto :goto_c

    .line 1062
    :cond_20
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v7

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v6

    invoke-static {p1, p2}, Lmiui/date/Calendar;->h(II)I

    move-result p1

    .line 1063
    :goto_c
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v4

    if-le p2, p1, :cond_21

    .line 1064
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aput p1, p2, v4

    .line 1066
    :cond_21
    invoke-direct {p0}, Lmiui/date/Calendar;->cf()V

    .line 1067
    goto :goto_d

    .line 1050
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range of Chinese Lunar Year"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1033
    :pswitch_9
    if-eqz p2, :cond_25

    .line 1034
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v8

    if-nez p1, :cond_23

    .line 1035
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v9

    rsub-int/lit8 v0, v0, -0x1

    aput v0, p1, v9

    .line 1037
    :cond_23
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, p1, v9

    add-int/2addr v0, p2

    aput v0, p1, v9

    .line 1038
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v9

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v3

    invoke-static {p1, p2}, Lmiui/date/Calendar;->a(ZI)I

    move-result p1

    .line 1039
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v2

    if-le p2, p1, :cond_24

    .line 1040
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aput p1, p2, v2

    .line 1042
    :cond_24
    invoke-direct {p0}, Lmiui/date/Calendar;->ce()V

    .line 1043
    goto :goto_d

    .line 1021
    :pswitch_a
    if-eqz p2, :cond_25

    .line 1022
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v8

    add-int/2addr p1, p2

    rem-int/2addr p1, v7

    .line 1023
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v8

    if-eq p2, p1, :cond_25

    .line 1024
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v8

    if-nez p1, :cond_25

    .line 1025
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v9

    rsub-int/lit8 p2, p2, -0x1

    aput p2, p1, v9

    .line 1026
    invoke-direct {p0}, Lmiui/date/Calendar;->ce()V

    .line 1214
    :cond_25
    :goto_d
    return-object p0

    .line 1016
    :cond_26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field out of range [0-25]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public after(Lmiui/date/Calendar;)Z
    .locals 4

    .line 1676
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public before(Lmiui/date/Calendar;)Z
    .locals 4

    .line 1692
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1653
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 1654
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lmiui/date/Calendar;->mFields:[I

    .line 1655
    iget-object v1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    return-object v0

    .line 1657
    :catch_0
    move-exception v0

    .line 1659
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 65
    check-cast p1, Lmiui/date/Calendar;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->compareTo(Lmiui/date/Calendar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiui/date/Calendar;)I
    .locals 4

    .line 1602
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1620
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    check-cast p1, Lmiui/date/Calendar;

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public format(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 2002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;
    .locals 1

    .line 2018
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 2019
    invoke-virtual {p0, v0, p1, p2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2020
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p2

    invoke-interface {p2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 2021
    return-object p1
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    .line 2039
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .locals 11

    .line 2056
    if-nez p3, :cond_0

    .line 2057
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object p3

    .line 2060
    :cond_0
    nop

    .line 2063
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    move v0, v7

    move v8, v0

    :goto_0
    if-ge v0, v6, :cond_8

    .line 2064
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2066
    const/16 v1, 0x27

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 2067
    if-ne v3, v1, :cond_2

    .line 2068
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v6, :cond_1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2069
    nop

    .line 2070
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2063
    :goto_1
    move v0, v1

    goto :goto_3

    .line 2072
    :cond_1
    nop

    .line 2063
    move v8, v7

    goto :goto_3

    .line 2075
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2077
    goto :goto_3

    .line 2080
    :cond_3
    if-ne v3, v1, :cond_5

    .line 2081
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v6, :cond_4

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    .line 2082
    nop

    .line 2083
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2085
    :cond_4
    nop

    .line 2063
    move v8, v9

    goto :goto_3

    .line 2088
    :cond_5
    const/16 v1, 0x41

    if-lt v3, v1, :cond_7

    const/16 v1, 0x7a

    if-gt v3, v1, :cond_7

    sget-object v1, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v2, v3, -0x41

    aget v1, v1, v2

    if-ltz v1, :cond_7

    .line 2089
    move v10, v0

    move v4, v9

    :goto_2
    add-int/lit8 v0, v10, 0x1

    if-ge v0, v6, :cond_6

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 2090
    nop

    .line 2089
    add-int/lit8 v4, v4, 0x1

    move v10, v0

    goto :goto_2

    .line 2092
    :cond_6
    sget-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    aget v5, v0, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lmiui/date/Calendar;->a(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V

    .line 2063
    move v0, v10

    goto :goto_3

    .line 2094
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2063
    :goto_3
    add-int/2addr v0, v9

    goto :goto_0

    .line 2099
    :cond_8
    return-object p1
.end method

.method public get(I)I
    .locals 3

    .line 1296
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 1299
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, v0, p1

    return p1

    .line 1297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualMaximum(I)I
    .locals 6

    .line 1700
    if-ltz p1, :cond_4

    const/16 v0, 0x19

    if-ge p1, v0, :cond_4

    .line 1704
    const/16 v0, 0xb

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x3b

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :pswitch_0
    const/16 p1, 0x3e7

    return p1

    .line 1745
    :pswitch_1
    return v4

    .line 1743
    :pswitch_2
    return v4

    .line 1741
    :pswitch_3
    const/16 p1, 0x17

    return p1

    .line 1739
    :pswitch_4
    return v5

    .line 1737
    :pswitch_5
    return v1

    .line 1735
    :pswitch_6
    const/16 p1, 0x18

    return p1

    .line 1733
    :pswitch_7
    const/4 p1, 0x7

    return p1

    .line 1731
    :pswitch_8
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v2

    invoke-static {p1}, Lmiui/date/Calendar;->E(I)I

    move-result v3

    :goto_0
    return v3

    .line 1729
    :pswitch_9
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v5

    invoke-direct {p0, p1}, Lmiui/date/Calendar;->D(I)I

    move-result p1

    return p1

    .line 1726
    :pswitch_a
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1727
    :cond_1
    invoke-virtual {p0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v2

    invoke-static {p1}, Lmiui/date/Calendar;->F(I)I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v2

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    invoke-static {p1, v0}, Lmiui/date/Calendar;->h(II)I

    move-result v3

    .line 1726
    :goto_1
    return v3

    .line 1724
    :pswitch_b
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v5

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result p1

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {p1, v0}, Lmiui/date/Calendar;->a(ZI)I

    move-result p1

    return p1

    .line 1722
    :pswitch_c
    return v5

    .line 1720
    :pswitch_d
    return v0

    .line 1717
    :pswitch_e
    return v4

    .line 1712
    :pswitch_f
    return v0

    .line 1710
    :pswitch_10
    const/16 p1, 0x834

    return p1

    .line 1708
    :pswitch_11
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v3

    if-ne p1, v5, :cond_3

    const p1, 0x116bd2d2

    goto :goto_2

    :cond_3
    const p1, 0x116babff

    :goto_2
    return p1

    .line 1706
    :pswitch_12
    return v5

    .line 1701
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 3

    .line 1756
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 1760
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1802
    :pswitch_0
    return v1

    .line 1800
    :pswitch_1
    return v1

    .line 1798
    :pswitch_2
    return v1

    .line 1796
    :pswitch_3
    return v1

    .line 1794
    :pswitch_4
    return v1

    .line 1792
    :pswitch_5
    return v1

    .line 1790
    :pswitch_6
    return v1

    .line 1788
    :pswitch_7
    return v0

    .line 1786
    :pswitch_8
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 1784
    :pswitch_9
    return v0

    .line 1782
    :pswitch_a
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 1780
    :pswitch_b
    return v0

    .line 1778
    :pswitch_c
    return v1

    .line 1776
    :pswitch_d
    return v1

    .line 1773
    :pswitch_e
    return v1

    .line 1768
    :pswitch_f
    return v1

    .line 1766
    :pswitch_10
    const/16 p1, 0x76c

    return p1

    .line 1764
    :pswitch_11
    return v0

    .line 1762
    :pswitch_12
    return v1

    .line 1757
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChineseLeapMonth()I
    .locals 2

    .line 1588
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lmiui/date/Calendar;->G(I)I

    move-result v0

    return v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 826
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 818
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1610
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isChineseLeapMonth()Z
    .locals 2

    .line 1580
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLeapYear(I)Z
    .locals 3

    .line 1813
    iget v0, p0, Lmiui/date/Calendar;->changeYear:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v0, :cond_2

    .line 1814
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_1

    :cond_0
    move v1, v2

    nop

    :cond_1
    return v1

    .line 1817
    :cond_2
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method public outOfChineseCalendarRange()Z
    .locals 10

    .line 1315
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v2, v2, v3

    int-to-long v4, v2

    const-wide v6, -0x201b77f5c00L

    sub-long/2addr v6, v4

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x18

    aget v2, v2, v4

    int-to-long v8, v2

    sub-long/2addr v6, v8

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide v5, 0x3c314a71400L

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    int-to-long v2, v2

    sub-long/2addr v5, v2

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v4

    int-to-long v2, v2

    sub-long/2addr v5, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public set(II)Lmiui/date/Calendar;
    .locals 5

    .line 963
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 964
    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-gez p2, :cond_1

    .line 965
    neg-int p2, p2

    .line 966
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v3

    invoke-static {p1}, Lmiui/date/Calendar;->G(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 969
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aput v1, p1, v2

    goto :goto_1

    .line 967
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "year "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has no such leap month:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 971
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v4

    if-ge p2, v4, :cond_3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v4

    if-gt p2, v4, :cond_2

    goto :goto_0

    .line 972
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value is out of date range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v4, 0x0

    aput v4, p1, v2

    .line 977
    :goto_1
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, p1, v0

    .line 978
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v2

    if-ne p1, v1, :cond_4

    .line 979
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v3

    invoke-static {p1}, Lmiui/date/Calendar;->F(I)I

    move-result p1

    goto :goto_2

    .line 980
    :cond_4
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    aget p1, p1, v3

    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aget p2, p2, v0

    invoke-static {p1, p2}, Lmiui/date/Calendar;->h(II)I

    move-result p1

    .line 981
    :goto_2
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v0, 0xa

    aget p2, p2, v0

    if-le p2, p1, :cond_5

    .line 982
    iget-object p2, p0, Lmiui/date/Calendar;->mFields:[I

    aput p1, p2, v0

    .line 984
    :cond_5
    invoke-direct {p0}, Lmiui/date/Calendar;->cf()V

    .line 985
    return-object p0

    .line 988
    :cond_6
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v0

    if-ge p2, v0, :cond_8

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    if-gt p2, v0, :cond_7

    goto :goto_3

    .line 989
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value is out of date range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_8
    :goto_3
    :try_start_0
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p1

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    nop

    .line 998
    return-object p0

    .line 995
    :catch_0
    move-exception p2

    .line 996
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported set field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(IIIIIII)Lmiui/date/Calendar;
    .locals 2

    .line 852
    if-ltz p2, :cond_5

    const/16 v0, 0xb

    if-gt p2, v0, :cond_5

    .line 856
    if-lez p3, :cond_4

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {v0, p2}, Lmiui/date/Calendar;->a(ZI)I

    move-result v0

    if-gt p3, v0, :cond_4

    .line 860
    if-ltz p4, :cond_3

    const/16 v0, 0x17

    if-gt p4, v0, :cond_3

    .line 864
    if-ltz p5, :cond_2

    const/16 v0, 0x3b

    if-gt p5, v0, :cond_2

    .line 868
    if-ltz p6, :cond_1

    if-gt p6, v0, :cond_1

    .line 872
    if-ltz p7, :cond_0

    const/16 v0, 0x3e7

    if-gt p7, v0, :cond_0

    .line 876
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 877
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v0, 0x5

    aput p2, p1, v0

    .line 878
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x9

    aput p3, p1, p2

    .line 879
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x12

    aput p4, p1, p2

    .line 880
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x14

    aput p5, p1, p2

    .line 881
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x15

    aput p6, p1, p2

    .line 882
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x16

    aput p7, p1, p2

    .line 884
    invoke-direct {p0}, Lmiui/date/Calendar;->ce()V

    .line 885
    return-object p0

    .line 873
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid millisecond "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 869
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid second "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 865
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid minute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 861
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid hour "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 857
    :cond_4
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Year "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " month "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no day "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 853
    :cond_5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Year "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setChineseTime(IIIZIIII)Lmiui/date/Calendar;
    .locals 2

    .line 901
    const/16 v0, 0x76c

    if-lt p1, v0, :cond_a

    const/16 v0, 0x834

    if-gt p1, v0, :cond_a

    .line 905
    if-ltz p2, :cond_9

    const/16 v0, 0xb

    if-gt p2, v0, :cond_9

    .line 909
    if-eqz p4, :cond_1

    invoke-static {p1}, Lmiui/date/Calendar;->G(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Year "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no leap month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 913
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 914
    if-lez p3, :cond_2

    invoke-static {p1}, Lmiui/date/Calendar;->F(I)I

    move-result v0

    if-gt p3, v0, :cond_2

    goto :goto_1

    .line 915
    :cond_2
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Year "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " month "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no day "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 918
    :cond_3
    if-lez p3, :cond_8

    invoke-static {p1, p2}, Lmiui/date/Calendar;->h(II)I

    move-result v0

    if-gt p3, v0, :cond_8

    .line 923
    :goto_1
    if-ltz p5, :cond_7

    const/16 v0, 0x17

    if-gt p5, v0, :cond_7

    .line 927
    if-ltz p6, :cond_6

    const/16 v0, 0x3b

    if-gt p6, v0, :cond_6

    .line 931
    if-ltz p7, :cond_5

    if-gt p7, v0, :cond_5

    .line 935
    if-ltz p8, :cond_4

    const/16 v0, 0x3e8

    if-gt p8, v0, :cond_4

    .line 939
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 940
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v0, 0x6

    aput p2, p1, v0

    .line 941
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0xa

    aput p3, p1, p2

    .line 942
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x8

    aput p4, p1, p2

    .line 943
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x12

    aput p5, p1, p2

    .line 944
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x14

    aput p6, p1, p2

    .line 945
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x15

    aput p7, p1, p2

    .line 946
    iget-object p1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 p2, 0x16

    aput p8, p1, p2

    .line 948
    invoke-direct {p0}, Lmiui/date/Calendar;->cf()V

    .line 949
    return-object p0

    .line 936
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid millisecond "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 932
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid second "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 928
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid minute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 924
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid hour "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 919
    :cond_8
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Year "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " month "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no day "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 906
    :cond_9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Year "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no month "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 902
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Date out of range [1900 - 2100] expected, but year is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setGregorianChange(J)V
    .locals 3

    .line 1433
    iput-wide p1, p0, Lmiui/date/Calendar;->gregorianCutover:J

    .line 1434
    new-instance v0, Lmiui/date/Calendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 1435
    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 1437
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lmiui/date/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lmiui/date/Calendar;->changeYear:I

    .line 1438
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1439
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/date/Calendar;->changeYear:I

    .line 1442
    :cond_0
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit16 v2, v2, 0x190

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiui/date/Calendar;->julianError:I

    .line 1444
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit16 v1, v1, 0x190

    iget v2, p0, Lmiui/date/Calendar;->julianError:I

    add-int/2addr v1, v2

    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/date/Calendar;->julianSkew:I

    .line 1447
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    .line 1448
    iget v1, p0, Lmiui/date/Calendar;->julianSkew:I

    if-ge v0, v1, :cond_1

    .line 1449
    add-int/lit8 p2, v0, -0x1

    iput p2, p0, Lmiui/date/Calendar;->currentYearSkew:I

    .line 1450
    iget p2, p0, Lmiui/date/Calendar;->julianSkew:I

    sub-int/2addr p2, v0

    add-int/2addr p2, p1

    iput p2, p0, Lmiui/date/Calendar;->lastYearSkew:I

    goto :goto_0

    .line 1452
    :cond_1
    iput p2, p0, Lmiui/date/Calendar;->lastYearSkew:I

    .line 1453
    iget p1, p0, Lmiui/date/Calendar;->julianSkew:I

    iput p1, p0, Lmiui/date/Calendar;->currentYearSkew:I

    .line 1455
    :goto_0
    return-void
.end method

.method public setTimeInMillis(J)Lmiui/date/Calendar;
    .locals 0

    .line 835
    iput-wide p1, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 836
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 837
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;
    .locals 2

    .line 802
    if-nez p1, :cond_0

    .line 803
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 806
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    :cond_1
    iput-object p1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 808
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 810
    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1628
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 1629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const-string v1, "[time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    iget-wide v1, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1632
    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    iget-object v1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    .line 1636
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1637
    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1639
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1641
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1643
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 1644
    return-object v1
.end method
