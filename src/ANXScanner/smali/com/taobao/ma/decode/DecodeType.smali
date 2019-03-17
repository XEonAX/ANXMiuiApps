.class public interface abstract Lcom/taobao/ma/decode/DecodeType;
.super Ljava/lang/Object;
.source "DecodeType.java"


# static fields
.field public static final ALLCODE:I = 0x8eff

.field public static final BAR:I = 0x0

.field public static final CODE128:I = 0x20

.field public static final CODE39:I = 0x10

.field public static final DMCODE:I = 0x400

.field public static final EAN13:I = 0x1

.field public static final EAN14:I = 0x80

.field public static final EAN8:I = 0x2

.field public static final Express:I = 0x2

.field public static final FASTMAIL:I = 0x30

.field public static final GEN3GCODE:I = 0x8000

.field public static final ITF:I = 0x40

.field public static final MA4GCODE:I = 0x800

.field public static final ONE:I = 0x7f

.field public static final ONECODE:I = 0xff

.field public static final QR:I = 0x1

.field public static final QRCODE:I = 0x200

.field public static final UPCA:I = 0x4

.field public static final UPCE:I = 0x8

.field public static final strTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EAN13"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EAN8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UPCA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UPCE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CODE39"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CODE128"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EAN14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/ma/decode/DecodeType;->strTypes:[Ljava/lang/String;

    return-void
.end method
