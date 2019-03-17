.class public final enum Lcom/miui/gallery/sdk/SyncStatus;
.super Ljava/lang/Enum;
.source "SyncStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/sdk/SyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/sdk/SyncStatus;

.field public static final enum STATUS_ABADON:Lcom/miui/gallery/sdk/SyncStatus;

.field public static final enum STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

.field public static final enum STATUS_INTERRUPT:Lcom/miui/gallery/sdk/SyncStatus;

.field public static final enum STATUS_NONE:Lcom/miui/gallery/sdk/SyncStatus;

.field public static final enum STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/miui/gallery/sdk/SyncStatus;

    const-string v1, "STATUS_NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/sdk/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_NONE:Lcom/miui/gallery/sdk/SyncStatus;

    new-instance v0, Lcom/miui/gallery/sdk/SyncStatus;

    const-string v1, "STATUS_INIT"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/sdk/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

    new-instance v0, Lcom/miui/gallery/sdk/SyncStatus;

    const-string v1, "STATUS_INTERRUPT"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/sdk/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INTERRUPT:Lcom/miui/gallery/sdk/SyncStatus;

    new-instance v0, Lcom/miui/gallery/sdk/SyncStatus;

    const-string v1, "STATUS_SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/sdk/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    new-instance v0, Lcom/miui/gallery/sdk/SyncStatus;

    const-string v1, "STATUS_ABADON"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/sdk/SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_ABADON:Lcom/miui/gallery/sdk/SyncStatus;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/sdk/SyncStatus;

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_NONE:Lcom/miui/gallery/sdk/SyncStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INTERRUPT:Lcom/miui/gallery/sdk/SyncStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_ABADON:Lcom/miui/gallery/sdk/SyncStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/sdk/SyncStatus;->$VALUES:[Lcom/miui/gallery/sdk/SyncStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toSyncStatus(I)Lcom/miui/gallery/sdk/SyncStatus;
    .locals 3
    .param p0, "status"    # I

    .prologue
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :pswitch_0
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_NONE:Lcom/miui/gallery/sdk/SyncStatus;

    .line 19
    :goto_0
    return-object v0

    .line 13
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INIT:Lcom/miui/gallery/sdk/SyncStatus;

    goto :goto_0

    .line 15
    :pswitch_2
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_INTERRUPT:Lcom/miui/gallery/sdk/SyncStatus;

    goto :goto_0

    .line 17
    :pswitch_3
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_SUCCESS:Lcom/miui/gallery/sdk/SyncStatus;

    goto :goto_0

    .line 19
    :pswitch_4
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->STATUS_ABADON:Lcom/miui/gallery/sdk/SyncStatus;

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/sdk/SyncStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/miui/gallery/sdk/SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/sdk/SyncStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/sdk/SyncStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/miui/gallery/sdk/SyncStatus;->$VALUES:[Lcom/miui/gallery/sdk/SyncStatus;

    invoke-virtual {v0}, [Lcom/miui/gallery/sdk/SyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/sdk/SyncStatus;

    return-object v0
.end method
