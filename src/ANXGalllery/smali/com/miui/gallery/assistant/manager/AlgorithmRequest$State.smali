.class public final enum Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;
.super Ljava/lang/Enum;
.source "AlgorithmRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/manager/AlgorithmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

.field public static final enum STATE_FINISHED:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

.field public static final enum STATE_INIT:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

.field public static final enum STATE_QUEUING:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

.field public static final enum STATE_START:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_INIT:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 35
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    const-string v1, "STATE_QUEUING"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_QUEUING:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 36
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    const-string v1, "STATE_START"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_START:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 37
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    const-string v1, "STATE_FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_FINISHED:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_INIT:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_QUEUING:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_START:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->STATE_FINISHED:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->$VALUES:[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->$VALUES:[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    invoke-virtual {v0}, [Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/assistant/manager/AlgorithmRequest$State;

    return-object v0
.end method
