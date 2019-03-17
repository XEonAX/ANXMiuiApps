.class public final enum Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
.super Ljava/lang/Enum;
.source "nexAssetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum audio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum audiofilter:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum background:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum collage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum dynamiccollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum effect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum extra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum filter:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum font:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum staticcollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

.field public static final enum transition:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "audio"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->audio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 143
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "audiofilter"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->audiofilter:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 144
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "background"

    invoke-direct {v0, v1, v5}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->background:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 145
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "effect"

    invoke-direct {v0, v1, v6}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->effect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 146
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "filter"

    invoke-direct {v0, v1, v7}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->filter:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 147
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "font"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->font:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 148
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "overlay"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 149
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string/jumbo v1, "template"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 150
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string/jumbo v1, "transition"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->transition:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 151
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "extra"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->extra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 152
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "collage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->collage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 153
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string/jumbo v1, "staticcollage"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->staticcollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 154
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "dynamiccollage"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->dynamiccollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 155
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    const-string v1, "beattemplate"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    .line 141
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->audio:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->audiofilter:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->background:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->effect:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->filter:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->font:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->overlay:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->template:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->transition:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->extra:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->collage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->staticcollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->dynamiccollage:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->beattemplate:Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->$VALUES:[Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    invoke-virtual {v0}, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager$Category;

    return-object v0
.end method
