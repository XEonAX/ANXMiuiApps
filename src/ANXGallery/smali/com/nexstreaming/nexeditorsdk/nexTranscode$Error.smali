.class public final enum Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;
.super Ljava/lang/Enum;
.source "nexTranscode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum BUSY:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum CANCEL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum ENGINEFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum NONE:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum NOTSUPPORTEDFILE:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum RUNFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

.field public static final enum SOURCEFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->NONE:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 89
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "NOTSUPPORTEDFILE"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->NOTSUPPORTEDFILE:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 90
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "ENGINEFAIL"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->ENGINEFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 91
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "SOURCEFAIL"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->SOURCEFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 92
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->BUSY:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 93
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "RUNFAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->RUNFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 94
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    const-string v1, "CANCEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->CANCEL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->NONE:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->NOTSUPPORTEDFILE:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->ENGINEFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->SOURCEFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->BUSY:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->RUNFAIL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->CANCEL:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexTranscode$Error;

    return-object v0
.end method
