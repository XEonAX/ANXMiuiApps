.class public final Lcom/miui/internal/R$anim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static action_bar_fade_in:I

.field public static action_bar_fade_out:I

.field public static action_bar_slide_in_bottom:I

.field public static action_bar_slide_in_top:I

.field public static action_bar_slide_out_bottom:I

.field public static action_bar_slide_out_top:I

.field public static dialog_exit:I

.field public static dialog_scale_down:I

.field public static immersion_layout_fade_in:I

.field public static immersion_layout_fade_out:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const v0, 0x10040005

    sput v0, Lcom/miui/internal/R$anim;->action_bar_fade_in:I

    .line 13
    const v0, 0x10040006

    sput v0, Lcom/miui/internal/R$anim;->action_bar_fade_out:I

    .line 14
    const v0, 0x10040001

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_in_bottom:I

    .line 15
    const v0, 0x10040002

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_in_top:I

    .line 16
    const v0, 0x10040003

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_out_bottom:I

    .line 17
    const v0, 0x10040004

    sput v0, Lcom/miui/internal/R$anim;->action_bar_slide_out_top:I

    .line 18
    const/high16 v0, 0x10040000

    sput v0, Lcom/miui/internal/R$anim;->dialog_exit:I

    .line 19
    const v0, 0x1004000a

    sput v0, Lcom/miui/internal/R$anim;->dialog_scale_down:I

    .line 20
    const v0, 0x1004000d

    sput v0, Lcom/miui/internal/R$anim;->immersion_layout_fade_in:I

    .line 21
    const v0, 0x1004000e

    sput v0, Lcom/miui/internal/R$anim;->immersion_layout_fade_out:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
