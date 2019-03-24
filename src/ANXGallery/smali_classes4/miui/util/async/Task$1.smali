.class synthetic Lmiui/util/async/Task$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic Ki:[I

.field static final synthetic Kj:[I

.field static final synthetic Kk:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 443
    invoke-static {}, Lmiui/util/async/Task$Delivery;->values()[Lmiui/util/async/Task$Delivery;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/async/Task$1;->Kk:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lmiui/util/async/Task$1;->Kk:[I

    sget-object v2, Lmiui/util/async/Task$Delivery;->Kl:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v2}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lmiui/util/async/Task$1;->Kk:[I

    sget-object v3, Lmiui/util/async/Task$Delivery;->Ko:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v3}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lmiui/util/async/Task$1;->Kk:[I

    sget-object v4, Lmiui/util/async/Task$Delivery;->Km:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v4}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lmiui/util/async/Task$1;->Kk:[I

    sget-object v5, Lmiui/util/async/Task$Delivery;->Kn:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v5}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    .line 328
    :goto_3
    invoke-static {}, Lmiui/util/async/Task$Priority;->values()[Lmiui/util/async/Task$Priority;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/async/Task$1;->Kj:[I

    :try_start_4
    sget-object v4, Lmiui/util/async/Task$1;->Kj:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :goto_4
    :try_start_5
    sget-object v4, Lmiui/util/async/Task$1;->Kj:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :goto_5
    :try_start_6
    sget-object v4, Lmiui/util/async/Task$1;->Kj:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    :try_start_7
    sget-object v4, Lmiui/util/async/Task$1;->Kj:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    .line 228
    :goto_7
    invoke-static {}, Lmiui/util/async/Task$Status;->values()[Lmiui/util/async/Task$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/async/Task$1;->Ki:[I

    :try_start_8
    sget-object v4, Lmiui/util/async/Task$1;->Ki:[I

    sget-object v5, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {v5}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lmiui/util/async/Task$1;->Ki:[I

    sget-object v4, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    invoke-virtual {v4}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lmiui/util/async/Task$1;->Ki:[I

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lmiui/util/async/Task$1;->Ki:[I

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    :try_start_c
    sget-object v0, Lmiui/util/async/Task$1;->Ki:[I

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    return-void
.end method
