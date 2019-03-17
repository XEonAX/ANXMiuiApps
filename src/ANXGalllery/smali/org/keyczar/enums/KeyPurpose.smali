.class public final enum Lorg/keyczar/enums/KeyPurpose;
.super Ljava/lang/Enum;
.source "KeyPurpose.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/enums/KeyPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/enums/KeyPurpose;

.field public static final enum DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

.field public static final enum ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

.field public static final enum SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

.field public static final enum TEST:Lorg/keyczar/enums/KeyPurpose;

.field public static final enum VERIFY:Lorg/keyczar/enums/KeyPurpose;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Lorg/keyczar/enums/KeyPurpose;

    const-string v1, "DECRYPT_AND_ENCRYPT"

    const-string v2, "crypt"

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/keyczar/enums/KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    .line 43
    new-instance v0, Lorg/keyczar/enums/KeyPurpose;

    const-string v1, "ENCRYPT"

    const-string v2, "encrypt"

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/keyczar/enums/KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    .line 44
    new-instance v0, Lorg/keyczar/enums/KeyPurpose;

    const-string v1, "SIGN_AND_VERIFY"

    const-string/jumbo v2, "sign"

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/keyczar/enums/KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    .line 45
    new-instance v0, Lorg/keyczar/enums/KeyPurpose;

    const-string v1, "VERIFY"

    const-string/jumbo v2, "verify"

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/keyczar/enums/KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    .line 46
    new-instance v0, Lorg/keyczar/enums/KeyPurpose;

    const-string v1, "TEST"

    const/16 v2, 0x7f

    const-string/jumbo v3, "test"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/keyczar/enums/KeyPurpose;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/keyczar/enums/KeyPurpose;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    aput-object v1, v0, v4

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    aput-object v1, v0, v5

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    aput-object v1, v0, v6

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    aput-object v1, v0, v7

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    aput-object v1, v0, v8

    sput-object v0, Lorg/keyczar/enums/KeyPurpose;->$VALUES:[Lorg/keyczar/enums/KeyPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lorg/keyczar/enums/KeyPurpose;->value:I

    .line 53
    iput-object p4, p0, Lorg/keyczar/enums/KeyPurpose;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static getPurpose(I)Lorg/keyczar/enums/KeyPurpose;
    .locals 1

    .prologue
    .line 65
    sparse-switch p0, :sswitch_data_0

    .line 77
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 67
    :sswitch_0
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 69
    :sswitch_1
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 71
    :sswitch_2
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 73
    :sswitch_3
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 75
    :sswitch_4
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method public static getPurpose(Ljava/lang/String;)Lorg/keyczar/enums/KeyPurpose;
    .locals 1

    .prologue
    .line 81
    if-eqz p0, :cond_4

    .line 82
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v0}, Lorg/keyczar/enums/KeyPurpose;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    .line 94
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v0}, Lorg/keyczar/enums/KeyPurpose;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v0}, Lorg/keyczar/enums/KeyPurpose;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 88
    :cond_2
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v0}, Lorg/keyczar/enums/KeyPurpose;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v0}, Lorg/keyczar/enums/KeyPurpose;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/enums/KeyPurpose;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/keyczar/enums/KeyPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/enums/KeyPurpose;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/enums/KeyPurpose;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->$VALUES:[Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v0}, [Lorg/keyczar/enums/KeyPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/enums/KeyPurpose;

    return-object v0
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/keyczar/enums/KeyPurpose;->name:Ljava/lang/String;

    return-object v0
.end method

.method getValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/keyczar/enums/KeyPurpose;->value:I

    return v0
.end method
