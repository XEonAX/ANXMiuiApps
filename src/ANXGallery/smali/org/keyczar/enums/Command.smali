.class public final enum Lorg/keyczar/enums/Command;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/enums/Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/enums/Command;

.field public static final enum ADDKEY:Lorg/keyczar/enums/Command;

.field public static final enum CREATE:Lorg/keyczar/enums/Command;

.field public static final enum DEMOTE:Lorg/keyczar/enums/Command;

.field public static final enum EXPORT_KEY:Lorg/keyczar/enums/Command;

.field public static final enum IMPORT_KEY:Lorg/keyczar/enums/Command;

.field public static final enum PROMOTE:Lorg/keyczar/enums/Command;

.field public static final enum PUBKEY:Lorg/keyczar/enums/Command;

.field public static final enum REVOKE:Lorg/keyczar/enums/Command;

.field public static final enum USEKEY:Lorg/keyczar/enums/Command;


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

    .line 28
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "CREATE"

    const-string v2, "create"

    invoke-direct {v0, v1, v4, v2}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->CREATE:Lorg/keyczar/enums/Command;

    .line 29
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "ADDKEY"

    const-string v2, "addkey"

    invoke-direct {v0, v1, v5, v2}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->ADDKEY:Lorg/keyczar/enums/Command;

    .line 30
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "PUBKEY"

    const-string v2, "pubkey"

    invoke-direct {v0, v1, v6, v2}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->PUBKEY:Lorg/keyczar/enums/Command;

    .line 31
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "PROMOTE"

    const-string v2, "promote"

    invoke-direct {v0, v1, v7, v2}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->PROMOTE:Lorg/keyczar/enums/Command;

    .line 32
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "DEMOTE"

    const-string v2, "demote"

    invoke-direct {v0, v1, v8, v2}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->DEMOTE:Lorg/keyczar/enums/Command;

    .line 33
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "REVOKE"

    const/4 v2, 0x5

    const-string v3, "revoke"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->REVOKE:Lorg/keyczar/enums/Command;

    .line 34
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "USEKEY"

    const/4 v2, 0x6

    const-string/jumbo v3, "usekey"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->USEKEY:Lorg/keyczar/enums/Command;

    .line 35
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "IMPORT_KEY"

    const/4 v2, 0x7

    const-string v3, "importkey"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->IMPORT_KEY:Lorg/keyczar/enums/Command;

    .line 36
    new-instance v0, Lorg/keyczar/enums/Command;

    const-string v1, "EXPORT_KEY"

    const/16 v2, 0x8

    const-string v3, "exportkey"

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/enums/Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/Command;->EXPORT_KEY:Lorg/keyczar/enums/Command;

    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/keyczar/enums/Command;

    sget-object v1, Lorg/keyczar/enums/Command;->CREATE:Lorg/keyczar/enums/Command;

    aput-object v1, v0, v4

    sget-object v1, Lorg/keyczar/enums/Command;->ADDKEY:Lorg/keyczar/enums/Command;

    aput-object v1, v0, v5

    sget-object v1, Lorg/keyczar/enums/Command;->PUBKEY:Lorg/keyczar/enums/Command;

    aput-object v1, v0, v6

    sget-object v1, Lorg/keyczar/enums/Command;->PROMOTE:Lorg/keyczar/enums/Command;

    aput-object v1, v0, v7

    sget-object v1, Lorg/keyczar/enums/Command;->DEMOTE:Lorg/keyczar/enums/Command;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/keyczar/enums/Command;->REVOKE:Lorg/keyczar/enums/Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/keyczar/enums/Command;->USEKEY:Lorg/keyczar/enums/Command;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/keyczar/enums/Command;->IMPORT_KEY:Lorg/keyczar/enums/Command;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/keyczar/enums/Command;->EXPORT_KEY:Lorg/keyczar/enums/Command;

    aput-object v2, v0, v1

    sput-object v0, Lorg/keyczar/enums/Command;->$VALUES:[Lorg/keyczar/enums/Command;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/keyczar/enums/Command;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getCommand(Ljava/lang/String;)Lorg/keyczar/enums/Command;
    .locals 4

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Lorg/keyczar/enums/Command;->CREATE:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lorg/keyczar/enums/Command;->CREATE:Lorg/keyczar/enums/Command;

    .line 70
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v0, Lorg/keyczar/enums/Command;->ADDKEY:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lorg/keyczar/enums/Command;->ADDKEY:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lorg/keyczar/enums/Command;->PUBKEY:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Lorg/keyczar/enums/Command;->PUBKEY:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lorg/keyczar/enums/Command;->PROMOTE:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lorg/keyczar/enums/Command;->PROMOTE:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 61
    :cond_4
    sget-object v0, Lorg/keyczar/enums/Command;->DEMOTE:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    sget-object v0, Lorg/keyczar/enums/Command;->DEMOTE:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 63
    :cond_5
    sget-object v0, Lorg/keyczar/enums/Command;->REVOKE:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    sget-object v0, Lorg/keyczar/enums/Command;->REVOKE:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 65
    :cond_6
    sget-object v0, Lorg/keyczar/enums/Command;->USEKEY:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    sget-object v0, Lorg/keyczar/enums/Command;->USEKEY:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 67
    :cond_7
    sget-object v0, Lorg/keyczar/enums/Command;->IMPORT_KEY:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    sget-object v0, Lorg/keyczar/enums/Command;->IMPORT_KEY:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 69
    :cond_8
    sget-object v0, Lorg/keyczar/enums/Command;->EXPORT_KEY:Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    sget-object v0, Lorg/keyczar/enums/Command;->EXPORT_KEY:Lorg/keyczar/enums/Command;

    goto :goto_0

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command.UnknownCommand"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 73
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/enums/Command;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/keyczar/enums/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/enums/Command;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/enums/Command;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/keyczar/enums/Command;->$VALUES:[Lorg/keyczar/enums/Command;

    invoke-virtual {v0}, [Lorg/keyczar/enums/Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/enums/Command;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/keyczar/enums/Command;->name:Ljava/lang/String;

    return-object v0
.end method
