.class public final enum Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
.super Ljava/lang/Enum;
.source "TextEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

.field public static final enum FONT:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

.field public static final enum KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

.field public static final enum STYLE:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    const-string v1, "KEYBOARD"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    .line 62
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    const-string v1, "STYLE"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->STYLE:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    .line 63
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    const-string v1, "FONT"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->FONT:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->STYLE:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->FONT:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->$VALUES:[Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    invoke-virtual {v0}, [Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    return-object v0
.end method


# virtual methods
.method public getSubMenu(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;Landroid/view/ViewGroup;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configChangeListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$6;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$text$editdialog$TextEditDialog$Tab:[I

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogKeyboardMenu;

    .end local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogKeyboardMenu;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;

    .end local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    invoke-direct {v0, p1, p3, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogStyleMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V

    .line 73
    .restart local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    goto :goto_0

    .line 75
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;

    .end local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    invoke-direct {v0, p1, p3, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogFontMenu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V

    .line 76
    .restart local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
