.class final enum Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;
.super Ljava/lang/Enum;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverlayCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

.field public static final enum clear:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

.field public static final enum lock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

.field public static final enum unlock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

.field public static final enum upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3958
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    const-string v1, "clear"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->clear:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    const-string/jumbo v1, "upload"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    const-string v1, "lock"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->lock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    const-string/jumbo v1, "unlock"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->unlock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    .line 3957
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->clear:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->upload:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->lock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->unlock:Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

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
    .line 3957
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;
    .locals 1

    .prologue
    .line 3957
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;
    .locals 1

    .prologue
    .line 3957
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayCommand;

    return-object v0
.end method
