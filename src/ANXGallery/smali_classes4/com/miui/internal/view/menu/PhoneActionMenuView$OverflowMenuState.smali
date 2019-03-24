.class final enum Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverflowMenuState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field public static final enum pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field public static final enum po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field public static final enum pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private static final synthetic pq:[Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const-string v1, "Collapsed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 43
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const-string v1, "Expanding"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 44
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const-string v1, "Expanded"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 45
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const-string v1, "Collapsing"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pl:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pn:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->po:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pp:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pq:[Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 1

    .line 41
    const-class v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method

.method public static values()[Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 1

    .line 41
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->pq:[Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-virtual {v0}, [Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object v0
.end method
