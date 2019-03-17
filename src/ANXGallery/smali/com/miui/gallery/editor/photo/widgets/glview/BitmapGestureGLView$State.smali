.class public final enum Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;
.super Ljava/lang/Enum;
.source "BitmapGestureGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

.field public static final enum BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

.field public static final enum NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

.field public static final enum SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    const-string v1, "NOT_DEFINE"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 67
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    const-string v1, "SCALE_MOVE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 68
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    const-string v1, "BY_CHILD"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->NOT_DEFINE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->SCALE_MOVE:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->BY_CHILD:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->$VALUES:[Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->$VALUES:[Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$State;

    return-object v0
.end method
