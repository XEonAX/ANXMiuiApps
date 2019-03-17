.class public final enum Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
.super Ljava/lang/Enum;
.source "PaintElementOperationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

.field public static final enum SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;


# instance fields
.field public final icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "EDIT"

    const v2, 0x7f0200b5

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 178
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "ROTATE"

    const v2, 0x7f0200bd

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 179
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "SCALE"

    const v2, 0x7f0200c0

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 180
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "DELETE"

    const v2, 0x7f0200b2

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 181
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "MIRROR"

    const v2, 0x7f0200b8

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 182
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "REVERSE_WHITE"

    const/4 v2, 0x5

    const v3, 0x7f0200bc

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 183
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    const-string v1, "REVERSE_BLACK"

    const/4 v2, 0x6

    const v3, 0x7f0200bb

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    .line 176
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->ROTATE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_WHITE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->REVERSE_BLACK:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->icon:I

    .line 188
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    return-object v0
.end method
