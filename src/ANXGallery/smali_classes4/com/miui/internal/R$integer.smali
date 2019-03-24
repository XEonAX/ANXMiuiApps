.class public final Lcom/miui/internal/R$integer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static abc_max_action_buttons:I

.field public static action_bar_appear_duration:I

.field public static action_bar_disappear_duration:I

.field public static action_bar_tab_layout_weight:I

.field public static action_menu_item_anim_delay:I

.field public static action_menu_item_appear_duration:I

.field public static button_exit_fade_duration:I

.field public static window_translucent_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2444
    const/high16 v0, 0x10080000

    sput v0, Lcom/miui/internal/R$integer;->abc_max_action_buttons:I

    .line 2445
    const v0, 0x1008000a

    sput v0, Lcom/miui/internal/R$integer;->action_bar_appear_duration:I

    .line 2446
    const v0, 0x10080009

    sput v0, Lcom/miui/internal/R$integer;->action_bar_disappear_duration:I

    .line 2447
    const v0, 0x10080006

    sput v0, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    .line 2448
    const v0, 0x1008000c

    sput v0, Lcom/miui/internal/R$integer;->action_menu_item_anim_delay:I

    .line 2449
    const v0, 0x1008000b

    sput v0, Lcom/miui/internal/R$integer;->action_menu_item_appear_duration:I

    .line 2452
    const v0, 0x10080001

    sput v0, Lcom/miui/internal/R$integer;->button_exit_fade_duration:I

    .line 2455
    const v0, 0x10080008

    sput v0, Lcom/miui/internal/R$integer;->window_translucent_status:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
