.class public final enum Lcom/miui/gallery/push/PushConstants$MessageScope;
.super Ljava/lang/Enum;
.source "PushConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/push/PushConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/push/PushConstants$MessageScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/push/PushConstants$MessageScope;

.field public static final enum DEBUG:Lcom/miui/gallery/push/PushConstants$MessageScope;

.field public static final enum RELEASE:Lcom/miui/gallery/push/PushConstants$MessageScope;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/miui/gallery/push/PushConstants$MessageScope;

    const-string v1, "DEBUG"

    const-string v2, "debug"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/gallery/push/PushConstants$MessageScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/push/PushConstants$MessageScope;->DEBUG:Lcom/miui/gallery/push/PushConstants$MessageScope;

    .line 53
    new-instance v0, Lcom/miui/gallery/push/PushConstants$MessageScope;

    const-string v1, "RELEASE"

    const-string v2, "release"

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/push/PushConstants$MessageScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/push/PushConstants$MessageScope;->RELEASE:Lcom/miui/gallery/push/PushConstants$MessageScope;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/push/PushConstants$MessageScope;

    sget-object v1, Lcom/miui/gallery/push/PushConstants$MessageScope;->DEBUG:Lcom/miui/gallery/push/PushConstants$MessageScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/push/PushConstants$MessageScope;->RELEASE:Lcom/miui/gallery/push/PushConstants$MessageScope;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/push/PushConstants$MessageScope;->$VALUES:[Lcom/miui/gallery/push/PushConstants$MessageScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/miui/gallery/push/PushConstants$MessageScope;->value:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static getScope(Ljava/lang/String;)Lcom/miui/gallery/push/PushConstants$MessageScope;
    .locals 5
    .param p0, "scope"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-static {}, Lcom/miui/gallery/push/PushConstants$MessageScope;->values()[Lcom/miui/gallery/push/PushConstants$MessageScope;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 64
    .local v0, "messageScope":Lcom/miui/gallery/push/PushConstants$MessageScope;
    iget-object v4, v0, Lcom/miui/gallery/push/PushConstants$MessageScope;->value:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    .end local v0    # "messageScope":Lcom/miui/gallery/push/PushConstants$MessageScope;
    :goto_1
    return-object v0

    .line 63
    .restart local v0    # "messageScope":Lcom/miui/gallery/push/PushConstants$MessageScope;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "messageScope":Lcom/miui/gallery/push/PushConstants$MessageScope;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/push/PushConstants$MessageScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/miui/gallery/push/PushConstants$MessageScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/push/PushConstants$MessageScope;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/push/PushConstants$MessageScope;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/miui/gallery/push/PushConstants$MessageScope;->$VALUES:[Lcom/miui/gallery/push/PushConstants$MessageScope;

    invoke-virtual {v0}, [Lcom/miui/gallery/push/PushConstants$MessageScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/push/PushConstants$MessageScope;

    return-object v0
.end method
