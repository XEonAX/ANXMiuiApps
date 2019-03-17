.class public final enum Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;
.super Ljava/lang/Enum;
.source "nexProtoErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

.field public static final enum InvalidHDR:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

.field public static final enum InvalidRQ:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

.field public static final enum InvalidRS:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

.field public static final enum InvalidSSID:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

.field public static final enum OK:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

.field public static final enum Unrecognized:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->OK:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    .line 13
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    const-string v1, "InvalidHDR"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidHDR:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    .line 14
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    const-string v1, "InvalidRQ"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v6, v2}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRQ:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    .line 15
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    const-string v1, "InvalidRS"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v7, v2}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRS:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    .line 16
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    const-string v1, "InvalidSSID"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v8, v2}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidSSID:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    .line 17
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    const-string v1, "Unrecognized"

    const/4 v2, 0x5

    const/16 v3, 0x320

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->Unrecognized:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->OK:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidHDR:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRQ:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRS:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidSSID:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->Unrecognized:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->$VALUES:[Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->mValue:I

    .line 23
    return-void
.end method

.method static fromValue(I)Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;
    .locals 5

    .prologue
    .line 30
    invoke-static {}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->values()[Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 31
    invoke-virtual {v0}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 34
    :goto_1
    return-object v0

    .line 30
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->Unrecognized:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->$VALUES:[Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->mValue:I

    return v0
.end method
