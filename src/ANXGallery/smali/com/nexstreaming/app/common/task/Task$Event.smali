.class public final enum Lcom/nexstreaming/app/common/task/Task$Event;
.super Ljava/lang/Enum;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/app/common/task/Task$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

.field public static final enum UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 560
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 568
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 578
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 586
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 594
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 599
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "RESULT_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 604
    new-instance v0, Lcom/nexstreaming/app/common/task/Task$Event;

    const-string v1, "UPDATE_OR_RESULT_AVAILABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/app/common/task/Task$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    .line 543
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->FAIL:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/app/common/task/Task$Event;->PROGRESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->UPDATE_OR_RESULT_AVAILABLE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->$VALUES:[Lcom/nexstreaming/app/common/task/Task$Event;

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
    .line 543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/app/common/task/Task$Event;
    .locals 1

    .prologue
    .line 543
    const-class v0, Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/task/Task$Event;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/app/common/task/Task$Event;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/nexstreaming/app/common/task/Task$Event;->$VALUES:[Lcom/nexstreaming/app/common/task/Task$Event;

    invoke-virtual {v0}, [Lcom/nexstreaming/app/common/task/Task$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/app/common/task/Task$Event;

    return-object v0
.end method
