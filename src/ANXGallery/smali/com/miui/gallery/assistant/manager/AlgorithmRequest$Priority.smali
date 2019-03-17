.class public final enum Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
.super Ljava/lang/Enum;
.source "AlgorithmRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/manager/AlgorithmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

.field public static final enum PRIORITY_HIGH:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

.field public static final enum PRIORITY_IMMEDIATELY:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

.field public static final enum PRIORITY_LOW:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

.field public static final enum PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    const-string v1, "PRIORITY_IMMEDIATELY"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_IMMEDIATELY:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 28
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    const-string v1, "PRIORITY_HIGH"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_HIGH:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 29
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    const-string v1, "PRIORITY_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 30
    new-instance v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    const-string v1, "PRIORITY_LOW"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_LOW:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_IMMEDIATELY:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_HIGH:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_LOW:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->$VALUES:[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->$VALUES:[Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    invoke-virtual {v0}, [Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    return-object v0
.end method
