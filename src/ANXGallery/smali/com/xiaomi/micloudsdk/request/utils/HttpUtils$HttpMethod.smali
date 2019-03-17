.class public final enum Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
.super Ljava/lang/Enum;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum DELETE:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

.field public static final enum POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 99
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 100
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const-string v1, "POST_JSON"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 101
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->DELETE:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->DELETE:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->$VALUES:[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->$VALUES:[Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-virtual {v0}, [Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    return-object v0
.end method
