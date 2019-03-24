.class final enum Lmiui/util/async/Task$Delivery;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Delivery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/async/Task$Delivery;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Kl:Lmiui/util/async/Task$Delivery;

.field public static final enum Km:Lmiui/util/async/Task$Delivery;

.field public static final enum Kn:Lmiui/util/async/Task$Delivery;

.field public static final enum Ko:Lmiui/util/async/Task$Delivery;

.field private static final synthetic Kp:[Lmiui/util/async/Task$Delivery;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 149
    new-instance v0, Lmiui/util/async/Task$Delivery;

    const-string v1, "Prepare"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/async/Task$Delivery;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Delivery;->Kl:Lmiui/util/async/Task$Delivery;

    .line 154
    new-instance v0, Lmiui/util/async/Task$Delivery;

    const-string v1, "Result"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/util/async/Task$Delivery;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    .line 159
    new-instance v0, Lmiui/util/async/Task$Delivery;

    const-string v1, "Progress"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/util/async/Task$Delivery;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Delivery;->Kn:Lmiui/util/async/Task$Delivery;

    .line 164
    new-instance v0, Lmiui/util/async/Task$Delivery;

    const-string v1, "Finalize"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/util/async/Task$Delivery;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/util/async/Task$Delivery;

    sget-object v1, Lmiui/util/async/Task$Delivery;->Kl:Lmiui/util/async/Task$Delivery;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/util/async/Task$Delivery;->Kn:Lmiui/util/async/Task$Delivery;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/async/Task$Delivery;->Kp:[Lmiui/util/async/Task$Delivery;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/util/async/Task$Delivery;
    .locals 1

    .line 145
    const-class v0, Lmiui/util/async/Task$Delivery;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/util/async/Task$Delivery;

    return-object p0
.end method

.method public static values()[Lmiui/util/async/Task$Delivery;
    .locals 1

    .line 145
    sget-object v0, Lmiui/util/async/Task$Delivery;->Kp:[Lmiui/util/async/Task$Delivery;

    invoke-virtual {v0}, [Lmiui/util/async/Task$Delivery;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/async/Task$Delivery;

    return-object v0
.end method
