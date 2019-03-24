.class synthetic Lmiui/util/async/TaskQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic Kj:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    invoke-static {}, Lmiui/util/async/Task$Priority;->values()[Lmiui/util/async/Task$Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/async/TaskQueue$1;->Kj:[I

    :try_start_0
    sget-object v0, Lmiui/util/async/TaskQueue$1;->Kj:[I

    sget-object v1, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/util/async/TaskQueue$1;->Kj:[I

    sget-object v1, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lmiui/util/async/TaskQueue$1;->Kj:[I

    sget-object v1, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lmiui/util/async/TaskQueue$1;->Kj:[I

    sget-object v1, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    invoke-virtual {v1}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
