.class final enum Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;
.super Ljava/lang/Enum;
.source "StickerEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

.field public static final enum DELETE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

.field public static final enum IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

.field public static final enum MIRROR:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

.field public static final enum MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

.field public static final enum PENDING:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

.field public static final enum SCALE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->PENDING:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const-string v1, "MIRROR"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->IDLE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->PENDING:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MOVE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView$State;

    return-object v0
.end method
