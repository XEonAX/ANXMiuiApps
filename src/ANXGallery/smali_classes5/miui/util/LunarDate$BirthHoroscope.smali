.class public Lmiui/util/LunarDate$BirthHoroscope;
.super Ljava/lang/Object;
.source "LunarDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LunarDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthHoroscope"
.end annotation


# static fields
.field private static final BASE_DATE_STRING:Ljava/lang/String; = "1900-1-31"

.field private static final DAY_IN_MILLS:J = 0x5265c00L

.field private static sBaseDate:Ljava/util/Date;

.field private static final sChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private static sDiZhi:[Ljava/lang/String;

.field private static sIsInitialized:Z

.field private static sJiaZi:[Ljava/lang/String;

.field private static sTianGan:[Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDay:I

.field private mHour:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1092
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IIII)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hour"    # I

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p1, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    .line 1111
    iput p2, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    .line 1112
    iput p3, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    .line 1113
    iput p4, p0, Lmiui/util/LunarDate$BirthHoroscope;->mDay:I

    .line 1114
    iput p5, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    .line 1115
    return-void
.end method

.method private static getLunarHourIndex(I)I
    .locals 1
    .param p0, "hour"    # I

    .line 1265
    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x18

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static newInstance(Landroid/content/res/Resources;Ljava/util/Calendar;)Lmiui/util/LunarDate$BirthHoroscope;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "calendar"    # Ljava/util/Calendar;

    move-object/from16 v1, p0

    .line 1119
    :try_start_0
    sget-boolean v0, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1120
    sget v0, Lcom/miui/system/internal/R$array;->tian_gan:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    .line 1121
    sget v0, Lcom/miui/system/internal/R$array;->di_zhi:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    .line 1122
    sget v0, Lcom/miui/system/internal/R$array;->jia_zi:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    .line 1123
    sget-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "1900-1-31"

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    .line 1124
    sput-boolean v2, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :cond_0
    nop

    .line 1132
    const/4 v0, 0x0

    .line 1135
    .local v0, "leapMonth":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v5, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v3, v3

    .line 1136
    .local v3, "dayOffset":I
    add-int/lit8 v4, v3, 0x28

    .line 1137
    .local v4, "lunarDay":I
    const/16 v5, 0xe

    .line 1141
    .local v5, "lunarMonth":I
    const/4 v6, 0x0

    .line 1142
    .local v6, "dayOfYear":I
    const/16 v7, 0x76c

    .local v7, "iYear":I
    :goto_0
    const/16 v8, 0x802

    if-ge v7, v8, :cond_1

    if-lez v3, :cond_1

    .line 1143
    invoke-static {v7}, Lmiui/util/LunarDate;->access$000(I)I

    move-result v6

    .line 1144
    sub-int/2addr v3, v6

    .line 1145
    add-int/lit8 v5, v5, 0xc

    .line 1142
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1148
    :cond_1
    if-gez v3, :cond_2

    .line 1149
    add-int/2addr v3, v6

    .line 1150
    add-int/lit8 v7, v7, -0x1

    .line 1151
    add-int/lit8 v5, v5, -0xc

    .line 1155
    :cond_2
    move v14, v7

    .line 1156
    .local v14, "year":I
    add-int/lit16 v15, v7, -0x748

    .line 1157
    .local v15, "lunarYear":I
    invoke-static {v7}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v0

    .line 1158
    const/4 v8, 0x0

    .line 1161
    .local v8, "isLeapYear":Z
    const/4 v9, 0x0

    .line 1162
    .local v9, "daysOfMonth":I
    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v21

    .local v2, "iMonth":I
    .local v5, "daysOfMonth":I
    .local v9, "lunarMonth":I
    :goto_1
    const/16 v10, 0xd

    if-ge v2, v10, :cond_6

    if-lez v3, :cond_6

    .line 1164
    if-lez v0, :cond_3

    add-int/lit8 v10, v0, 0x1

    if-ne v2, v10, :cond_3

    if-nez v8, :cond_3

    .line 1165
    add-int/lit8 v2, v2, -0x1

    .line 1166
    const/4 v8, 0x1

    .line 1167
    invoke-static {v14}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v5

    goto :goto_2

    .line 1169
    :cond_3
    invoke-static {v14, v2}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v5

    .line 1171
    :goto_2
    sub-int/2addr v3, v5

    .line 1173
    if-eqz v8, :cond_4

    add-int/lit8 v10, v0, 0x1

    if-ne v2, v10, :cond_4

    .line 1174
    const/4 v8, 0x0

    .line 1176
    :cond_4
    if-nez v8, :cond_5

    .line 1177
    add-int/lit8 v9, v9, 0x1

    .line 1162
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1182
    :cond_6
    if-nez v3, :cond_8

    if-lez v0, :cond_8

    add-int/lit8 v10, v0, 0x1

    if-ne v2, v10, :cond_8

    .line 1183
    if-eqz v8, :cond_7

    .line 1184
    const/4 v8, 0x0

    goto :goto_3

    .line 1186
    :cond_7
    const/4 v8, 0x1

    .line 1187
    add-int/lit8 v2, v2, -0x1

    .line 1188
    add-int/lit8 v9, v9, -0x1

    .line 1193
    .end local v8    # "isLeapYear":Z
    .local v16, "isLeapYear":Z
    :cond_8
    :goto_3
    move/from16 v16, v8

    if-gez v3, :cond_9

    .line 1194
    add-int/2addr v3, v5

    .line 1195
    add-int/lit8 v2, v2, -0x1

    .line 1196
    add-int/lit8 v9, v9, -0x1

    .line 1199
    .end local v9    # "lunarMonth":I
    .local v17, "lunarMonth":I
    :cond_9
    move/from16 v17, v9

    move v11, v2

    .line 1200
    .local v11, "month":I
    add-int/lit8 v18, v3, 0x1

    .line 1201
    .local v18, "day":I
    const/16 v8, 0xb

    move-object/from16 v13, p1

    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 1202
    .local v19, "hour":I
    new-instance v20, Lmiui/util/LunarDate$BirthHoroscope;

    move-object/from16 v8, v20

    move-object v9, v13

    move v10, v14

    move/from16 v12, v18

    move/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Lmiui/util/LunarDate$BirthHoroscope;-><init>(Ljava/util/Calendar;IIII)V

    return-object v20

    .line 1126
    .end local v0    # "leapMonth":I
    .end local v2    # "iMonth":I
    .end local v3    # "dayOffset":I
    .end local v4    # "lunarDay":I
    .end local v5    # "daysOfMonth":I
    .end local v6    # "dayOfYear":I
    .end local v7    # "iYear":I
    .end local v11    # "month":I
    .end local v14    # "year":I
    .end local v15    # "lunarYear":I
    .end local v16    # "isLeapYear":Z
    .end local v17    # "lunarMonth":I
    .end local v18    # "day":I
    .end local v19    # "hour":I
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1128
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getBirthHoroscope()Ljava/lang/String;
    .locals 12

    .line 1207
    iget v0, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    add-int/lit16 v0, v0, -0x748

    rem-int/lit8 v0, v0, 0x3c

    .line 1209
    .local v0, "yearOffset":I
    sget-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1211
    .local v1, "year":Ljava/lang/String;
    rem-int/lit8 v0, v0, 0x5

    .line 1220
    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    .line 1221
    .local v2, "monthOffset":I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1222
    const/4 v2, 0x0

    .line 1224
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    iget v6, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    iget v6, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    rem-int/lit8 v6, v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1232
    .local v4, "month":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/util/LunarDate$BirthHoroscope;->getRiZhu()I

    move-result v5

    .line 1233
    .local v5, "dayOffset":I
    sget-object v6, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 1242
    .local v6, "day":Ljava/lang/String;
    rem-int/lit8 v7, v5, 0x5

    mul-int/lit8 v7, v7, 0x2

    .line 1243
    .local v7, "hourOffset":I
    iget v8, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    invoke-static {v8}, Lmiui/util/LunarDate$BirthHoroscope;->getLunarHourIndex(I)I

    move-result v8

    .line 1244
    .local v8, "lunarHourIndex":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    add-int v11, v7, v8

    rem-int/2addr v11, v3

    aget-object v3, v10, v11

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, "hour":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getRiZhu()I
    .locals 4

    .line 1274
    iget-object v0, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1275
    .local v0, "dayOffset":I
    add-int/lit8 v1, v0, 0x28

    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 1276
    .end local v0    # "dayOffset":I
    .local v1, "dayOffset":I
    return v1
.end method
