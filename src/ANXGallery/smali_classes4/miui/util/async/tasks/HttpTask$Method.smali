.class public final enum Lmiui/util/async/tasks/HttpTask$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/async/tasks/HttpTask$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Get:Lmiui/util/async/tasks/HttpTask$Method;

.field private static final synthetic LJ:[Lmiui/util/async/tasks/HttpTask$Method;

.field public static final enum Post:Lmiui/util/async/tasks/HttpTask$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lmiui/util/async/tasks/HttpTask$Method;

    const-string v1, "Get"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/async/tasks/HttpTask$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    .line 32
    new-instance v0, Lmiui/util/async/tasks/HttpTask$Method;

    const-string v1, "Post"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/util/async/tasks/HttpTask$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Post:Lmiui/util/async/tasks/HttpTask$Method;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/util/async/tasks/HttpTask$Method;

    sget-object v1, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/util/async/tasks/HttpTask$Method;->Post:Lmiui/util/async/tasks/HttpTask$Method;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/util/async/tasks/HttpTask$Method;->LJ:[Lmiui/util/async/tasks/HttpTask$Method;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/util/async/tasks/HttpTask$Method;
    .locals 1

    .line 22
    const-class v0, Lmiui/util/async/tasks/HttpTask$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/util/async/tasks/HttpTask$Method;

    return-object p0
.end method

.method public static values()[Lmiui/util/async/tasks/HttpTask$Method;
    .locals 1

    .line 22
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->LJ:[Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v0}, [Lmiui/util/async/tasks/HttpTask$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/async/tasks/HttpTask$Method;

    return-object v0
.end method
