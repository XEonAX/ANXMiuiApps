.class public final enum Lcom/miui/gallery/cloud/syncstate/SyncType;
.super Ljava/lang/Enum;
.source "SyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/cloud/syncstate/SyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/cloud/syncstate/SyncType;

.field public static final enum BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field public static final enum GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field public static final enum NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field public static final enum POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

.field public static final enum UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;


# instance fields
.field private mIdentifier:Ljava/lang/String;

.field private mIsForce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    const-string v1, "UNKNOW"

    const-string/jumbo v2, "unknow"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/miui/gallery/cloud/syncstate/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 8
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    const-string v1, "BACKGROUND"

    const-string v2, "auto-background"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/miui/gallery/cloud/syncstate/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 9
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    const-string v1, "NORMAL"

    const-string v2, "auto-foreground"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/miui/gallery/cloud/syncstate/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 10
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    const-string v1, "POWER_FORCE"

    const-string v2, "manual-battery"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/miui/gallery/cloud/syncstate/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 11
    new-instance v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    const-string v1, "GPRS_FORCE"

    const-string v2, "manual-network"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/miui/gallery/cloud/syncstate/SyncType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/cloud/syncstate/SyncType;

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->BACKGROUND:Lcom/miui/gallery/cloud/syncstate/SyncType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->POWER_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/cloud/syncstate/SyncType;->GPRS_FORCE:Lcom/miui/gallery/cloud/syncstate/SyncType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->$VALUES:[Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/miui/gallery/cloud/syncstate/SyncType;->mIdentifier:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lcom/miui/gallery/cloud/syncstate/SyncType;->mIsForce:Z

    .line 19
    return-void
.end method

.method public static compare(Lcom/miui/gallery/cloud/syncstate/SyncType;Lcom/miui/gallery/cloud/syncstate/SyncType;)I
    .locals 2
    .param p0, "type1"    # Lcom/miui/gallery/cloud/syncstate/SyncType;
    .param p1, "type2"    # Lcom/miui/gallery/cloud/syncstate/SyncType;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncType;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/gallery/cloud/syncstate/SyncType;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static fromIdentifier(Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 5
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/syncstate/SyncType;->values()[Lcom/miui/gallery/cloud/syncstate/SyncType;

    move-result-object v1

    .line 34
    .local v1, "values":[Lcom/miui/gallery/cloud/syncstate/SyncType;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 35
    .local v0, "type":Lcom/miui/gallery/cloud/syncstate/SyncType;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/syncstate/SyncType;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    .end local v0    # "type":Lcom/miui/gallery/cloud/syncstate/SyncType;
    :cond_2
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->UNKNOW:Lcom/miui/gallery/cloud/syncstate/SyncType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/cloud/syncstate/SyncType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/miui/gallery/cloud/syncstate/SyncType;->$VALUES:[Lcom/miui/gallery/cloud/syncstate/SyncType;

    invoke-virtual {v0}, [Lcom/miui/gallery/cloud/syncstate/SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/cloud/syncstate/SyncType;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncType;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public isForce()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/syncstate/SyncType;->mIsForce:Z

    return v0
.end method
