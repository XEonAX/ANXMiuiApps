.class public final enum Lcn/kuaipan/android/utils/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/kuaipan/android/utils/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum NAME:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum NULL:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum NUMBER:Lcn/kuaipan/android/utils/JsonToken;

.field public static final enum STRING:Lcn/kuaipan/android/utils/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 34
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 41
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 47
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 54
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    .line 59
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 65
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 70
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    .line 75
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    .line 82
    new-instance v0, Lcn/kuaipan/android/utils/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuaipan/android/utils/JsonToken;->$VALUES:[Lcn/kuaipan/android/utils/JsonToken;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/utils/JsonToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcn/kuaipan/android/utils/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/utils/JsonToken;

    return-object v0
.end method

.method public static values()[Lcn/kuaipan/android/utils/JsonToken;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->$VALUES:[Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v0}, [Lcn/kuaipan/android/utils/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/android/utils/JsonToken;

    return-object v0
.end method
