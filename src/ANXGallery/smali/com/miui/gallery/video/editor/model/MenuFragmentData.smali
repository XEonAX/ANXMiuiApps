.class public Lcom/miui/gallery/video/editor/model/MenuFragmentData;
.super Ljava/lang/Object;
.source "MenuFragmentData.java"


# instance fields
.field public final iconId:I

.field public final menu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/video/editor/ui/MenuFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final module:I

.field public final nameId:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;III)V
    .locals 1
    .param p2, "iconId"    # I
    .param p3, "nameId"    # I
    .param p4, "module"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/video/editor/ui/MenuFragment;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "menu":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/video/editor/ui/MenuFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->menu:Ljava/lang/Class;

    .line 18
    iput p2, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->iconId:I

    .line 19
    iput p3, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->nameId:I

    .line 20
    iput p4, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->module:I

    .line 21
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->tag:Ljava/lang/String;

    .line 22
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getMenu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/video/editor/ui/MenuFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->menu:Ljava/lang/Class;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isModuleMore()Z
    .locals 2

    .prologue
    .line 29
    const/16 v0, 0x16

    iget v1, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->module:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNavModule()Z
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x10

    iget v1, p0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->module:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
