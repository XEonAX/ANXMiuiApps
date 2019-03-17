.class public final enum Lorg/keyczar/enums/CipherMode;
.super Ljava/lang/Enum;
.source "CipherMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/enums/CipherMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/enums/CipherMode;

.field public static final enum CBC:Lorg/keyczar/enums/CipherMode;

.field public static final enum CTR:Lorg/keyczar/enums/CipherMode;

.field public static final enum DET_CBC:Lorg/keyczar/enums/CipherMode;

.field public static final enum ECB:Lorg/keyczar/enums/CipherMode;


# instance fields
.field private jceMode:Ljava/lang/String;

.field private value:I
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/keyczar/enums/CipherMode;

    const-string v1, "CBC"

    const-string v4, "AES/CBC/PKCS5Padding"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    .line 32
    new-instance v3, Lorg/keyczar/enums/CipherMode;

    const-string v4, "CTR"

    const-string v7, "AES/CTR/NoPadding"

    move v6, v5

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    .line 33
    new-instance v6, Lorg/keyczar/enums/CipherMode;

    const-string v7, "ECB"

    const-string v10, "AES/ECB/NoPadding"

    move v8, v12

    move v9, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    .line 34
    new-instance v6, Lorg/keyczar/enums/CipherMode;

    const-string v7, "DET_CBC"

    const-string v10, "AES/CBC/PKCS5Padding"

    move v8, v13

    move v9, v13

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/keyczar/enums/CipherMode;

    sget-object v1, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v12

    sget-object v1, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v13

    sput-object v0, Lorg/keyczar/enums/CipherMode;->$VALUES:[Lorg/keyczar/enums/CipherMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lorg/keyczar/enums/CipherMode;->value:I

    .line 42
    iput-object p4, p0, Lorg/keyczar/enums/CipherMode;->jceMode:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static getMode(I)Lorg/keyczar/enums/CipherMode;
    .locals 1

    .prologue
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    sget-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    goto :goto_0

    .line 60
    :pswitch_2
    sget-object v0, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    goto :goto_0

    .line 62
    :pswitch_3
    sget-object v0, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/enums/CipherMode;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/keyczar/enums/CipherMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/enums/CipherMode;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/enums/CipherMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/keyczar/enums/CipherMode;->$VALUES:[Lorg/keyczar/enums/CipherMode;

    invoke-virtual {v0}, [Lorg/keyczar/enums/CipherMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/enums/CipherMode;

    return-object v0
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/keyczar/enums/CipherMode;->jceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputSize(II)I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    if-ne p0, v0, :cond_1

    .line 69
    div-int v0, p2, p1

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr p1, v0

    .line 77
    :cond_0
    :goto_0
    return p1

    .line 70
    :cond_1
    sget-object v0, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    if-eq p0, v0, :cond_0

    .line 72
    sget-object v0, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    if-ne p0, v0, :cond_2

    .line 73
    div-int/lit8 v0, p1, 0x2

    add-int p1, p2, v0

    goto :goto_0

    .line 74
    :cond_2
    sget-object v0, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    if-ne p0, v0, :cond_3

    .line 75
    div-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr p1, v0

    goto :goto_0

    .line 77
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method getValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/keyczar/enums/CipherMode;->value:I

    return v0
.end method
