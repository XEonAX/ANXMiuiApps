.class final enum Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;
.super Ljava/lang/Enum;
.source "NexThemeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

.field public static final enum Clear:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

.field public static final enum Native:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

.field public static final enum None:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->None:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    const-string v1, "Native"

    invoke-direct {v0, v1, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->Native:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    const-string v1, "Clear"

    invoke-direct {v0, v1, v4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->Clear:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->None:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->Native:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->Clear:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    return-object v0
.end method

.method public static values()[Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->$VALUES:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    invoke-virtual {v0}, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    return-object v0
.end method
