.class public final enum Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;
.super Ljava/lang/Enum;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

.field public static final enum NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

.field public static final enum REVERSE:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1663
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    const-string v1, "REVERSE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    .line 1662
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->$VALUES:[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

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
    .line 1662
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1662
    const-class v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;
    .locals 1

    .prologue
    .line 1662
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->$VALUES:[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    invoke-virtual {v0}, [Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Mode;

    return-object v0
.end method
