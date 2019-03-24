.class public Lmiui/date/Holidays;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/date/Holidays$HolidaysSingleton;
    }
.end annotation


# static fields
.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/date/Holidays;",
            ">;"
        }
    .end annotation
.end field

.field private static final xL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final xM:I = -0x1

.field private static final xN:I = -0x1

.field private static final xO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[[I>;"
        }
    .end annotation
.end field

.field private static final xP:[[I

.field private static final xS:Landroid/util/SparseIntArray;


# instance fields
.field private nY:Landroid/content/res/Resources;

.field private xQ:Ljava/lang/String;

.field private xR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    sget v4, Lcom/miui/internal/R$string;->the_eve_of_the_spring_festival:I

    const/4 v5, 0x1

    aput v4, v2, v5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const/16 v4, 0x65

    aput v4, v2, v3

    sget v6, Lcom/miui/internal/R$string;->the_spring_festival:I

    aput v6, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const/16 v6, 0x66

    aput v6, v2, v3

    sget v6, Lcom/miui/internal/R$string;->the_second_day:I

    aput v6, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/16 v6, 0x67

    aput v6, v2, v3

    sget v6, Lcom/miui/internal/R$string;->the_third_day:I

    aput v6, v2, v5

    const/4 v6, 0x3

    aput-object v2, v0, v6

    new-array v2, v1, [I

    const/16 v7, 0x68

    aput v7, v2, v3

    sget v7, Lcom/miui/internal/R$string;->the_forth_day:I

    aput v7, v2, v5

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [I

    const/16 v8, 0x69

    aput v8, v2, v3

    sget v8, Lcom/miui/internal/R$string;->the_fifth_day:I

    aput v8, v2, v5

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v1, [I

    const/16 v9, 0x6a

    aput v9, v2, v3

    sget v9, Lcom/miui/internal/R$string;->the_sixth_day:I

    aput v9, v2, v5

    const/4 v9, 0x6

    aput-object v2, v0, v9

    new-array v2, v1, [I

    const/16 v10, 0x6b

    aput v10, v2, v3

    sget v10, Lcom/miui/internal/R$string;->the_seventh_day:I

    aput v10, v2, v5

    const/4 v10, 0x7

    aput-object v2, v0, v10

    new-array v2, v1, [I

    const/16 v11, 0x73

    aput v11, v2, v3

    sget v11, Lcom/miui/internal/R$string;->the_lantern_festival:I

    aput v11, v2, v5

    const/16 v11, 0x8

    aput-object v2, v0, v11

    new-array v2, v1, [I

    const/16 v12, 0x1f9

    aput v12, v2, v3

    sget v12, Lcom/miui/internal/R$string;->the_dragon_boat_festival:I

    aput v12, v2, v5

    const/16 v12, 0x9

    aput-object v2, v0, v12

    new-array v2, v1, [I

    const/16 v13, 0x2c3

    aput v13, v2, v3

    sget v13, Lcom/miui/internal/R$string;->the_night_of_sevens:I

    aput v13, v2, v5

    const/16 v13, 0xa

    aput-object v2, v0, v13

    new-array v2, v1, [I

    const/16 v14, 0x2cb

    aput v14, v2, v3

    sget v14, Lcom/miui/internal/R$string;->the_spirit_festival:I

    aput v14, v2, v5

    const/16 v14, 0xb

    aput-object v2, v0, v14

    new-array v2, v1, [I

    const/16 v14, 0x32f

    aput v14, v2, v3

    sget v14, Lcom/miui/internal/R$string;->the_mid_autumn_festival:I

    aput v14, v2, v5

    const/16 v14, 0xc

    aput-object v2, v0, v14

    new-array v2, v1, [I

    const/16 v14, 0x38d

    aput v14, v2, v3

    sget v14, Lcom/miui/internal/R$string;->the_double_ninth_festival:I

    aput v14, v2, v5

    const/16 v14, 0xd

    aput-object v2, v0, v14

    new-array v2, v1, [I

    const/16 v14, 0x3f7

    aput v14, v2, v3

    sget v14, Lcom/miui/internal/R$string;->the_water_lantern_festival:I

    aput v14, v2, v5

    const/16 v14, 0xe

    aput-object v2, v0, v14

    new-array v2, v1, [I

    const/16 v14, 0x4b8

    aput v14, v2, v3

    sget v14, Lcom/miui/internal/R$string;->the_laba_festival:I

    aput v14, v2, v5

    const/16 v14, 0xf

    aput-object v2, v0, v14

    sput-object v0, Lmiui/date/Holidays;->xP:[[I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    .line 63
    sget-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    const-string v2, ""

    new-array v14, v10, [[I

    new-array v15, v1, [I

    aput v4, v15, v3

    sget v16, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v16, v15, v5

    aput-object v15, v14, v3

    new-array v15, v1, [I

    const/16 v16, 0xd6

    aput v16, v15, v3

    sget v17, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v17, v15, v5

    aput-object v15, v14, v5

    new-array v15, v1, [I

    const/16 v17, 0x134

    aput v17, v15, v3

    sget v17, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v17, v15, v5

    aput-object v15, v14, v1

    new-array v15, v1, [I

    const/16 v17, 0x138

    aput v17, v15, v3

    sget v17, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v17, v15, v5

    aput-object v15, v14, v6

    new-array v15, v1, [I

    const/16 v17, 0x191

    aput v17, v15, v3

    sget v17, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v17, v15, v5

    aput-object v15, v14, v7

    new-array v15, v1, [I

    const/16 v17, 0x1f5

    aput v17, v15, v3

    sget v18, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v18, v15, v5

    aput-object v15, v14, v8

    new-array v15, v1, [I

    const/16 v18, 0x4c9

    aput v18, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v19, v15, v5

    aput-object v15, v14, v9

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    const-string v2, "CN"

    const/16 v14, 0xd

    new-array v14, v14, [[I

    new-array v15, v1, [I

    aput v4, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v19, v15, v5

    aput-object v15, v14, v3

    new-array v15, v1, [I

    aput v16, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v19, v15, v5

    aput-object v15, v14, v5

    new-array v15, v1, [I

    const/16 v19, 0x134

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v19, v15, v5

    aput-object v15, v14, v1

    new-array v15, v1, [I

    const/16 v19, 0x138

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v19, v15, v5

    aput-object v15, v14, v6

    new-array v15, v1, [I

    const/16 v19, 0x191

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v19, v15, v5

    aput-object v15, v14, v7

    new-array v15, v1, [I

    aput v17, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v19, v15, v5

    aput-object v15, v14, v8

    new-array v15, v1, [I

    const/16 v19, 0x1f8

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_chinese_youth_day:I

    aput v19, v15, v5

    aput-object v15, v14, v9

    new-array v15, v1, [I

    const/16 v19, 0x259

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_childrens_day:I

    aput v19, v15, v5

    aput-object v15, v14, v10

    new-array v15, v1, [I

    const/16 v19, 0x2bd

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_partys_day:I

    aput v19, v15, v5

    aput-object v15, v14, v11

    new-array v15, v1, [I

    const/16 v19, 0x321

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_armys_day:I

    aput v19, v15, v5

    aput-object v15, v14, v12

    new-array v15, v1, [I

    const/16 v19, 0x38e

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v19, v15, v5

    aput-object v15, v14, v13

    new-array v15, v1, [I

    const/16 v19, 0x3e9

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_national_day:I

    aput v19, v15, v5

    const/16 v19, 0xb

    aput-object v15, v14, v19

    new-array v15, v1, [I

    aput v18, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v19, v15, v5

    const/16 v19, 0xc

    aput-object v15, v14, v19

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    const-string v2, "TW"

    const/16 v14, 0x12

    new-array v14, v14, [[I

    new-array v15, v1, [I

    aput v4, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v19, v15, v5

    aput-object v15, v14, v3

    new-array v15, v1, [I

    aput v16, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v19, v15, v5

    aput-object v15, v14, v5

    new-array v15, v1, [I

    const/16 v19, 0xe4

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_peace_day:I

    aput v19, v15, v5

    aput-object v15, v14, v1

    new-array v15, v1, [I

    const/16 v19, 0x134

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v19, v15, v5

    aput-object v15, v14, v6

    new-array v15, v1, [I

    const/16 v19, 0x138

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v19, v15, v5

    aput-object v15, v14, v7

    new-array v15, v1, [I

    const/16 v19, 0x13a

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_anti_aggression_day:I

    aput v19, v15, v5

    aput-object v15, v14, v8

    new-array v15, v1, [I

    const/16 v19, 0x149

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_tw_youth_day:I

    aput v19, v15, v5

    aput-object v15, v14, v9

    new-array v15, v1, [I

    const/16 v19, 0x191

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v19, v15, v5

    aput-object v15, v14, v10

    new-array v15, v1, [I

    const/16 v19, 0x194

    aput v19, v15, v3

    sget v19, Lcom/miui/internal/R$string;->the_tw_childrens_day:I

    aput v19, v15, v5

    aput-object v15, v14, v11

    new-array v11, v1, [I

    aput v17, v11, v3

    sget v15, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v15, v11, v5

    aput-object v11, v14, v12

    new-array v11, v1, [I

    const/16 v12, 0x2cb

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_anniversary_of_lifting_martial_law:I

    aput v12, v11, v5

    aput-object v11, v14, v13

    new-array v11, v1, [I

    const/16 v12, 0x387

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_armed_forces_day:I

    aput v12, v11, v5

    const/16 v12, 0xb

    aput-object v11, v14, v12

    new-array v11, v1, [I

    const/16 v12, 0x3a0

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v12, v11, v5

    const/16 v12, 0xc

    aput-object v11, v14, v12

    new-array v11, v1, [I

    const/16 v12, 0x3f2

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_national_day:I

    aput v12, v11, v5

    const/16 v12, 0xd

    aput-object v11, v14, v12

    new-array v11, v1, [I

    const/16 v12, 0x400

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_united_nations_day:I

    aput v12, v11, v5

    const/16 v12, 0xe

    aput-object v11, v14, v12

    new-array v11, v1, [I

    const/16 v12, 0x401

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_retrocession_day:I

    aput v12, v11, v5

    const/16 v12, 0xf

    aput-object v11, v14, v12

    new-array v11, v1, [I

    const/16 v12, 0x458

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_national_father_day:I

    aput v12, v11, v5

    const/16 v12, 0x10

    aput-object v11, v14, v12

    new-array v11, v1, [I

    aput v18, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v12, v11, v5

    const/16 v12, 0x11

    aput-object v11, v14, v12

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    const-string v2, "HK"

    new-array v10, v10, [[I

    new-array v11, v1, [I

    const/4 v12, -0x1

    aput v12, v11, v3

    sget v12, Lcom/miui/internal/R$string;->the_easter_day:I

    aput v12, v11, v5

    aput-object v11, v10, v3

    new-array v11, v1, [I

    aput v4, v11, v3

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v11, v5

    aput-object v11, v10, v5

    new-array v4, v1, [I

    aput v16, v4, v3

    sget v11, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v11, v4, v5

    aput-object v4, v10, v1

    new-array v4, v1, [I

    aput v17, v4, v3

    sget v11, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v11, v4, v5

    aput-object v4, v10, v6

    new-array v4, v1, [I

    const/16 v6, 0x2bd

    aput v6, v4, v3

    sget v6, Lcom/miui/internal/R$string;->the_hksar_establishment_day:I

    aput v6, v4, v5

    aput-object v4, v10, v7

    new-array v4, v1, [I

    const/16 v6, 0x3e9

    aput v6, v4, v3

    sget v6, Lcom/miui/internal/R$string;->the_national_day:I

    aput v6, v4, v5

    aput-object v4, v10, v8

    new-array v1, v1, [I

    aput v18, v1, v3

    sget v3, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v3, v1, v5

    aput-object v1, v10, v9

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lmiui/date/Holidays$HolidaysSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/date/Holidays$HolidaysSingleton;-><init>(Lmiui/date/Holidays$1;)V

    sput-object v0, Lmiui/date/Holidays;->s:Lmiui/util/SoftReferenceSingleton;

    .line 120
    new-instance v0, Lmiui/date/Holidays$1;

    invoke-direct {v0}, Lmiui/date/Holidays$1;-><init>()V

    .line 121
    invoke-static {v0, v5}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/Holidays;->xL:Lmiui/util/Pools$Pool;

    .line 215
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lmiui/date/Holidays;->xS:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 133
    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/date/Holidays;-><init>(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/date/Holidays;->nY:Landroid/content/res/Resources;

    .line 146
    invoke-direct {p0, p1}, Lmiui/date/Holidays;->u(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 141
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/date/Holidays;-><init>(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmiui/date/Holidays;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/date/Holidays;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lmiui/date/Holidays;->u(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ck()Lmiui/util/SoftReferenceSingleton;
    .locals 1

    .line 34
    sget-object v0, Lmiui/date/Holidays;->s:Lmiui/util/SoftReferenceSingleton;

    return-object v0
.end method

.method public static getDefault()Lmiui/date/Holidays;
    .locals 1

    .line 159
    sget-object v0, Lmiui/date/Holidays;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Holidays;

    return-object v0
.end method

.method private u(Ljava/lang/String;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/date/Holidays;->xQ:Ljava/lang/String;

    .line 151
    const-string p1, "CN"

    iget-object v0, p0, Lmiui/date/Holidays;->xQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "HK"

    iget-object v0, p0, Lmiui/date/Holidays;->xQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TW"

    iget-object v0, p0, Lmiui/date/Holidays;->xQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lmiui/date/Holidays;->xR:Z

    .line 152
    return-void
.end method


# virtual methods
.method protected final getEasterDayOfYear(I)I
    .locals 10

    .line 224
    sget-object v0, Lmiui/date/Holidays;->xS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 225
    if-nez v0, :cond_2

    .line 226
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/date/Calendar;->i(II)I

    move-result v1

    and-int/lit16 v5, v1, 0xff

    .line 227
    sget-object v1, Lmiui/date/Holidays;->xL:Lmiui/util/Pools$Pool;

    invoke-interface {v1}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmiui/date/Calendar;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    move-result-object v1

    .line 229
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x6

    const/16 v5, 0xf

    if-ge v3, v5, :cond_0

    .line 230
    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v5, v2

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {v1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-static {p1}, Lmiui/date/Calendar;->F(I)I

    move-result v3

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    invoke-static {p1, v3}, Lmiui/date/Calendar;->h(II)I

    move-result v3

    .line 237
    :goto_0
    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v3, v2

    add-int/2addr v5, v3

    .line 240
    :goto_1
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 242
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 262
    :pswitch_0
    invoke-virtual {v1, v2, v6}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_2

    .line 259
    :pswitch_1
    invoke-virtual {v1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 260
    goto :goto_2

    .line 256
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {v1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 257
    goto :goto_2

    .line 253
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {v1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 254
    goto :goto_2

    .line 250
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 251
    goto :goto_2

    .line 247
    :pswitch_5
    invoke-virtual {v1, v2, v4}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 248
    goto :goto_2

    .line 244
    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {v1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 245
    nop

    .line 266
    :goto_2
    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    sget-object v2, Lmiui/date/Holidays;->xL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 268
    sget-object v1, Lmiui/date/Holidays;->xS:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHolidayName(Lmiui/date/Calendar;)Ljava/lang/String;
    .locals 10

    .line 169
    sget-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    iget-object v1, p0, Lmiui/date/Holidays;->xQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 170
    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lmiui/date/Holidays;->xO:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 175
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 177
    const/4 v3, 0x0

    array-length v4, v0

    move v5, v3

    :goto_0
    const/4 v6, -0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v0, v5

    .line 178
    aget v8, v7, v3

    if-eq v8, v6, :cond_1

    .line 185
    aget v6, v7, v3

    if-ne v6, v1, :cond_2

    .line 186
    iget-object p1, p0, Lmiui/date/Holidays;->nY:Landroid/content/res/Resources;

    aget v0, v7, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :cond_1
    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lmiui/date/Holidays;->getEasterDayOfYear(I)I

    move-result v6

    if-ne v1, v6, :cond_2

    .line 181
    iget-object p1, p0, Lmiui/date/Holidays;->nY:Landroid/content/res/Resources;

    aget v0, v7, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 192
    :cond_3
    iget-boolean v0, p0, Lmiui/date/Holidays;->xR:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v0

    if-nez v0, :cond_6

    .line 193
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x64

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    sget-object v1, Lmiui/date/Holidays;->xP:[[I

    .line 195
    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v7, v1, v5

    .line 196
    aget v8, v7, v3

    if-eq v8, v6, :cond_4

    .line 203
    invoke-virtual {p1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v8

    if-nez v8, :cond_5

    .line 204
    aget v8, v7, v3

    if-ne v0, v8, :cond_5

    .line 205
    iget-object p1, p0, Lmiui/date/Holidays;->nY:Landroid/content/res/Resources;

    aget v0, v7, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :cond_4
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Lmiui/date/Calendar;->E(I)I

    move-result v8

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 199
    iget-object p1, p0, Lmiui/date/Holidays;->nY:Landroid/content/res/Resources;

    aget v0, v7, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 195
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 212
    :cond_6
    const-string p1, ""

    return-object p1
.end method
