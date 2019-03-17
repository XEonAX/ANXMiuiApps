.class public final enum Lorg/keyczar/enums/Flag;
.super Ljava/lang/Enum;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/enums/Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/enums/Flag;

.field public static final enum ASYMMETRIC:Lorg/keyczar/enums/Flag;

.field public static final enum CRYPTER:Lorg/keyczar/enums/Flag;

.field public static final enum DESTINATION:Lorg/keyczar/enums/Flag;

.field public static final enum LOCATION:Lorg/keyczar/enums/Flag;

.field public static final enum NAME:Lorg/keyczar/enums/Flag;

.field public static final enum PADDING:Lorg/keyczar/enums/Flag;

.field public static final enum PASSPHRASE:Lorg/keyczar/enums/Flag;

.field public static final enum PEMFILE:Lorg/keyczar/enums/Flag;

.field public static final enum PURPOSE:Lorg/keyczar/enums/Flag;

.field public static final enum SIZE:Lorg/keyczar/enums/Flag;

.field public static final enum STATUS:Lorg/keyczar/enums/Flag;

.field public static final enum VERSION:Lorg/keyczar/enums/Flag;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "LOCATION"

    const-string v2, "location"

    invoke-direct {v0, v1, v4, v2}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->LOCATION:Lorg/keyczar/enums/Flag;

    .line 28
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v5, v2}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->NAME:Lorg/keyczar/enums/Flag;

    .line 29
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "SIZE"

    const-string/jumbo v2, "size"

    invoke-direct {v0, v1, v6, v2}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->SIZE:Lorg/keyczar/enums/Flag;

    .line 30
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "STATUS"

    const-string/jumbo v2, "status"

    invoke-direct {v0, v1, v7, v2}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->STATUS:Lorg/keyczar/enums/Flag;

    .line 31
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "PURPOSE"

    const-string v2, "purpose"

    invoke-direct {v0, v1, v8, v2}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->PURPOSE:Lorg/keyczar/enums/Flag;

    .line 32
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "PADDING"

    const/4 v2, 0x5

    const-string v3, "padding"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->PADDING:Lorg/keyczar/enums/Flag;

    .line 33
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "DESTINATION"

    const/4 v2, 0x6

    const-string v3, "destination"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->DESTINATION:Lorg/keyczar/enums/Flag;

    .line 34
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "VERSION"

    const/4 v2, 0x7

    const-string/jumbo v3, "version"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->VERSION:Lorg/keyczar/enums/Flag;

    .line 35
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "ASYMMETRIC"

    const/16 v2, 0x8

    const-string v3, "asymmetric"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->ASYMMETRIC:Lorg/keyczar/enums/Flag;

    .line 36
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "CRYPTER"

    const/16 v2, 0x9

    const-string v3, "crypter"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->CRYPTER:Lorg/keyczar/enums/Flag;

    .line 37
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "PEMFILE"

    const/16 v2, 0xa

    const-string v3, "pemfile"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->PEMFILE:Lorg/keyczar/enums/Flag;

    .line 38
    new-instance v0, Lorg/keyczar/enums/Flag;

    const-string v1, "PASSPHRASE"

    const/16 v2, 0xb

    const-string v3, "passphrase"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Flag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Flag;->PASSPHRASE:Lorg/keyczar/enums/Flag;

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/keyczar/enums/Flag;

    sget-object v1, Lorg/keyczar/enums/Flag;->LOCATION:Lorg/keyczar/enums/Flag;

    aput-object v1, v0, v4

    sget-object v1, Lorg/keyczar/enums/Flag;->NAME:Lorg/keyczar/enums/Flag;

    aput-object v1, v0, v5

    sget-object v1, Lorg/keyczar/enums/Flag;->SIZE:Lorg/keyczar/enums/Flag;

    aput-object v1, v0, v6

    sget-object v1, Lorg/keyczar/enums/Flag;->STATUS:Lorg/keyczar/enums/Flag;

    aput-object v1, v0, v7

    sget-object v1, Lorg/keyczar/enums/Flag;->PURPOSE:Lorg/keyczar/enums/Flag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/keyczar/enums/Flag;->PADDING:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/keyczar/enums/Flag;->DESTINATION:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/keyczar/enums/Flag;->VERSION:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/keyczar/enums/Flag;->ASYMMETRIC:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/keyczar/enums/Flag;->CRYPTER:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/keyczar/enums/Flag;->PEMFILE:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/keyczar/enums/Flag;->PASSPHRASE:Lorg/keyczar/enums/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lorg/keyczar/enums/Flag;->$VALUES:[Lorg/keyczar/enums/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lorg/keyczar/enums/Flag;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static getFlag(Ljava/lang/String;)Lorg/keyczar/enums/Flag;
    .locals 4

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-object v0, Lorg/keyczar/enums/Flag;->LOCATION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lorg/keyczar/enums/Flag;->LOCATION:Lorg/keyczar/enums/Flag;

    .line 78
    :goto_0
    return-object v0

    .line 57
    :cond_1
    sget-object v0, Lorg/keyczar/enums/Flag;->NAME:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lorg/keyczar/enums/Flag;->NAME:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lorg/keyczar/enums/Flag;->SIZE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    sget-object v0, Lorg/keyczar/enums/Flag;->SIZE:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 61
    :cond_3
    sget-object v0, Lorg/keyczar/enums/Flag;->STATUS:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    sget-object v0, Lorg/keyczar/enums/Flag;->STATUS:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lorg/keyczar/enums/Flag;->PURPOSE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    sget-object v0, Lorg/keyczar/enums/Flag;->PURPOSE:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lorg/keyczar/enums/Flag;->DESTINATION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    sget-object v0, Lorg/keyczar/enums/Flag;->DESTINATION:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 67
    :cond_6
    sget-object v0, Lorg/keyczar/enums/Flag;->VERSION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    sget-object v0, Lorg/keyczar/enums/Flag;->VERSION:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 69
    :cond_7
    sget-object v0, Lorg/keyczar/enums/Flag;->ASYMMETRIC:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    sget-object v0, Lorg/keyczar/enums/Flag;->ASYMMETRIC:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 71
    :cond_8
    sget-object v0, Lorg/keyczar/enums/Flag;->CRYPTER:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    sget-object v0, Lorg/keyczar/enums/Flag;->CRYPTER:Lorg/keyczar/enums/Flag;

    goto :goto_0

    .line 73
    :cond_9
    sget-object v0, Lorg/keyczar/enums/Flag;->PEMFILE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    sget-object v0, Lorg/keyczar/enums/Flag;->PEMFILE:Lorg/keyczar/enums/Flag;

    goto/16 :goto_0

    .line 75
    :cond_a
    sget-object v0, Lorg/keyczar/enums/Flag;->PASSPHRASE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    sget-object v0, Lorg/keyczar/enums/Flag;->PASSPHRASE:Lorg/keyczar/enums/Flag;

    goto/16 :goto_0

    .line 77
    :cond_b
    sget-object v0, Lorg/keyczar/enums/Flag;->PADDING:Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 78
    sget-object v0, Lorg/keyczar/enums/Flag;->PADDING:Lorg/keyczar/enums/Flag;

    goto/16 :goto_0

    .line 80
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flag.UnknownFlag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 81
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/enums/Flag;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/keyczar/enums/Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/enums/Flag;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/enums/Flag;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/keyczar/enums/Flag;->$VALUES:[Lorg/keyczar/enums/Flag;

    invoke-virtual {v0}, [Lorg/keyczar/enums/Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/enums/Flag;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/keyczar/enums/Flag;->name:Ljava/lang/String;

    return-object v0
.end method
