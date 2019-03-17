.class final enum Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;
.super Ljava/lang/Enum;
.source "nexOverlayTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

.field public static final enum END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

.field public static final enum NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

.field public static final enum START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

.field public static final enum START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    .line 102
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    .line 103
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    .line 104
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    const-string v1, "START_END"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->NONE:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->START_END:Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexOverlayTitle$Priority;

    return-object v0
.end method
