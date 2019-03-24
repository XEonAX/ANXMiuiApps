.class public final enum Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
.super Ljava/lang/Enum;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/content/res/ThemeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

.field public static final enum STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 18
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 19
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "COLOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 20
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "DIMEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 21
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "DRAWABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 22
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "INTEGER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 23
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "STRING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 24
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "INTEGER_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 25
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "STRING_ARRAY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 26
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    const-string v1, "NONE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->$VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 51
    const-string v0, "bool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 53
    :cond_0
    const-string v0, "color"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 55
    :cond_1
    const-string v0, "dimen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 57
    :cond_2
    const-string v0, "drawable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 59
    :cond_3
    const-string v0, "integer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 61
    :cond_4
    const-string v0, "string"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 63
    :cond_5
    const-string v0, "integer-array"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 65
    :cond_6
    const-string v0, "string-array"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0

    .line 68
    :cond_7
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->$VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    invoke-virtual {v0}, [Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$1;->$SwitchMap$com$miui$internal$content$res$ThemeDefinition$ResourceType:[I

    invoke-virtual {p0}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v0, "none"

    return-object v0

    .line 45
    :pswitch_0
    const-string v0, "string-array"

    return-object v0

    .line 43
    :pswitch_1
    const-string v0, "integer-array"

    return-object v0

    .line 41
    :pswitch_2
    const-string v0, "string"

    return-object v0

    .line 39
    :pswitch_3
    const-string v0, "integer"

    return-object v0

    .line 37
    :pswitch_4
    const-string v0, "dimen"

    return-object v0

    .line 35
    :pswitch_5
    const-string v0, "drawable"

    return-object v0

    .line 33
    :pswitch_6
    const-string v0, "color"

    return-object v0

    .line 31
    :pswitch_7
    const-string v0, "bool"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
