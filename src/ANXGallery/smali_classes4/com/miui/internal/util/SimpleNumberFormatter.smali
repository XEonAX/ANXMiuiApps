.class public Lcom/miui/internal/util/SimpleNumberFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static jA:Ljava/util/Locale;

.field private static jB:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/SimpleNumberFormatter;->jA:Ljava/util/Locale;

    .line 18
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Lcom/miui/internal/util/SimpleNumberFormatter;->jA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    sput-char v0, Lcom/miui/internal/util/SimpleNumberFormatter;->jB:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Locale;)C
    .locals 1

    .line 87
    if-eqz p0, :cond_1

    .line 91
    sget-object v0, Lcom/miui/internal/util/SimpleNumberFormatter;->jA:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    sput-char v0, Lcom/miui/internal/util/SimpleNumberFormatter;->jB:C

    .line 93
    sput-object p0, Lcom/miui/internal/util/SimpleNumberFormatter;->jA:Ljava/util/Locale;

    .line 95
    :cond_0
    sget-char p0, Lcom/miui/internal/util/SimpleNumberFormatter;->jB:C

    return p0

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "locale == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(CLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 72
    const/16 v1, 0x30

    sub-int/2addr p0, v1

    .line 73
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    .line 74
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 76
    if-lt v4, v1, :cond_0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    .line 77
    add-int/2addr v4, p0

    int-to-char v4, v4

    .line 79
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v2}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 83
    return-object p0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 3

    .line 35
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 36
    nop

    .line 37
    if-gez p1, :cond_0

    .line 38
    neg-int p1, p1

    .line 39
    add-int/lit8 p0, p0, -0x1

    .line 40
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    const/16 v1, 0x2710

    const/16 v2, 0x30

    if-lt p1, v1, :cond_2

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v1, p0, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_3

    .line 51
    const/4 v1, 0x4

    goto :goto_1

    .line 52
    :cond_3
    const/16 v1, 0x64

    if-lt p1, v1, :cond_4

    .line 53
    const/4 v1, 0x3

    goto :goto_1

    .line 54
    :cond_4
    const/16 v1, 0xa

    if-lt p1, v1, :cond_5

    .line 55
    const/4 v1, 0x2

    goto :goto_1

    .line 57
    :cond_5
    nop

    .line 60
    const/4 v1, 0x1

    :goto_1
    if-ge v1, p0, :cond_6

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 67
    return-object p0
.end method

.method public static format(I)Ljava/lang/String;
    .locals 1

    .line 22
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(II)Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/SimpleNumberFormatter;->a(Ljava/util/Locale;)C

    move-result v0

    .line 27
    invoke-static {p0, p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->a(II)Ljava/lang/String;

    move-result-object p0

    .line 28
    const/16 p1, 0x30

    if-eq v0, p1, :cond_0

    .line 29
    invoke-static {v0, p0}, Lcom/miui/internal/util/SimpleNumberFormatter;->a(CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method
