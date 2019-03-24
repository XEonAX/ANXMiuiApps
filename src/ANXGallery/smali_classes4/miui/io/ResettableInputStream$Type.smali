.class final enum Lmiui/io/ResettableInputStream$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/io/ResettableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/io/ResettableInputStream$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Ag:Lmiui/io/ResettableInputStream$Type;

.field public static final enum Ah:Lmiui/io/ResettableInputStream$Type;

.field public static final enum Ai:Lmiui/io/ResettableInputStream$Type;

.field public static final enum Aj:Lmiui/io/ResettableInputStream$Type;

.field private static final synthetic Ak:[Lmiui/io/ResettableInputStream$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lmiui/io/ResettableInputStream$Type;

    const-string v1, "File"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/io/ResettableInputStream$Type;->Ag:Lmiui/io/ResettableInputStream$Type;

    .line 24
    new-instance v0, Lmiui/io/ResettableInputStream$Type;

    const-string v1, "Uri"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/io/ResettableInputStream$Type;->Ah:Lmiui/io/ResettableInputStream$Type;

    .line 25
    new-instance v0, Lmiui/io/ResettableInputStream$Type;

    const-string v1, "Asset"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/io/ResettableInputStream$Type;->Ai:Lmiui/io/ResettableInputStream$Type;

    .line 26
    new-instance v0, Lmiui/io/ResettableInputStream$Type;

    const-string v1, "ByteArray"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/io/ResettableInputStream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/io/ResettableInputStream$Type;->Aj:Lmiui/io/ResettableInputStream$Type;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/io/ResettableInputStream$Type;

    sget-object v1, Lmiui/io/ResettableInputStream$Type;->Ag:Lmiui/io/ResettableInputStream$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/io/ResettableInputStream$Type;->Ah:Lmiui/io/ResettableInputStream$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/io/ResettableInputStream$Type;->Ai:Lmiui/io/ResettableInputStream$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/io/ResettableInputStream$Type;->Aj:Lmiui/io/ResettableInputStream$Type;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/io/ResettableInputStream$Type;->Ak:[Lmiui/io/ResettableInputStream$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/io/ResettableInputStream$Type;
    .locals 1

    .line 22
    const-class v0, Lmiui/io/ResettableInputStream$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/io/ResettableInputStream$Type;

    return-object p0
.end method

.method public static values()[Lmiui/io/ResettableInputStream$Type;
    .locals 1

    .line 22
    sget-object v0, Lmiui/io/ResettableInputStream$Type;->Ak:[Lmiui/io/ResettableInputStream$Type;

    invoke-virtual {v0}, [Lmiui/io/ResettableInputStream$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/io/ResettableInputStream$Type;

    return-object v0
.end method
