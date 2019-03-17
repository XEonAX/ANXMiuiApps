.class public final enum Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;
.super Ljava/lang/Enum;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

.field public static final enum CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

.field public static final enum DIRTY:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1667
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    const-string v1, "DIRTY"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    .line 1666
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->$VALUES:[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

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
    .line 1666
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1666
    const-class v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;
    .locals 1

    .prologue
    .line 1666
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->$VALUES:[Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    invoke-virtual {v0}, [Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    return-object v0
.end method
