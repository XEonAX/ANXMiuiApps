.class public final enum Lmiui/content/res/ThemeResources$ConfigType;
.super Ljava/lang/Enum;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/content/res/ThemeResources$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/content/res/ThemeResources$ConfigType;

.field public static final enum THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

.field public static final enum THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 413
    new-instance v0, Lmiui/content/res/ThemeResources$ConfigType;

    const-string v1, "THEME_VALUES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/content/res/ThemeResources$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    .line 414
    new-instance v0, Lmiui/content/res/ThemeResources$ConfigType;

    const-string v1, "THEME_FALLBACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/content/res/ThemeResources$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/content/res/ThemeResources$ConfigType;

    sget-object v1, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/content/res/ThemeResources$ConfigType;->$VALUES:[Lmiui/content/res/ThemeResources$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/content/res/ThemeResources$ConfigType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 412
    const-class v0, Lmiui/content/res/ThemeResources$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/content/res/ThemeResources$ConfigType;

    return-object v0
.end method

.method public static values()[Lmiui/content/res/ThemeResources$ConfigType;
    .locals 1

    .line 412
    sget-object v0, Lmiui/content/res/ThemeResources$ConfigType;->$VALUES:[Lmiui/content/res/ThemeResources$ConfigType;

    invoke-virtual {v0}, [Lmiui/content/res/ThemeResources$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/content/res/ThemeResources$ConfigType;

    return-object v0
.end method
