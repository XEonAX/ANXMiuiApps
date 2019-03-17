.class public final enum Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;
.super Ljava/lang/Enum;
.source "NormColumnInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/norm/NormColumnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColumnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum BLOB:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum BOOL:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum DOUBLE:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum ENUM:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum FLOAT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum INT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum JPEG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum JSON:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum LONG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum PNG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

.field public static final enum TEXT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->INT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->LONG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->FLOAT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->DOUBLE:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->TEXT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "BOOL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->BOOL:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "JSON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JSON:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ENUM:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "BLOB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->BLOB:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "JPEG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JPEG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    new-instance v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    const-string v1, "PNG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->PNG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    .line 80
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    sget-object v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->INT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->LONG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->FLOAT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->DOUBLE:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->TEXT:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->BOOL:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JSON:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->ENUM:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->BLOB:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->JPEG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->PNG:Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->$VALUES:[Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->$VALUES:[Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/norm/NormColumnInfo$ColumnType;

    return-object v0
.end method
