.class public final enum Lmiui/util/async/Task$Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/async/Task$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum High:Lmiui/util/async/Task$Priority;

.field private static final synthetic Kq:[Lmiui/util/async/Task$Priority;

.field public static final enum Low:Lmiui/util/async/Task$Priority;

.field public static final enum Normal:Lmiui/util/async/Task$Priority;

.field public static final enum RealTime:Lmiui/util/async/Task$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 93
    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    .line 99
    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "Normal"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    .line 104
    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "High"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    .line 109
    new-instance v0, Lmiui/util/async/Task$Priority;

    const-string v1, "RealTime"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/util/async/Task$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/util/async/Task$Priority;

    sget-object v1, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/util/async/Task$Priority;->Kq:[Lmiui/util/async/Task$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/util/async/Task$Priority;
    .locals 1

    .line 88
    const-class v0, Lmiui/util/async/Task$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/util/async/Task$Priority;

    return-object p0
.end method

.method public static values()[Lmiui/util/async/Task$Priority;
    .locals 1

    .line 88
    sget-object v0, Lmiui/util/async/Task$Priority;->Kq:[Lmiui/util/async/Task$Priority;

    invoke-virtual {v0}, [Lmiui/util/async/Task$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/async/Task$Priority;

    return-object v0
.end method
