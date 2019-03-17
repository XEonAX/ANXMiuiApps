.class public final enum Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;
.super Ljava/lang/Enum;
.source "NexEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field public static final enum IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field public static final enum NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field public static final enum PAUSE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field public static final enum RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field public static final enum RESUME:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

.field public static final enum RUN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3733
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 3734
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 3735
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    const-string v1, "RUN"

    invoke-direct {v0, v1, v6, v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RUN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 3736
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v7, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 3737
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v8, v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->PAUSE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 3738
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    const-string v1, "RESUME"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RESUME:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    .line 3731
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RUN:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RECORD:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->PAUSE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->RESUME:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 3742
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3743
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->mValue:I

    .line 3744
    return-void
.end method

.method public static fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;
    .locals 5

    .prologue
    .line 3751
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->values()[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 3752
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 3755
    :goto_1
    return-object v0

    .line 3751
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3755
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;
    .locals 1

    .prologue
    .line 3731
    const-class v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;
    .locals 1

    .prologue
    .line 3731
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 3747
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->mValue:I

    return v0
.end method
