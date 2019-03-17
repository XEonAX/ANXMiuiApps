.class public final enum Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;
.super Ljava/lang/Enum;
.source "SpecifyDrawableModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecifyDrawableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

.field public static final enum COLOR:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

.field public static final enum TIME_FORMAT:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

.field public static final enum TIME_RECT:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->COLOR:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    .line 16
    new-instance v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    const-string v1, "TIME_FORMAT"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->TIME_FORMAT:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    .line 17
    new-instance v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    const-string v1, "TIME_RECT"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->TIME_RECT:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    sget-object v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->COLOR:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->TIME_FORMAT:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->TIME_RECT:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->$VALUES:[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->$VALUES:[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    invoke-virtual {v0}, [Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    return-object v0
.end method


# virtual methods
.method public getDrawable(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "specifyDrawableModel"    # Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$1;->$SwitchMap$com$miui$gallery$collage$core$poster$SpecifyDrawableModel$SpecifyDrawableType:[I

    invoke-virtual {p0}, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 32
    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;-><init>(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)V

    .line 24
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/collage/drawable/RectTimeDrawable;-><init>(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)V

    .line 27
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 29
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/collage/drawable/ColorDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p2}, Lcom/miui/gallery/collage/drawable/ColorDrawable;-><init>(Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)V

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
