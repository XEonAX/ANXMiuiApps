.class public final enum Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;
.super Ljava/lang/Enum;
.source "DoodleItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field public static final enum ARROW:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field public static final enum CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field public static final enum LINE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field public static final enum PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

.field public static final enum RECTANGLE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;


# instance fields
.field public final normal:I

.field public final selected:I

.field public final talkback:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    const-string v1, "PATH"

    const v3, 0x7f0200f4

    const v4, 0x7f0200f5

    const v5, 0x7f0c0384

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 14
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    const-string v4, "LINE"

    const v6, 0x7f0200f2

    const v7, 0x7f0200f3

    const v8, 0x7f0c0383

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->LINE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 15
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    const-string v4, "RECTANGLE"

    const v6, 0x7f0200f6

    const v7, 0x7f0200f7

    const v8, 0x7f0c0385

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->RECTANGLE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 16
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    const-string v4, "CIRCULAR"

    const v6, 0x7f0200f0

    const v7, 0x7f0200f1

    const v8, 0x7f0c0382

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 17
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    const-string v4, "ARROW"

    const v6, 0x7f0200ee

    const v7, 0x7f0200ef

    const v8, 0x7f0c0381

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->ARROW:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->PATH:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->LINE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->RECTANGLE:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->CIRCULAR:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->ARROW:Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    aput-object v1, v0, v12

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "normal"    # I
    .param p4, "selected"    # I
    .param p5, "talkback"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->normal:I

    .line 25
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->selected:I

    .line 26
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->talkback:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;

    return-object v0
.end method


# virtual methods
.method public getDoodleDrawable(Landroid/content/res/Resources;)Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem$1;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$doodle$painter$DoodleItem:[I

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;

    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/path/DoodlePathNode;-><init>(Landroid/content/res/Resources;)V

    .line 34
    .restart local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    goto :goto_0

    .line 36
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleLineNode;

    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleLineNode;-><init>(Landroid/content/res/Resources;)V

    .line 37
    .restart local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    goto :goto_0

    .line 39
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleRectangleNode;

    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleRectangleNode;-><init>(Landroid/content/res/Resources;)V

    .line 40
    .restart local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    goto :goto_0

    .line 42
    :pswitch_3
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;

    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/shape/DoodleCircularNode;-><init>(Landroid/content/res/Resources;)V

    .line 43
    .restart local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    goto :goto_0

    .line 45
    :pswitch_4
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;

    .end local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/vector/DoodleArrowNode;-><init>(Landroid/content/res/Resources;)V

    .restart local v0    # "doodleNode":Lcom/miui/gallery/editor/photo/core/imports/doodle/painter/DoodleNode;
    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
